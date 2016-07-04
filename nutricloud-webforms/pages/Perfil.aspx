﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="nutricloud_webforms.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="row seccionPerfil">
    <div class="container">
        <h3>Perfil</h3>
    </div>
</div>

<div class="container">
    <form runat="server">
        <div class="row">
            <div class="col l9 m9 s12 perfil">
                <div class="divtop">
                    <h4 class="listaHeader">Información General</h4>
                    <h5>nombre de usuario</h5>
                    <div class="row">
                        <ul class="infogral datosp">
                            <li>
                                <div class="row">
                                    <div class="col s2">
                                        <img class="imgperfil circle responsive-img" src="../Content/img/usuario.png">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s10">
                                        <input type="file" />
                                    </div>
                                </div>
                            </li>
                            <li>
                                <h6>Usuario:</h6>
                                <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <h6>Email:</h6>
                                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <h6>Peso Actual (Kg): </h6>
                                <asp:TextBox ID="TxtPesoActual" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <h6>Ultimo ingreso: </h6>
                                <asp:TextBox ID="TxtUltimoIngreso" runat="server"></asp:TextBox>
                            </li>
                            <li class="row btn-registro nomargin">
                                <button class="btn waves-effect orange btn-ingresar" type="submit" name="action">
                                    Actualizar Datos
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="divtop">
                    <h4 class="listaHeader">Mis recetas</h4>
                    <div class="row mtop">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

</asp:Content>