using nutricloud_webforms.DataBase;
using nutricloud_webforms.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutricloud_webforms.Pages
{
    public partial class Blog : System.Web.UI.Page
    {
        private Repositories.BlogRepository repository = new BlogRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<blog_nota> list = repository.Listar();

            foreach (var r in list)
            {
                if (r.imagen_nota != null && r.imagen_nota != "")
                {
                    r.imagen_nota = "../../content/img/notas/" + r.imagen_nota;
                }
                else
                {
                    r.imagen_nota = null;
                }

                if (r.descripcion_nota.Length > 100)
                {
                    r.descripcion_nota = r.descripcion_nota.Substring(0, 100) + "...";
                }
            }

            if (list.Count() > 0)
            {
                RepeaterNotas.DataSource = list;
                RepeaterNotas.DataBind();
            }
            else
            {
                msjNoHayNotas.Text = "No hay notas todavía";
            }

        }

        public void Ver(object sender, EventArgs e)
        {
            LinkButton link = (LinkButton)sender;
            String id = link.CommandArgument;
            Response.Redirect("Nota.aspx?id=" + id);
        }
    }
}