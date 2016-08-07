using System;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;
using System.IO;

namespace nutricloud_webforms.Pages
{
    public partial class RecetaEditar : System.Web.UI.Page
    {
        private RecetaRepository recetaRepository = new RecetaRepository();
        private usuario_receta receta;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["idReceta"]);
                this.receta = recetaRepository.getReceta(id);
                titulo_receta.Text = this.receta.titulo_receta;
                descripcion_receta.Text = this.receta.descripcion_receta;
                receta_texto.Text = this.receta.receta;
            }

        }

        protected void EditarReceta(object sender, EventArgs e)
        {
            try
            {
                usuario_receta receta = new usuario_receta();
                receta = recetaRepository.getReceta(this.receta.id_usuario_receta);
                UsuarioCompleto usuario = (UsuarioCompleto)Session["UsuarioCompleto"];

                string newFileName = null;

                if (imagenReceta.HasFile)
                {
                    string dateTimeNow = SeguridadRepository.Encriptar(DateTime.Now.ToString());
                    string fileExtension = Path.GetExtension(imagenReceta.PostedFile.FileName);
                    newFileName = usuario.Usuario.id_usuario + "-" + dateTimeNow + fileExtension;
                    string serverPath = Server.MapPath("~/Content/img/recetas/");
                    string path = Path.Combine(serverPath, newFileName);
                    imagenReceta.SaveAs(path);
                    receta.imagen_receta = newFileName;
                }

                receta.receta = receta_texto.Text;
                receta.titulo_receta = titulo_receta.Text;
                receta.descripcion_receta = descripcion_receta.Text;
                recetaRepository.updateReceta(receta);
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                //TODO mostrar mensaje de error
            }

        }
    }
}