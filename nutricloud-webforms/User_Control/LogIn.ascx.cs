using nutricloud_webforms.DataBase;
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
        #region Eventos
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Aceptar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Repositories.UsuarioRepository ur = new Repositories.UsuarioRepository();
                usuario u = ur.BuscarUsuarioLogIn(MapeaFormUsuario());

                if (u != null)
                {
                    Session.Add("usuario", u);
                    Response.Redirect("Pages/Home.aspx");
                }

                else
                {
                    LblError.Text = "Email/Contraseña Incorrectos";
                }

            }
        }
        #endregion

        #region Metodos propios
        public usuario MapeaFormUsuario()
        {
            usuario u = new usuario();
            u.email = TxtEmail.Text;
            u.clave = TxtPass.Text;
            return u;
        }
        #endregion
    }
}