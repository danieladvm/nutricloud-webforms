<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPro.Master" AutoEventWireup="true" CodeBehind="RecetaAlta.aspx.cs" Inherits="nutricloud_webforms.pages.Entrada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionPro">
        <div class="container">
            <h3>Entrada de Blog</h3>
        </div>
    </div>

    <div class="container">
        <form runat="server">
            <div class="row">
                <div class="col s10">
                    <asp:FileUpload ID="imagenReceta" runat="server" />
                </div>
            </div>
            <div class="row">  
                <asp:TextBox runat="server" ID="titulo_receta"></asp:TextBox>
                <asp:TextBox runat="server" ID="descripcion_receta"></asp:TextBox>
                <asp:TextBox ID="entrada" TextMode="MultiLine" Rows="500" runat="server" ValidateRequestMode="Disabled"></asp:TextBox>
                <asp:LinkButton runat="server" CssClass="button btn waves-effect orange btn-ingresar" OnClick="SubirEntrada" Text="Subir Entrada"></asp:LinkButton> 
            </div>
        </form>
    </div>
    <!--/container-->
    <style>
        form button {
            background-color: rgba(0, 0, 0, 0.26) !important;
        }
    </style>
</asp:Content>
