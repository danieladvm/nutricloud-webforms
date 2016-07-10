using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;
using System.Data.Entity;

namespace nutricloud_webforms
{
    public partial class Perfil : System.Web.UI.Page
    {
        private nutricloudEntities db = new nutricloudEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioCompleto usuario = (UsuarioCompleto)Session["UsuarioCompleto"];

            if (!IsPostBack)
            {
                TxtNombre.Text = usuario.Usuario.nombre;
                TxtEmail.Text = usuario.Usuario.email;
                LblUltimoIngreso.Text = usuario.Usuario.f_registro.ToString();
                TxtPesoActual.Text = usuario.UsuarioDatos.peso_kg.ToString();
            }
        }

        protected void Button_ActualizarDatos_Click(object sender, EventArgs e)
        {
            UsuarioCompleto userSession = (UsuarioCompleto)Session["UsuarioCompleto"];

            var user = db.usuario.Find(userSession.Usuario.id_usuario);
            user.nombre = TxtNombre.Text;
            user.email = TxtEmail.Text;

            var userData = db.usuario_datos.Find(userSession.UsuarioDatos.id_usuario_datos);
            userData.peso_kg = decimal.Parse(TxtPesoActual.Text);

            // Actualizo los datos de la base
            db.Entry(user);
            db.Entry(userData);
            db.SaveChanges();

            // Actualizo los datos de la session
            userSession.Usuario = user;
            userSession.UsuarioDatos = userData;
        }
    }
}