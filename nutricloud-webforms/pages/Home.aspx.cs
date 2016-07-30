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
                    sb.Append("<span class='alimento'>" + comida.alimento + "</span>");
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
                sb.Append("<a href='#'>Editar</a>");
                sb.Append("<a href='#'>Eliminar</a>");
                sb.Append("</div>");
                sb.Append("</div>");
                sb.Append("</div>");
                sb.Append("</div>");
                //sb.Append("");                          
            }

            ////optional: you can create your own custom converter
            //TheSerializer.RegisterConverters(new JavaScriptConverter[] { new MyCustomJson() });

            //var products = context.GetProducts().ToList();

            //var TheJson = TheSerializer.Serialize(products);

            /* <%--<asp:Repeater ID="rComidas" runat="server">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col s12 m12">
                                    <div class="card">
                                        <div class="card-content orange-text text-darken-3">
                                            <asp:Image ID="imgComida" runat="server" CssClass="responsive-img icon-food" ImageUrl='<%# string.Format("../Content/img/{0}",Eval("imagen")) %>' />
                                            <h4><%# Eval("comida_tipo1")%></h4>
                                            <ul>
                                                <li>
                                                    <asp:Repeater ID="rComida" runat="server" OnItemDataBound="rComida_ItemDataBound">
                                                        <ItemTemplate>
                                                            <span class="alimento">
                                                                <asp:Label ID="lblAlimento" runat="server" Text='<%# Eval("alimento1")%>'></asp:Label>
                                                            </span>
                                                            <span>
                                                                <asp:Label ID="lblCantidad" runat="server" Text='<%# Eval("cantidad")%>'></asp:Label>
                                                            </span>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="card-action action-home">
                                            <a href="#">Editar</a>
                                            <a href="#">Eliminar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/row-->
                        </ItemTemplate>
                    </asp:Repeater>--%>

                */

                    return sb.ToString();
        }
    }
}
