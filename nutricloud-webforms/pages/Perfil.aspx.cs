using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;

namespace nutricloud_webforms
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioRepository ur = new UsuarioRepository();
            UsuarioCompleto usuario = (UsuarioCompleto)Session["UsuarioCompleto"];
            
            //TxtNombre.Text = usuario.
            //TxtEmail.Text = usuario.;
            // como convierto datetime a string
            //TxtUltimoIngreso.Text = usuario.f_ultimo_ingreso.ToString();

            //usuario_datos datos = ur.Buscar(usuario.Id_usuario);

            //TxtPesoActual.Text = datos.peso_kg.ToString();

        }
    }
}