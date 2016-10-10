using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Text;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.Models;

namespace nutricloud_webforms
{
    public partial class Home : System.Web.UI.Page
    {
        AlimentoRepository ar = new AlimentoRepository();

        void Page_PreInit(object sender, EventArgs e)
        {
            UsuarioCompleto UsuarioCompleto = (UsuarioCompleto)Session["UsuarioCompleto"];

            if (UsuarioCompleto == null)
            Response.Redirect("../Default.aspx");
            else
            {
                if (UsuarioCompleto.Usuario.id_usuario_tipo == 1)
                this.Page.MasterPageFile = "~/HeaderFooter.Master";
                else if (UsuarioCompleto.Usuario.id_usuario_tipo == 2)
                Response.Redirect("blog.aspx");
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetAlimentos(string fecha)
        {
            UsuarioCompleto usuario = (UsuarioCompleto)HttpContext.Current.Session["UsuarioCompleto"];
            int idUsuario = usuario.Usuario.id_usuario;

            AlimentoRepository ar = new AlimentoRepository();
            StringBuilder sb = new StringBuilder();
            DateTime f;

            if (usuario != null)
            {
               int idUsuario = usuario.Usuario.id_usuario;

               try
               {
                f = DateTime.Parse(fecha);
            }
            catch (Exception)
            {
                f = DateTime.Now;
            }

            foreach (var tipoComida in ar.ListarTipoComida())
            {
                sb.Append("<div class='row'>");
                sb.Append("<div class='col s12 m12'>");
                sb.Append("<div class='card'>");
                sb.Append("<div class='card-content orange-text text-darken-3'>");
                sb.Append("<img src='../Content/img/" + tipoComida.imagen + "' class='responsive-img icon-food' />");
                sb.Append("<h4>" + tipoComida.comida_tipo1 + "</h4>");

                foreach (var comida in ar.ListarDiario(idUsuario, tipoComida.id_comida_tipo, f))
                {
                    sb.Append("<div class='row item-alimento'>");
                    sb.Append("<div class='col s8'>");
                    sb.Append("<a class='alimento' href = 'Alimento.aspx?Idalimento=" + comida.id_alimento + "'>" + comida.alimento + "</a>");
                    sb.Append("</div>");
                    sb.Append("<div class='col s4'>");
                    sb.Append("<span class='calorias'>" + comida.energia_kcal + "kcal</span>");
                    sb.Append("</div>");
                    sb.Append("<div class='col s12'>");
                    sb.Append("<span class='cantidad'>" + comida.cantidad + comida.unidad_medida + "</span>");
                    sb.Append("</div>");
                    sb.Append("</div>");
                }

                sb.Append("</div>");
                sb.Append("<div class='card-action action-home'>");
                sb.Append("<a href='#'>Total Calorías</a>");
                sb.Append("<a href='#' class='total_cal'>11111</a>");
                sb.Append("</div>");
                sb.Append("</div>");
                sb.Append("</div>");
                sb.Append("</div>");
                //sb.Append("");                          
            }

            return sb.ToString();
            }else return "0";
        }
    }
}
