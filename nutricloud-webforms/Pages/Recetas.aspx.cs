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

            RepeaterRecetas.DataSource = list;
            RepeaterRecetas.DataBind();
        }

        public void Ver_Click(object sender, EventArgs e)
        {
            string x = "Llego!";
        }
    }
}