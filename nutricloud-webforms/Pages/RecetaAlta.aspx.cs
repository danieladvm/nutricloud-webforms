using System;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;
using nutricloud_webforms.Repositories;
using System.IO;

namespace nutricloud_webforms.pages
{
    public partial class Entrada : System.Web.UI.Page
    {

        private RecetaRepository recetaRepository = new RecetaRepository();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubirEntrada(object sender, EventArgs e)
        {
            UsuarioCompleto usuario = (UsuarioCompleto)Session["UsuarioCompleto"];

            try
            {
                /* Guardar imagen */

                string newFileName = null;

                if (imagenReceta.HasFile)
                {
                    // Genero con la fecha actual un nombre de archivo que sea irrepetible
                    string dateTimeNow = SeguridadRepository.Encriptar(DateTime.Now.ToString());
                    string fileExtension = Path.GetExtension(imagenReceta.PostedFile.FileName);
                    newFileName = usuario.Usuario.id_usuario + "-" + dateTimeNow + fileExtension;
                    string serverPath = Server.MapPath("~/Content/img/recetas/");
                    string path = Path.Combine(serverPath, newFileName);
                    imagenReceta.SaveAs(path);
                }

                usuario_receta receta = new usuario_receta();
                receta.receta = entrada.Text;
                receta.titulo_receta = titulo_receta.Text;
                receta.descripcion_receta = descripcion_receta.Text;
                receta.id_usuario = usuario.Usuario.id_usuario;
                receta.imagen_receta = newFileName;
                //receta.usuario = usuario.Usuario;

                recetaRepository.addReceta(receta);

                //TODO mostar mensaje de exito y redirigir hacia atras
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                //TODO mostrar mensaje de error
            }

        }
    }
}