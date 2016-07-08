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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MapeaUsuarioForm();
        }

        #region Metodos propios
        private void CargaActividades()
        {
            ListItem li;
            UsuarioRepository ur = new UsuarioRepository();
            rblActividad.Items.Clear();
            foreach (DataBase.usuario_actividad item in ur.ListarActividades())
            {
                li = new ListItem();
                li.Text = item.usuario_actividad1;
                li.Value = item.id_usuario_actividad.ToString();
                rblActividad.Items.Add(li);
            }
        }

        private void MapeaUsuarioForm()
        {
            UsuarioCompleto u = (UsuarioCompleto)Session["UsuarioCompleto"];

            if (!string.IsNullOrEmpty(u.Usuario.nombre))
            {
                txtName.Text = u.Usuario.nombre;
            }

            if (!string.IsNullOrEmpty(u.Usuario.f_nacimiento.ToString()))
            {
                txtDate.Text = u.Usuario.f_nacimiento.ToString();
            }

            //if (!string.IsNullOrEmpty(u.))
            //{
            //    txtName.Text = u.nombre;
            //}
        }
        #endregion
    }
}