<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="nutricloud_webforms.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="row seccionPerfil">
    <div class="container">
        <h3>Perfil</h3>
    </div>
</div>

<div class="container">
    <div class="row">
        <!--<div class="col l3 m3 s12 menu-left">
            <h5>Acciones</h5>
            <ul>
                <li><a href="#"><i class="material-icons orange-text text-darken-3 left-i">mode_edit</i>Editar datos personales</a></li>
            </ul>
        </div>
            -->
        <div class="col l9 m9 s12 perfil">
            <div class="divtop">
                <h4 class="listaHeader">Información General</h4>
                <h5>nombre de usuario</h5>
                <div class="row">
                    <ul class="infogral datosp">
                        <li>
                               <!-- <div class="file-field input-field">
                                    <div class="btn orange">
                                        <span class="white-text">Subir Imagen</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input class="file-path validate" type="text">
                                    </div>
                                </div>-->
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
                            <h6>usuario: </h6>
                            <!--<span>--nombre de usuario--</span>-->
                            <input type="text" value="nombre de usuario"/>
                        </li>
                        <li>
                            <h6>Email: </h6>
                           <!-- <span>--Email--</span>-->
                            <input type="text" value="usuario@mail.com" />
                        </li>
                        <!--<li>
                            <h6>Fecha de nacimiento: </h6>
                            <span>--Fechanac--</span>
                            <input type="date" value="12/05/1981" />
                        </li>-->
                        <li>
                            <h6>Peso Actual (Kg): </h6>
                            <!--<span>--Fechanac--</span>-->
                            <input type="text" value="100" />
                        </li>
                        <li>
                            <h6>Ultimo ingreso: </h6>
                           <span>--ultimo ingreso--</span>
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

</div>

</asp:Content>
