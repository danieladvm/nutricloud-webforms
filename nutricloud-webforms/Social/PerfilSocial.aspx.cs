using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.Models;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.Pages
{
    public partial class PerfilSocial : System.Web.UI.Page
    {
        MuroRepository mr = new Repositories.MuroRepository();
        UsuarioRepository ur = new UsuarioRepository();
        UsuarioCompleto usuario;
        usuario usuario_seguido;
        usuario_usuario uu;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.usuario = (UsuarioCompleto)Session["UsuarioCompleto"];
            uu = new usuario_usuario();
            uu.id_usuario_seguidor = usuario.Usuario.id_usuario;
            uu.id_usuario_seguido = int.Parse(Request.QueryString["id"]);

            usuario_seguido = ur.BuscarUsuario(uu.id_usuario_seguido);
            lblNombre.Text = usuario_seguido.nombre;

            CargaMuro();
            TextoBotonSeguir();
        }

        protected void btnSeguir_Click(object sender, EventArgs e)
        {
            mr.Seguir(uu);
            TextoBotonSeguir();
        }

        private void TextoBotonSeguir()
        {
            if (uu.id_usuario_seguido != uu.id_usuario_seguidor)
            {
                btnSeguir.Visible = true;

                if (mr.Siguiendo(uu))
                {
                    btnSeguir.Text = "Dejar de seguir";
                    btnSeguir.CssClass = "btn waves-effect white green-nutri-text";
                }
                else
                {
                    btnSeguir.Text = "Seguir";
                    btnSeguir.CssClass = "btn waves-effect green-nutri";
                }
            }
            else
            {
                btnSeguir.Visible = false;
            }
        }

        private void CargaMuro()
        {
            rMuro.DataSource = mr.ListarMuroUsuario(uu.id_usuario_seguido);
            rMuro.DataBind();
        }
    }
}