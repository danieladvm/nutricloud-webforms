﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.Models;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.User_Control
{
    public partial class Mensajes : System.Web.UI.UserControl
    {
        ConversacionRepository cr = new ConversacionRepository();
        ValidRepository vr = new ValidRepository();
        UsuarioCompleto usuario;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.usuario = (UsuarioCompleto)Session["UsuarioCompleto"];

            if (usuario.Usuario.id_usuario_tipo == 1)
            {
                btnNuevo.Visible = true;
            }
            if (usuario.Usuario.id_usuario_tipo == 2)
            {
                btnNuevo.Visible = false;
            }

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
            if (vr.ValidaVacio(TxtAsunto.Text) && vr.ValidaVacio(TxtMensaje.Text))
            {
                int id_conversacion = cr.Insertar(MapeaMensajeEnviado(), this.usuario);
                Actualiza(id_conversacion);
            }
        }

        protected void lnkConversacion_Click(object sender, EventArgs e)
        {
            LinkButton convSelec = sender as LinkButton;

            CargaMensajes(int.Parse(convSelec.CommandArgument));
        }

        private void CargaMensajes(int id_conversacion)
        {
            consulta_conversacion cc = cr.GetConversacion(id_conversacion);

            Panel pnlMensaje;
            Label lblMensaje;
            Label lblFecha;

            TxtAsunto.Text = cc.asunto;
            TxtAsunto.Enabled = false;

            foreach (var item in cr.ListarMensajes(id_conversacion, this.usuario))
            {
                pnlMensaje = new Panel();
                pnlMensaje.CssClass = "msj";

                if (this.usuario.Usuario.id_usuario == item.id_usuario_remitente)
                {
                    pnlMensaje.CssClass += " msj-enviado";
                }
                else
                {
                    pnlMensaje.CssClass += " msj-recibido";
                }

                lblMensaje = new Label();
                lblMensaje.Text = item.mensaje;

                lblFecha = new Label();
                lblFecha.Text = item.f_mensaje.ToString();
                lblFecha.CssClass = "msj-fecha";

                pnlMensaje.Controls.Add(lblMensaje);
                pnlMensaje.Controls.Add(lblFecha);

                pnlMsjs.Controls.Add(pnlMensaje);
            }

            if (cc.cerrada)
            {
                lblCerrada.Visible = true;
                btnCerrar.Visible = false;
                pnlNuevoMsj.Visible = false;
            }
            else
            {
                if (this.usuario.Usuario.id_usuario == cc.id_usuario_destinatario ||
                    this.usuario.Usuario.id_usuario == cc.id_usuario_remitente)
                {
                    lblCerrada.Visible = false;
                    btnCerrar.Visible = true;
                    pnlNuevoMsj.Visible = true;
                }
                else
                {
                    lblCerrada.Visible = false;
                    btnCerrar.Visible = false;
                    pnlNuevoMsj.Visible = true;
                }
            }

            SetSessionIdConversacion(id_conversacion);
        }

        private Mensaje MapeaMensajeEnviado()
        {
            Mensaje msj = new Mensaje();
            msj.id_conversacion = GetSessionIdConversacion();
            msj.Asunto = TxtAsunto.Text;
            msj.Texto = TxtMensaje.Text;
            msj.id_remitente = usuario.Usuario.id_usuario;
            return msj;
        }

        private void Actualiza(int id_conversacion)
        {
            CargaConversaciones();
            CargaMensajes(id_conversacion);
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

        protected void btnCerrar_Click1(object sender, EventArgs e)
        {
            int id_conversacion = (int)Session["id_conversacion"];
            cr.CerrarConversacion(id_conversacion);
            Actualiza(id_conversacion);
        }
    }
}