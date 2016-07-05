using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutricloud_webforms
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MapeaUsuarioForm();
        }

        #region Metodos propios
        private void MapeaUsuarioForm()
        {
            DataBase.usuario u = (DataBase.usuario)Session["usuario"];

            if (!string.IsNullOrEmpty(u.nombre))
            {
                txtName.Text = u.nombre;
            }

            if (!string.IsNullOrEmpty(u.f_nacimiento.ToString()))
            {
                txtDate.Text = u.f_nacimiento.ToString();
            }

            //if (!string.IsNullOrEmpty(u.))
            //{
            //    txtName.Text = u.nombre;
            //}
        }
        #endregion
    }
}