<%@ Page Title="" Language="C#" MasterPageFile="~/Recetas.Master" AutoEventWireup="true" CodeBehind="Recetas.aspx.cs" Inherits="nutricloud_webforms.Pages.Recetas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row seccionPro">
        <div class="container">
            <h3>Recetas</h3>
        </div>
    </div>

    <div class="container">
        <p style="font-size: 20px;">Encontrá los mejores consejos de nutrición de la mano de profesionales. </p>
        <div class="row">
            <div class="col l6 s12">
                <a href="Entrada.aspx" class="button btn waves-effect orange btn-ingresar">Agregar Receta</a>
            </div>
            <div class="col l6 s12 search-blog">
                <div class="input-field">
                    <input id="search" type="search" required>
                    <label for="search"><i class="material-icons orange-text">search</i></label>
                </div>
            </div>
        </div>
        <div class="collection">
            <form runat="server">
            <asp:Repeater ID="RepeaterRecetas" runat="server">
                <ItemTemplate>
                    <a class="collection-item">
                        <div class="row">
                            <div class="col l3 m3 s12 img-blog responsive-img">
                            </div>
                            <div class="col l9 m9 s12 note-blog">
                                <h5><%# Eval("id_usuario_receta") %></h5>
                                <p class="grey-text">
                                    <%# Eval("receta") %>
                                </p>
                                <asp:LinkButton data-idreceta=<%# Eval("id_usuario_receta") %> class="btn waves-effect green-nutri" OnClick="Ver_Click" runat="server" Text="Ver"></asp:LinkButton>
                            </div>
                        </div>
                    </a>
                </ItemTemplate>
            </asp:Repeater>
            </form>
        </div>
        <!--coleccion-->

        <ul class="paginador">
            <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
            <li class="active"><a href="#!">1</a></li>
            <li class="waves-effect"><a href="#!">2</a></li>
            <li class="waves-effect"><a href="#!">3</a></li>
            <li class="waves-effect"><a href="#!">4</a></li>
            <li class="waves-effect"><a href="#!">5</a></li>
            <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
        </ul>
    </div>
    <!--container-->
</asp:Content>
