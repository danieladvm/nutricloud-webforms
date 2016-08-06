using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.pages
{
    public partial class Receta : System.Web.UI.Page
    {
        private RecetaRepository recetaRepository = new RecetaRepository();
        private usuario_receta receta;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["idReceta"]);
            this.receta = recetaRepository.getReceta(id);
            receta_titulo.InnerHtml = this.receta.titulo_receta;
            receta_texto.InnerHtml = this.receta.receta;

            if (this.receta.imagen_receta != null)
            {
                imgReceta.ImageUrl = "../../content/img/recetas/" + this.receta.imagen_receta;
            }
        }

        public void EditarReceta(object sender, EventArgs e)
        {
            Response.Redirect("RecetaEditar.aspx?idReceta=" + this.receta.id_usuario_receta);
        }

        public void EliminarReceta(object sender, EventArgs e)
        {

            try
            {
                recetaRepository.deleteReceta(this.receta);
                // Elimino la imagen de la receta
                string serverPath = Server.MapPath("~/Content/img/recetas/");
                File.Delete(serverPath + this.receta.imagen_receta);

                //TODO mostrar msj de exito y redirigir
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                //TODO mostrar msj de error y redirigir
            }

        }
    }
}