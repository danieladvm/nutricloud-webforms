using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;

namespace nutricloud_webforms
{
    public partial class SignIn : System.Web.UI.UserControl
    {
        #region Eventos
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaTiposUsuario();
            }

        }

        protected void registrarse_Click(object sender, EventArgs e)
        {
            if (ValidaForm())
            {
                UsuariotRepository ur = new UsuariotRepository();
                //Ir a agregar usuario :D
                ur.Insertar(MapeaFormUsuario());

                //PAGINA DESPUES DE REGISTRARSE (?
            }
        }
        #endregion

        #region Metodos propios
        private void CargaTiposUsuario()
        {
            ListItem li;
            UsuariotRepository ur = new UsuariotRepository();
            rblTipoUsuario.Items.Clear();
            foreach (DataBase.usuario_tipo item in ur.ListarTipoUsuario())
            {
                li = new ListItem();
                li.Text = item.usuario_tipo1;
                li.Value = item.id_usuario_tipo.ToString();
                rblTipoUsuario.Items.Add(li);
            }
        }

        private bool ValidaForm()
        {
            bool errores = false;
            Label lblError;
            ValidRepository vr = new ValidRepository();

            //Valida vacios
            if (!vr.ValidaVacio(email.Text))
            {
                lblError = new Label();
                lblError.Text = "* El email no puede estar vacio <br/>"; //No me peguen por esto
                pnlErrores.Controls.Add(lblError);
                errores = true;
            }
            else
            {
                if (!vr.ValidaMail(email.Text))
                {
                    lblError = new Label();
                    lblError.Text = "* Email Inválido";
                    pnlErrores.Controls.Add(lblError);
                    errores = true;
                }
            }

            if (!vr.ValidaVacio(password.Text))
            {
                lblError = new Label();
                lblError.Text = "* La contraseña no puede estar vacia <br/>"; //No me peguen por esto
                pnlErrores.Controls.Add(lblError);
                errores = true;
            }

            //Valida longitud de password, que tenga entre 4 y 12 caracteres, por ejemplo
            if (!vr.ValidaRangoLen(password.Text, 4, 12))
            {
                lblError = new Label();
                lblError.Text = "* La contraseña debe tener entre 4 y 12 caracteres <br/>"; //No me peguen por esto
                pnlErrores.Controls.Add(lblError);
                errores = true;
            }

            //Valida iguales
            if (!vr.ValidaIguales(password.Text, password2.Text))
            {
                lblError = new Label();
                lblError.Text = "* Las contraseñas tienen que coincidir <br/>"; //No me peguen por esto
                pnlErrores.Controls.Add(lblError);
                errores = true;
            }

            if (rblTipoUsuario.SelectedValue == string.Empty)
            {
                lblError = new Label();
                lblError.Text = "* Debe seleccionar un tipo de usuario <br/>"; //No me peguen por esto
                pnlErrores.Controls.Add(lblError);
                errores = true;
            }

            return !errores;
        }

        private DataBase.usuario MapeaFormUsuario()
        {
            DataBase.usuario u = new DataBase.usuario();
            u.email = email.Text;
            u.clave = password.Text;
            u.id_usuario_tipo = int.Parse(rblTipoUsuario.SelectedValue);

            return u;
        }
        #endregion
    }
}