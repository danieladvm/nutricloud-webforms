using nutricloud_webforms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutricloud_webforms
{
    public partial class LogIn : System.Web.UI.UserControl
    {
        public Models.nutricloudEntities ctx = new Models.nutricloudEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresar_Click(object sender, EventArgs e)
        {

        }

        #region Metodos propios
        public usuario MapeaFormUsuario()
        {
            usuario u = new usuario();
            u.email = TxtEmail.Text;
            u.clave = TxtPass.Text;
            return u;
        }
        #endregion

        protected void Button_Aceptar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Repositories.UsuariotRepository ur = new Repositories.UsuariotRepository();
                usuario u = ur.Listar(MapeaFormUsuario());

                if (u != null)
                {
                    Session.Add("UsuarioLogueado", u);
                    Response.Redirect("pages/Home.aspx");

                    usuario us = (usuario)Session["UsuarioLogueado"];

                }

                else
                {
                    LblError.Text = "Email/Contraseña Incorrectos";
                }

            }
        }
    }
}