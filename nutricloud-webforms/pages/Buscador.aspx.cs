using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.Models;

namespace nutricloud_webforms
{
    public partial class Buscador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            string nombrealimento = TxtBuscar.Text;

            AlimentoRepository ar = new AlimentoRepository();
            List<DataBase.alimento> a = ar.BuscarAlimento(nombrealimento);

            if (a != null)
            {
                if (!IsPostBack)
                {
                    repalimentos.DataSource = a;
                    repalimentos.DataBind();

                }

            }

        }

    }
}