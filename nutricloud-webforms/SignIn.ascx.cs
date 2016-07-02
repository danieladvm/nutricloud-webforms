using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutricloud_webforms
{
    public partial class SignIn : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rblTipoUsuario.Items.Clear();
            rblTipoUsuario.Items.Add(new ListItem("Paciente"));
            rblTipoUsuario.Items.Add(new ListItem("Profesional"));
        }

        protected void registrarse_Click(object sender, EventArgs e)
        {

        }
    }
}