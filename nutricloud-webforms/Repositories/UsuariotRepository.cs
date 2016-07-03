using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nutricloud_webforms.Repositories
{
    class UsuariotRepository
    {
        Models.nutricloudEntities c = new Models.nutricloudEntities();

        public void Insertar(Models.usuario u)
        {
            c.usuario.Add(u);
            c.SaveChanges();
        }

        public Models.usuario Listar(Models.usuario usuario)
        {
            Models.usuario u = (from us in c.usuario
                                where us.email == usuario.email && us.clave == usuario.clave
                                select us).FirstOrDefault();
            return u;
        }
    }
}
