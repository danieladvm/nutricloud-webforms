using System.Collections.Generic;
using System.Linq;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.Repositories
{
    public class RecetaRepository
    {
        private nutricloudEntities c = new nutricloudEntities();

        public List<usuario_receta> Listar()
        {
            var list = (from ur in c.usuario_receta select ur).ToList();
            return list;
        }
    }
}