using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.Repositories
{
    class MuroRepository
    {
        private nutricloudEntities c = new nutricloudEntities();

        public List<v_usuario_muro> ListarAlimento(int id_usuario)
        {
            return (from vum in c.v_usuario_muro
                    where vum.id_usuario_seguidor == id_usuario ||
                    vum.id_usuario_seguido == id_usuario
                    orderby vum.f_publicacion descending
                    select vum).ToList();
        }

        public void InsertarEstado(usuario_muro um)
        {
            c.usuario_muro.Add(um);
            c.SaveChanges();
        }
    }
}
