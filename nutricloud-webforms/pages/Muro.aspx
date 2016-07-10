<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Muro.aspx.cs" Inherits="nutricloud_webforms.Muro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionFood">
        <div class="container">
            <h3>Muro</h3>
        </div>
    </div>
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
                <textarea rows="10" cols="60">Agrega un comentario.</textarea>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#" class="button btn waves-effect orange">Subir Entrada</asp:HyperLink>
            </div>
        </div>

        <div class="row">
            <div class="col s12 home muromsj">
                <div class="row item-muro">
                    <div class="row">
                        <div class="imagemuro">
                            <img src="../Content/img/apple.png" class="responsive-img" />
                        </div>
                        <div class="col s10">
                            <a href="#">Nombre de Usuario</a>
                            <span>27 de Febrero 2016</span>
                            <p>Me siento mucho más saludable ! :)</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class=" row comment">
                        <div class="imagemuro propiaimg">
                            <img src="../Content/img/apple.png" class="responsive-img" />
                        </div>
                        <div class="col s10">
                                <textarea rows="10" cols="60">Escribe un comentario.</textarea>
                                <asp:Button Text="Publicar" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="row item-muro">
                    <div class="row">
                        <div class="imagemuro">
                            <img src="../Content/img/apple.png" class="responsive-img" />
                        </div>
                        <div class="col s10">
                            <a href="#">Nombre de Usuario</a>
                            <span>27 de Febrero 2016</span>
                            <p>Me siento mucho más saludable ! :)</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class=" row comment">
                        <div class="imagemuro propiaimg">
                            <img src="../Content/img/apple.png" class="responsive-img" />
                        </div>
                        <div class="col s10">
                            <textarea rows="10" cols="60">Escribe un comentario.</textarea>
                            <asp:Button Text="Publicar" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="row item-muro">
                    <div class="row">
                        <div class="imagemuro">
                            <img src="../Content/img/apple.png" class="responsive-img" />
                        </div>
                        <div class="col s10">
                            <a href="#">Nombre de Usuario</a>
                            <span>27 de Febrero 2016</span>
                            <p>Me siento mucho más saludable ! :)</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class=" row comment">
                        <div class="imagemuro propiaimg">
                            <img src="../Content/img/apple.png" class="responsive-img" />
                        </div>
                        <div class="col s10">
                            <textarea rows="10" cols="60">Escribe un comentario.</textarea>
                            <asp:Button Text="Publicar" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
