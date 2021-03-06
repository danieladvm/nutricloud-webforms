﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Nota.aspx.cs" Inherits="nutricloud_webforms.pages.Nota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionPerfil">
        <div class="container">
            <h3>Blog</h3>
        </div>
    </div>

    <div class="container">
        <div class="row fechanota grey-text">
           <asp:Label ID="fechanota" runat="server"></asp:Label>
        </div>
        <div class="row titlenota">
            <h4 runat="server" id="nota_titulo"></h4>
        </div>
        <div class="row">
            <div class="col l9 m12 s12">
                <div class="row">
                    <div class="col offset-m3 m6 s12">
                        <asp:Image ID="imagen" runat="server" CssClass="imgentrada responsive-img"/>
                     </div>
                </div>
                 <div class="row">
                    <div class="col l10 s12">
                        <i>
                            <div id="descripcion" runat="server"></div>
                        </i>
                    </div>
                </div>
                <div class="row">
                    <div class="col l10 s12">
                        <div id="texto" runat="server"></div>
                    </div>
                </div>
                   <asp:LinkButton ID="LiEditar" runat="server" CssClass="button btn waves-effect orange btn-ingresar" OnClick="Editar" Text="Editar"></asp:LinkButton>
                    <asp:LinkButton ID="LiEliminar" runat="server" CssClass="button btn waves-effect orange btn-ingresar" OnClick="Eliminar" Text="Eliminar"></asp:LinkButton>  
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
