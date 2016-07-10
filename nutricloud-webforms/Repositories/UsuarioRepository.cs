using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.Repositories
{
    class UsuarioRepository
    {
        nutricloudEntities c = new nutricloudEntities();

        #region Interaccion con la base
        public void Insertar(usuario u)
        {
            c.usuario.Add(PreparaUsuarioNuevo(u));
            c.SaveChanges();
        }

        public void ActualizarUsuario(usuario u)
        {
            var usuario = c.usuario.Find(u.id_usuario);
            usuario.clave = u.clave;
            usuario.nombre = u.nombre;
            usuario.sexo = u.sexo;
            usuario.f_nacimiento = u.f_nacimiento;

            c.Entry(usuario);
            c.SaveChanges();
        }

        public void InsertarDatosUsuario(usuario_datos ud)
        {
            c.usuario_datos.Add(ud);
            c.SaveChanges();
        }

        public usuario BuscarUsuarioLogIn(usuario usuario)
        {
            string claveEncriptada = SeguridadRepository.Encriptar(usuario.clave);

            usuario u = (from us in c.usuario
                         where us.email == usuario.email && us.clave == claveEncriptada
                         select us).FirstOrDefault();

            if (u != null)
            {
                c.Entry(PraparaUsuarioUpdate(u));
                c.SaveChanges();
            }

            return u;
        }

        public List<usuario_tipo> ListarTipoUsuario()
        {
            List<usuario_tipo> tu = (from u in c.usuario_tipo select u).ToList();
            return tu;
        }

        public List<usuario_actividad> ListarActividades()
        {
            return (from u in c.usuario_actividad select u).ToList();
        }

        public usuario_datos Buscar(int idUsuario)
        {
            return (from ud in c.usuario_datos
                    where ud.id_usuario == idUsuario
                    orderby ud.f_ingreso descending
                    select ud).FirstOrDefault();
        }

        public List<usuario_objetivo> ListarObjetivos()
        {
            return (from ob in c.usuario_objetivo select ob).ToList();
        }

        #endregion

        #region Metodos
        private usuario PreparaUsuarioNuevo(usuario u)
        {
            string claveEncriptada = SeguridadRepository.Encriptar(u.clave);
            u.clave = claveEncriptada;
            u.f_registro = DateTime.Now;

            return u;
        }

        private usuario PraparaUsuarioUpdate(usuario u)
        {
            u.f_ultimo_ingreso = DateTime.Now;
            return u;
        }
        #endregion
    }
}
