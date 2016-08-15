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
    public partial class Nota : System.Web.UI.Page
    {
        private BlogRepository repository = new BlogRepository();
        private blog_nota nota;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            this.nota = repository.get(id);
            nota_titulo.InnerHtml = this.nota.titulo_nota;
            texto.InnerHtml = this.nota.nota;
            descripcion.InnerHtml = this.nota.descripcion_nota;

            if (this.nota.imagen_nota != null && this.nota.imagen_nota != "")
            {
                imagen.ImageUrl = "../../content/img/notas/" + this.nota.imagen_nota;
            }
        }

        public void Editar(object sender, EventArgs e)
        {
            Response.Redirect("NotaEditar.aspx?id=" + this.nota.id_blog_nota);
        }

        public void Eliminar(object sender, EventArgs e)
        {

            try
            {
                repository.delete(this.nota);
                // Elimino la imagen de la nota
                string serverPath = Server.MapPath("~/Content/img/notas/");
                File.Delete(serverPath + this.nota.imagen_nota);

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