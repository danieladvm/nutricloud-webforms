using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nutricloud_webforms.Repositories
{
    class UsuariotRepository
    {
        DataBase.nutricloudEntities c = new DataBase.nutricloudEntities();

        public void Insertar(DataBase.usuario u)
        {
            c.usuario.Add(u);
            c.SaveChanges();
        }

        public DataBase.usuario Listar(DataBase.usuario usuario)
        {
            DataBase.usuario u = (from us in c.usuario
                                where us.email == usuario.email && us.clave == usuario.clave
                                select us).FirstOrDefault();
            return u;
        }

        public List<DataBase.usuario_tipo> ListarTipoUsuario()
        {
            List<DataBase.usuario_tipo> tu = (from u in c.usuario_tipo select u).ToList();
            return tu;
        }
    }
}
