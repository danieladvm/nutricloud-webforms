using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;
namespace nutricloud_webforms
{
    public partial class Perfil : System.Web.UI.Page
    {
        private nutricloudEntities context = new nutricloudEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioRepository repository = new UsuarioRepository();
            UsuarioDatosRepository usuarioDatosRepository = new UsuarioDatosRepository();

            usuario usuario = (usuario)Session["UsuarioLogueado"];
            TxtNombre.Text = usuario.nombre;
            TxtEmail.Text = usuario.email;
            // como convierto datetime a string
            // TxtUltimoIngreso = usuario.f_ultimo_ingreso;

            usuario_datos datos = usuarioDatosRepository.Buscar(usuario.id_usuario);

            TxtPesoActual.Text = datos.peso_kg.ToString();

        }
    }
}