using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.Models;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms
{
    public partial class Muro : System.Web.UI.Page
    {
        MuroRepository mr = new MuroRepository();
        UsuarioCompleto usuario;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.usuario = (UsuarioCompleto)Session["UsuarioCompleto"];

            if (!IsPostBack)
            {
                CargaMuro();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            usuario_muro um = new usuario_muro();
            um.id_usuario = this.usuario.Usuario.id_usuario;
            um.estado = TxtEstado.Text;
            um.f_publicacion = DateTime.Now;

            mr.InsertarEstado(um);

            TxtEstado.Text = string.Empty;

            CargaMuro();
        }

        private void CargaMuro()
        {
            rMuro.DataSource = mr.ListarAlimento(usuario.Usuario.id_usuario);
            rMuro.DataBind();
        }
    }
}