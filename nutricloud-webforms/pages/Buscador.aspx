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
                    <asp:Button class="btn waves-effect orange btn-buscar" OnClick="Buscar_Click" runat="server"></asp:Button>
                    <asp:TextBox ID="TxtBuscar" type="text" size="30" class="altercalendar" runat="server" placeholder="Buscar alimentos" />
                </div>
                <div class="list-food buscador-food">
                    <div class="row">
                        <div class="col s12 m12 resultados">
                            <h5>Resultados de Búsqueda</h5>
                            <ul>
                               <asp:Repeater ID="repalimentos" runat="server">
                                    <ItemTemplate>
                                        <li>
                                                <h6><a href='Alimento.aspx?Idalimento=<%#Eval("id_alimento") %>'><%# Eval("alimento1") %></a></h6>
                                               <span><asp:Label ID="LblCaloria" runat="server" Text='<%# Eval("energia_kcal") %>' CssClass="caloriab"></asp:Label></span>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <asp:Label ID="lblMsjSinResultados" runat="server"></asp:Label>
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
