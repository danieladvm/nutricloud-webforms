using System;
using System.Collections.Generic;
using System.Linq;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;

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
            List<alimento> a = ar.BuscarAlimento(nombrealimento);

            lblMsjSinResultados.Text = "";

            if (a.Count() > 0)
            {
                repalimentos.DataSource = a;
                repalimentos.DataBind();
             }
            else
            {
                lblMsjSinResultados.Text = "No se encontraron resultados";
            }

        }

    }
}