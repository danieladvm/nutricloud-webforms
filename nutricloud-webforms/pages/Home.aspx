<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="nutricloud_webforms.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row seccionHeader">
        <div class="container">
            <h3>Tu Consumo Diario</h3>
        </div>
    </div>
    <!--/seccionHeader-->
    <div class="container">
        <div class="row">
            <div class="col l3 m3 s12 menu-left">
                <h5>Mis Alimentos</h5>
                <ul>
                    <li><a href="buscador.aspx"><i class="material-icons orange-text text-darken-3 left-i">add</i>Agregar</a></li>
                </ul>
            </div>

            <div class="col l9 m9 s12 home">
                <div class="divtop" id="calendario">
                    <input type="text" id="datepicker">
                    <input type="text" id="alternate" name="name" class="altercalendar" />
                </div>
                <div id="lista-comidas" class="list-food">
                    <%--<asp:Repeater ID="rComidas" runat="server">
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
                </div>
                <!--/listfood-->
            </div>
            <!--/col9-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->
    <div class="container">
        <div class="row">
            <div class="reporte">
                <h3>Reporte</h3>
            </div>
            <!--/reporte-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->
</asp:Content>
