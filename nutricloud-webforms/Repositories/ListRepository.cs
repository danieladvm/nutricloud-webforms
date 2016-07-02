using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using nutricloud_webforms.Models;

namespace nutricloud_webforms.Repositories
{
    public class ListRepository
    {
        public List<Models.usuario_tipo> ListaTipoUsuario()
        {
            Models.nutricloudEntities c = new Models.nutricloudEntities();
            List<Models.usuario_tipo> tu = (from u in c.usuario_tipo select u).ToList();
            return tu;
        }
    }
}
