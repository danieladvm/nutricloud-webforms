using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.Pages
{
    public partial class Recetas : System.Web.UI.Page
    {
        private RecetaRepository repository = new RecetaRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<usuario_receta> list = repository.Listar();

            foreach (var r in list)
            {
                if (r.imagen_receta != null && r.imagen_receta != "")
                {
                    r.imagen_receta = "../../content/img/recetas/" + r.imagen_receta;
                }
                else
                {
                    r.imagen_receta = null;
                }

                if (r.receta.Length > 100)
                {
                    r.receta = r.receta.Substring(0, 100) + "...";
                }
            }

            if (list.Count() > 0)
            {
                RepeaterRecetas.DataSource = list;
                RepeaterRecetas.DataBind();
            }
            else
            {
                msjNoHayRecetas.Text = "No hay recetas todavía";
            }

        }

        public void VerReceta(object sender, EventArgs e)
        {
            LinkButton link = (LinkButton)sender;
            String idReceta = link.CommandArgument;
            Response.Redirect("Receta.aspx?idReceta=" + idReceta);
        }
    }
}