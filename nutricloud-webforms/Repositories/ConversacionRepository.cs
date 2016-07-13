using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;

namespace nutricloud_webforms.Repositories
{
    public class ConversacionRepository
    {
        nutricloudEntities c = new nutricloudEntities();

        public int Insertar(Mensaje mensaje, UsuarioCompleto usuario)
        {
            int id_conversacion = mensaje.id_conversacion;

            if (id_conversacion == 0)
            {
                //Nuevo
                consulta_conversacion cc = new consulta_conversacion();
                cc.asunto = mensaje.Asunto;
                cc.id_usuario_remitente = usuario.Usuario.id_usuario;
                cc.cerrada = false;
                c.consulta_conversacion.Add(cc);
                c.SaveChanges();
                id_conversacion = cc.id_consulta_conversacion;
            }

            consulta_mensaje cm = new consulta_mensaje();
            cm.mensaje = mensaje.Texto;
            cm.f_mensaje = DateTime.Now;
            cm.id_consulta_conversacion = id_conversacion;
            cm.id_usuario_remitente = usuario.Usuario.id_usuario;
            c.consulta_mensaje.Add(cm);
            c.SaveChanges();

            return id_conversacion;
        }

        public List<consulta_conversacion> ListarConversaciones(UsuarioCompleto usuario)
        {
            if (usuario.Usuario.id_usuario_tipo == 1) //Paciente
            {
                return (from co in c.consulta_conversacion where co.id_usuario_remitente == usuario.Usuario.id_usuario select co).ToList();
            }
            if (usuario.Usuario.id_usuario_tipo == 2) //Profesional
            {
                return (from co in c.consulta_conversacion where co.id_usuario_destinatario == null select co).ToList();
            }
            else
            {
                return null;
            }
        }

        public List<consulta_mensaje> ListarMensajes(int id_consulta_conversacion, UsuarioCompleto usuario)
        {
            if (usuario.Usuario.id_usuario_tipo == 1) //Paciente
            {
                return (from cm in c.consulta_mensaje where cm.id_consulta_conversacion == id_consulta_conversacion select cm).ToList();
            }
            //if (usuario.Usuario.id_usuario_tipo == 2) //Profesional
            //{
            //    return (from co in c.consulta_conversacion where co.id_usuario_destinatario == null select co).ToList();
            //}
            else
            {
                return null;
            }
        }
    }
}
