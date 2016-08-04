<%@ Page Title="" Language="C#" MasterPageFile="~/Recetas.Master" AutoEventWireup="true" CodeBehind="Receta.aspx.cs" Inherits="nutricloud_webforms.pages.Nota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionPro">
        <div class="container">
            <h3>NutriRecetas</h3>
        </div>
    </div>

    <div class="container">
        <div class="row fechanota grey-text">
            27 de Febrero 2017
        </div>
        <div class="row titlenota">
            <h4 runat="server" id="receta_titulo"></h4>
        </div>
        <div class="row">
            <div class="col l9 m12 s12">
                <div class="row">
                    <div class="col l6 s12">
                        <asp:Image ID="imgReceta" CssClass="imgentrada responsive-img" runat="server"/>
                        <span class="sharenote"><i class="material-icons">share</i></span>
                     </div>
                </div>
                <div class="row">
                    <div class="col l10 s12">
                        <div id="receta_texto" runat="server"></div>
                    </div>
                </div>
                <form runat="server">
                    <asp:LinkButton runat="server" CssClass="button btn waves-effect orange btn-ingresar" OnClick="EditarReceta" Text="Editar"></asp:LinkButton>
                    <asp:LinkButton runat="server" CssClass="button btn waves-effect orange btn-ingresar" OnClick="EliminarReceta" Text="Eliminar"></asp:LinkButton>  
                </form>
            </div>
            <!--/col l9-->
            <div class="col l3 m12 s12">
                <div class="note-blog relacionados">
                    <div class="row">
                        <h4>Relacionados</h4>
                    </div>
                    <div class="row">
                        <a href="Nota.aspx" >
                            <h5>Título Nota Blog</h5>
                            <p class="grey-text">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod varius pretium. 
                            Curabitur luctus condimentum laoreet.
                            </p>
                            <span>Leer Más</span>
                        </a>
                    </div>
                    <div class="row">
                        <a href="Nota.aspx" >
                            <h5>Título Nota Blog</h5>
                            <p class="grey-text">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod varius pretium. 
                            Curabitur luctus condimentum laoreet.
                            </p>
                            <span>Leer Más</span>
                        </a>
                    </div>
                    <div class="row">
                        <a href="Nota.aspx" >
                            <h5>Título Nota Blog</h5>
                            <p class="grey-text">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod varius pretium. 
                            Curabitur luctus condimentum laoreet.
                            </p>
                            <span>Leer Más</span>
                        </a>
                    </div>
                </div><!--/relacionados-->
            </div><!--/col l3-->
        </div><!--/row-->
    </div><!--/container-->

</asp:Content>
