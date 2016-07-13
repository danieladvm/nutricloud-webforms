<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="nutricloud_webforms.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row seccionHeader">
    <div class="container">
        <h3>Tu Consumo Diario</h3>
    </div>
</div><!--/seccionHeader-->
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
                <input type="text" id="alternate" size="30" class="altercalendar">
            </div>
            <div class="list-food">
                <div class="row">
                    <div class="col s12 m12">
                        <div class="card">
                            <div class="card-content orange-text text-darken-3">
                                <img src="../Content/img/healthy-breakfast.png" class="responsive-img icon-food"/>
                                <h4>Desayuno</h4>
                                <ul>
                                    <li>
                                        <asp:Repeater ID="repdesayuno" runat="server">
                                        <ItemTemplate>
                                        <span class="alimento"><asp:Label ID="Lbldesayuno" runat="server"> <!--Text="<%#Eval ("alimento1")%>"--></asp:Label></span>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repdesayuno2" runat="server">
                                        <ItemTemplate>
                                        <span><asp:Label ID="Lbldesayuno2" runat="server"> <!--Text="<%#Eval ("cantidad")%>"--></asp:Label></span>
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
                </div><!--/row-->
                <div class="row">
                    <div class="col s12 m12">
                        <div class="card">
                            <div class="card-content orange-text text-darken-3">
                                <img src="../Content/img/salad-bowl.png" class="responsive-img icon-food"/>
                                <h4>Almuerzo</h4>
                                <ul>
                                    <li>
                                        <asp:Repeater ID="repalmuerzo" runat="server">
                                        <ItemTemplate>
                                        <span class="alimento"><asp:Label ID="LblAlm" runat="server"> <!--Text="<%#Eval ("alimento")%>"--></asp:Label></span>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repalmuerzo2" runat="server">
                                        <ItemTemplate>
                                        <span><asp:Label ID="LblAlm2" runat="server"> <!--Text="<%#Eval ("cantidad")%>"--></asp:Label></span>
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
                <div class="row">
                    <div class="col s12 m12">
                        <div class="card">
                            <div class="card-content orange-text text-darken-3">
                                <img src="../Content/img/oatmeal.png" class="responsive-img icon-food"/>
                                <h4>Merienda</h4>
                                <ul>
                                    <li>
                                        <asp:Repeater ID="repmerienda" runat="server">
                                        <ItemTemplate>
                                        <span class="alimento"><asp:Label ID="LblMer" runat="server"> <!--Text="<%# Eval ("alimento")%>"--></asp:Label></span>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repmerienda2" runat="server">
                                        <ItemTemplate>
                                        <span><asp:Label ID="LblMer2" runat="server"> <!--Text="<%# Eval ("cantidad")%>"--></asp:Label></span>
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
                <div class="row">
                    <div class="col s12 m12">
                        <div class="card">
                            <div class="card-content orange-text text-darken-3">
                                <img src="../Content/img/dinner.png" class="responsive-img icon-food"/>
                                <h4>Cena</h4>
                                <ul>
                                    <li>
                                        <asp:Repeater ID="repcena" runat="server">
                                        <ItemTemplate>
                                        <span class="alimento"><asp:Label ID="LblCen" runat="server"> <!--Text="<%#Eval ("alimento")%>"--></asp:Label></span>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repcena2" runat="server">
                                        <ItemTemplate>
                                        <span><asp:Label ID="LblCen2" runat="server"><!--Text="<%#Eval ("cantidad")%>"--></asp:Label></span>
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
                <div class="row">
                    <div class="col s12 m12">
                        <div class="card">
                            <div class="card-content orange-text text-darken-3">
                                <img src="../Content/img/coffee.png" class="responsive-img icon-food"/>
                                <h4>Aperitivos</h4>
                                <ul>
                                    <li>
                                        <asp:Repeater ID="repaper" runat="server">
                                        <ItemTemplate>
                                        <span class="alimento"><asp:Label ID="LblApe" runat="server"> <!--Text="<%#Eval ("alimento")%>"--></asp:Label></span>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="repaper2" runat="server">
                                        <ItemTemplate>
                                        <span><asp:Label ID="LblApe" runat="server"> <!--Text="<%#Eval ("cantidad")%>"--></asp:Label></span>
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

           </div><!--/listfood-->
        </div><!--/col9-->
     </div><!--/row-->
</div><!--/container-->
<div class="container">
    <div class="row">
        <div class="reporte">
        <h3>Reporte</h3>
        </div><!--/reporte-->
    </div><!--/row-->
</div><!--/container-->
</asp:Content>
