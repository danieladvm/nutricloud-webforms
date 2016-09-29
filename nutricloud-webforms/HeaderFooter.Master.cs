using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;

namespace nutricloud_webforms
{
    public partial class HeaderFooter : System.Web.UI.MasterPage
    {
        UsuarioCompleto UsuarioCompleto;
        ConversacionRepository cr = new ConversacionRepository();

        void Page_PreInit(object sender, EventArgs e)
        {
            UsuarioCompleto UsuarioCompleto = (UsuarioCompleto)Session["UsuarioCompleto"];

            if (Session["UsuarioCompleto"] == null)
            {
                //Response.Redirect("~/Default.aspx");
                this.Page.MasterPageFile = "~/Anon.Master";
            }
            else
            {
                LblNombre.Text = UsuarioCompleto.Usuario.nombre;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioCompleto = (UsuarioCompleto)Session["UsuarioCompleto"];
            CargaNotificacionesMensajes();
        }

        public void CargaNotificacionesMensajes()
        {
            int msjs;

            if (UsuarioCompleto == null)
            {
                msjs = 0;
            }
            else
            {
                msjs = cr.MensajesNoLeidos(UsuarioCompleto);

                if (msjs > 0)
                {
                    lblNotificaciones.Visible = true;
                    lblNotificaciones.Text = msjs.ToString();
                }
                else
                {
                    lblNotificaciones.Visible = false;
                }
            }

            this.getCantidadNotificaciones();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }


        protected void getCantidadNotificaciones()
        {
            NotificacionRepository notificacionRepository = new NotificacionRepository();
            var cantidad =  notificacionRepository.getCantidadNotificacionesNoLeidas(1);

            if (cantidad > 0)
            {
                cantidadNotificaciones.Visible = true;
                cantidadNotificaciones.Text = cantidad.ToString();
            }
            
        }

    }

}