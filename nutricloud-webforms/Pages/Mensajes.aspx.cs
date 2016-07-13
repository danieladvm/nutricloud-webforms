using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.Models;

namespace nutricloud_webforms.Pages
{
    public partial class Mensajes : System.Web.UI.Page
    {
        ConversacionRepository cr = new ConversacionRepository();
        UsuarioCompleto usuario;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.usuario = (UsuarioCompleto)Session["UsuarioCompleto"];

            if (!IsPostBack)
            {
                CargaConversaciones();
            }
        }

        private void CargaConversaciones()
        {
            rConversaciones.DataSource = cr.ListarConversaciones(this.usuario);
            rConversaciones.DataBind();
        }

        protected void btnenviar_Click(object sender, EventArgs e)
        {
            string asunto = TxtAsunto.Text;
            int id_conversacion = cr.Insertar(MapeaMensajeEnviado(), this.usuario);
            Actualiza(id_conversacion.ToString(), asunto);
        }

        protected void lnkConversacion_Click(object sender, EventArgs e)
        {
            LinkButton convSelec = sender as LinkButton;

            CargaMensajes(convSelec.CommandArgument, convSelec.CommandName);
        }

        private void CargaMensajes(string id_conversacion, string asunto)
        {
            Label label;
            TxtAsunto.Text = asunto;
            TxtAsunto.Enabled = false;

            foreach (var item in cr.ListarMensajes(int.Parse(id_conversacion), this.usuario))
            {
                label = new Label();
                label.Text = item.mensaje + "<br>";
                pnlMsjs.Controls.Add(label);
            }

            SetSessionIdConversacion(int.Parse(id_conversacion));
        }

        private Mensaje MapeaMensajeEnviado()
        {
            Mensaje msj = new Mensaje();
            msj.id_conversacion = GetSessionIdConversacion();
            msj.Asunto = TxtAsunto.Text;
            msj.Texto = TxtMensaje.Text;
            return msj;
        }

        private void Actualiza(string id_conversacion, string asunto)
        {
            CargaConversaciones();
            CargaMensajes(id_conversacion, asunto);
            TxtMensaje.Text = string.Empty;
        }

        private void LimpiaControles()
        {
            pnlMsjs.Controls.Clear();
            TxtAsunto.Text = string.Empty;
            TxtAsunto.Enabled = true;
            TxtMensaje.Text = string.Empty;
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            Session.Add("id_conversacion", null);
            LimpiaControles();
        }

        private int GetSessionIdConversacion()
        {
            return Session["id_conversacion"] != null ? int.Parse(Session["id_conversacion"].ToString()) : 0;
        }

        private void SetSessionIdConversacion(int id_conversacion)
        {
            if (Session["id_conversacion"] == null)
            {
                Session.Add("id_conversacion", id_conversacion);
            }
            else
            {
                Session["id_conversacion"] = id_conversacion;
            }
        }
    }
}