using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.Repositories
{
    public class UsuarioDatosRepository
    {
        private nutricloudEntities c = new nutricloudEntities();

        public usuario_datos Buscar(int idUsuario)
        {
            usuario_datos u = (from ud in c.usuario_datos where ud.id_usuario == idUsuario select ud).FirstOrDefault();

            return u;
        }

    }
}