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

                <%--<div class="list-food">
                    <div class="row">
                        <div class="col s12 m12">
                            <div class="card">
                                <div class="card-content orange-text text-darken-3">
                                    <asp:Image ID="Image1" runat="server" CssClass="responsive-img icon-food" ImageUrl="../Content/img/healthy-breakfast.png" />
                                    <h4>Almuerzo</h4>
                                    <div class="row item-alimento">
                                        <div class="col s8">
                                            <asp:Label ID="Label7" runat="server" CssClass="alimento" Text="Pescado"></asp:Label>
                                        </div>
                                        <div class="col s4">
                                            <asp:Label ID="Label8" runat="server" CssClass="calorias" Text="140kcal"></asp:Label>
                                        </div>
                                        <div class="col s12">
                                            <asp:Label ID="Label9" runat="server" CssClass="cantidad" Text="50g"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row item-alimento">
                                        <div class="col s8">
                                            <asp:Label ID="Label10" runat="server" CssClass="alimento" Text="Pescado"></asp:Label>
                                        </div>
                                        <div class="col s4">
                                            <asp:Label ID="Label11" runat="server" CssClass="calorias" Text="140kcal"></asp:Label>
                                        </div>
                                        <div class="col s12">
                                            <asp:Label ID="Label12" runat="server" CssClass="cantidad" Text="50g"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row item-alimento">
                                        <div class="col s8">
                                            <asp:Label ID="Label13" runat="server" CssClass="alimento" Text="Pescado"></asp:Label>
                                        </div>
                                        <div class="col s4">
                                            <asp:Label ID="Label14" runat="server" CssClass="calorias" Text="140kcal"></asp:Label>
                                        </div>
                                        <div class="col s12">
                                            <asp:Label ID="Label15" runat="server" CssClass="cantidad" Text="50g"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-action action-home">
                                    <a href="#">Editar</a>
                                    <a href="#">Eliminar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <!--/listfood-->--%>

                <div id="lista-comidas" class="list-food">
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
