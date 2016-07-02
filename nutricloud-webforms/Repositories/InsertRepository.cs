using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nutricloud_webforms.Repositories
{
    class InsertRepository
    {
        public void InsertaUsuario(Models.usuario u)
        {
            Models.nutricloudEntities c = new Models.nutricloudEntities();
            c.usuario.Add(u);
            c.SaveChanges();
        }
    }
}
