<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Buscador.aspx.cs" Inherits="nutricloud_webforms.Buscador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionHeader">
        <div class="container">
            <h3>Buscador de Alimentos</h3>
        </div>
    </div>
    <!--/seccionHeader-->

    <div class="container">
        <div class="row">
            <div class="col l3 m3 s12 menu-left">
                <h5>Mis Alimentos</h5>
                <ul>
                    <li><a href="#"><i class="material-icons orange-text text-darken-3 left-i">mode_edit</i>Editar</a></li>
                    <li><a href="#"><i class="material-icons orange-text text-darken-3 left-i">clear</i>Eliminar</a></li>
                    <li><a href="#"><i class="material-icons orange-text text-darken-3 left-i">add</i>Agregar</a></li>
                </ul>
            </div>

            <div class="col l9 m9 s12 home">
                <div class="divtop">
                    <button class="btn waves-effect orange btn-buscar" type="submit" name="action" onclick="Buscar_Click" runat="server">
                        <i class="material-icons">search</i>
                    </button>
                    <asp:TextBox ID="TxtBuscar" size="30" CssClass="altercalendar" runat="server" placeholder="Buscar alimentos" />
                </div>
                <div class="list-food">
                    <div class="row">
                        <div class="col s12 m12">
                            <h5>Resultados de Búsqueda</h5>
                            <ul>
                                <asp:Repeater ID="repalimentos" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <h6>Nombre:
                                                <asp:TextBox ID="txtNombre" runat="server" Text='<%# Eval("alimento1") %>'></asp:TextBox></h6>
                                            <p>Proteinas:
                                                <asp:TextBox ID="txtProteina" runat="server" Text='<%# Eval("proteinas_g") %>'></asp:TextBox></p>
                                            <p>Carbohidratos:
                                                <asp:TextBox ID="txtCarbo" runat="server" Text='<%# Eval("carbohidratos_totales_g") %>'></asp:TextBox></p>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <!--/listfood-->
            </div>
            <!--/col9-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->



</asp:Content>
