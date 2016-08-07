<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Muro.aspx.cs" Inherits="nutricloud_webforms.Muro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionFood">
        <div class="container">
            <h3>Muro</h3>
        </div>
    </div>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <nav class="searchnav">
                    <div class="nav-wrapper">
                        <div class="input-field">
                            <asp:TextBox ID="busqueda" runat="server" type="search" placeholder="Buscar Amigos"></asp:TextBox>
                            <label for="busqueda"><i class="material-icons orange-text">search</i></label>
                        </div>
                    </div>
                </nav>
                <div class=" row comment">
                    <div class="imagemuro propiaimg">
                        <img src="../Content/img/apple.png" class="responsive-img" />
                    </div>
                    <div class="col s10">
                        <label for="TxtEstado">Cómo te sientes hoy?</label>
                        <asp:TextBox ID="TxtEstado" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CssClass="button btn waves-effect orange" Text="Subir Entrada" OnClick="Button1_Click" AutoPostback="true" />
                    </div>
                </div>

                <div class="row">
                    <div class="col s12 home muromsj">
                        <asp:Repeater ID="rMuro" runat="server">
                            <ItemTemplate>
                                <div class="row item-muro">
                                    <div class="row">
                                        <div class="imagemuro">
                                            <img src="../Content/img/apple.png" class="responsive-img" />
                                        </div>
                                        <div class="col s10">
                                            <a href="#">
                                                <%# (String.IsNullOrEmpty(Eval("nombre_usuario_seguido").ToString()) ? "Anónimo" : Eval("nombre_usuario_seguido"))%>
                                            </a>
                                            <span><%# Eval("f_publicacion") %></span>
                                            <p><%# Eval("estado") %></p>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
