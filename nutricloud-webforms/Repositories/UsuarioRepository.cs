using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nutricloud_webforms.Repositories
{
    class UsuarioRepository
    {
        DataBase.nutricloudEntities c = new DataBase.nutricloudEntities();

        #region Interaccion con la base
        public void Insertar(DataBase.usuario u)
        {
            c.usuario.Add(PreparaUsuarioNuevo(u));
            c.SaveChanges();
        }

        public DataBase.usuario BuscarUsuarioLogIn(DataBase.usuario usuario)
        {
            string claveEncriptada = SeguridadRepository.Encriptar(usuario.clave);

            DataBase.usuario u = (from us in c.usuario
                                  where us.email == usuario.email && us.clave == claveEncriptada
                                  select us).FirstOrDefault();
            if (u != null)
            {
                c.Entry(PraparaUsuarioUpdate(u));
                c.SaveChanges();
            }

            return u;
        }

        public List<DataBase.usuario_tipo> ListarTipoUsuario()
        {
            List<DataBase.usuario_tipo> tu = (from u in c.usuario_tipo select u).ToList();
            return tu;
        }
        #endregion

        #region Metodos
        private DataBase.usuario PreparaUsuarioNuevo(DataBase.usuario u)
        {
            string claveEncriptada = SeguridadRepository.Encriptar(u.clave);
            u.clave = claveEncriptada;
            u.f_registro = DateTime.Now;

            return u;
        }

        private DataBase.usuario PraparaUsuarioUpdate(DataBase.usuario u)
        {
            u.f_ultimo_ingreso = DateTime.Now;
            return u;
        }
        #endregion
    }
}
