using nutricloud_webforms.DataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.Models;

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
            pnlErrores.Controls.Clear();

            if (ValidaForm())
            {
                UsuarioRepository ur = new UsuarioRepository();
                usuario u = ur.BuscarUsuarioLogIn(MapeaFormUsuario());
                usuario_datos ud = new usuario_datos();

                if (u != null)
                {
                    ud = ur.Buscar(u.id_usuario);
                    Sesion(u, ud);

                    if (ud == null)
                    {
                        Response.Redirect("Pages/Registro.aspx");
                    }
                    else
                    {
                        Response.Redirect("Pages/Home.aspx");
                    }
                }

                else
                {
                    Label lblError = new Label();
                    lblError.Text = "* Email/Contraseña Incorrectos";
                    lblError.CssClass = "text-error";
                    pnlErrores.Controls.Add(lblError);
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

        private bool ValidaForm()
        {
            bool errores = false;
            Label lblError;
            ValidRepository vr = new ValidRepository();
            pnlErrores.Controls.Clear();

            //Valida vacios
            if (!vr.ValidaVacio(TxtEmail.Text))
            {
                lblError = new Label();
                lblError.Text = "* El email no puede estar vacio";
                lblError.CssClass = "text-error";
                pnlErrores.Controls.Add(lblError);
                errores = true;
            }

            if (!vr.ValidaVacio(TxtPass.Text))
            {
                lblError = new Label();
                lblError.Text = "* La contraseña no puede estar vacia";
                lblError.CssClass = "text-error";
                pnlErrores.Controls.Add(lblError);
                errores = true;
            }

            return !errores;
        }

        private void Sesion(usuario u, usuario_datos ud)
        {
            UsuarioCompleto uc = new UsuarioCompleto();
            uc.Usuario = u;
            uc.UsuarioDatos = ud;

            Session.Add("UsuarioCompleto", uc);
        }
        #endregion
    }
}