<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="nutricloud_webforms.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionPerfil">
        <div class="container">
            <h3>Perfil</h3>
        </div>
    </div>
    <%--Información general--%>
    <div class="container">
        <div class="row">
            <div class="col l9 m9 s12 perfil">
                <div class="divtop">
                    <h4 class="listaHeader">Información General</h4>
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
                                <div class="row">
                                    <div class="col s6">
                                        <h6>Miembro desde:
                                        <asp:Label ID="LblFechaRegistro" runat="server" Text="Label"></asp:Label>
                                        </h6>
                                    </div>
                                    <div class="col s6">
                                        <h6>Último ingreso:
                                        <asp:Label ID="LblFechaUltimoIngreso" runat="server" Text="Label"></asp:Label>
                                        </h6>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <h6>Email:</h6>
                                <asp:Label ID="LblEmail" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Nombre:</h6>
                                <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <div class="row">
                                    <h6>Género:</h6>
                                    <asp:RadioButtonList ID="rblGenero" runat="server"></asp:RadioButtonList>
                                </div>
                            </li>
                            <li>
                                <h6>Fecha de nacimiento: </h6>
                                <asp:TextBox ID="TxtFechaNacimiento" runat="server" CssClass="datepicker fecha" TextMode="Date"></asp:TextBox>
                            </li>
                            <asp:Panel ID="pnlErroresInfoGral" runat="server" CssClass="panel-errores"></asp:Panel>
                            <li class="row btn-registro nomargin">
                                <asp:Button ID="btnActualizarInfoGral" runat="server" CssClass="btn waves-effect orange waves-input-wrapper" Text="Actualizar Información General" OnClick="btnActualizarInfoGral_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%-- //Información general --%>

        <%--Datos físicos--%>
        <div class="row">
            <div class="col l9 m9 s12 perfil">
                <div class="divtop">
                    <h4 class="listaHeader">Datos Físicos</h4>
                    <div class="row">
                        <ul class="infogral datosp">
                            <li>
                                <h6>Peso Actual (Kg): </h6>
                                <asp:TextBox ID="TxtPeso" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <h6>Altura (Cm): </h6>
                                <asp:TextBox ID="TxtAltura" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <h6>Actividad: </h6>
                                <asp:RadioButtonList ID="rblActividad" runat="server"></asp:RadioButtonList>
                            </li>
                            <li>
                                <h6>Objetivo: </h6>
                                <asp:RadioButtonList ID="rblObjetivo" runat="server"></asp:RadioButtonList>
                            </li>
                            <asp:Panel ID="pnlErroresDatosFisicos" runat="server" CssClass="panel-errores"></asp:Panel>
                            <li class="row btn-registro nomargin">
                                <asp:Button ID="btnActualizarDatosFisicos" runat="server" CssClass="btn waves-effect orange btn-ingresar" Text="Actualizar Datos Físicos" OnClick="btnActualizarDatosFisicos_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%-- //Datos físicos --%>
        <%-- Ingesta diaria --%>
        <div class="row">
            <div class="col l9 m9 s12 perfil">
                <div class="divtop">
                    <h4 class="listaHeader">Tu ingesta diaria recomendada</h4>
                    <div class="row">
                        <ul class="infogral datosp">
                            <li>
                                <h6>Carbohidratos: </h6>
                                <asp:Label ID="CCarbo" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Proteinas: </h6>
                                <asp:Label ID="CProt" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Grasas: </h6>
                                <asp:Label ID="CGrasas" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Agua: </h6>
                                <asp:Label ID="CAgua" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Fibra: </h6>
                                <asp:Label ID="CFibra" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Vitamina B1: </h6>
                                <asp:Label ID="CVB1" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Vitamina B2: </h6>
                                <asp:Label ID="CVB2" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Vitamina B3: </h6>
                                <asp:Label ID="CVB3" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Vitamina C: </h6>
                                <asp:Label ID="CVitc" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Calcio: </h6>
                                <asp:Label ID="CCalcio" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Hierro: </h6>
                                <asp:Label ID="CHierro" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Fosforo: </h6>
                                <asp:Label ID="CFosfo" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Zinc: </h6>
                                <asp:Label ID="CZinc" runat="server"></asp:Label>
                            </li>
                            <li>
                                <h6>Potasio: </h6>
                                <asp:Label ID="CPot" runat="server"></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%-- //Ingesta diaria --%>

        <div class="row">
            <div class="divtop">
                <h4 class="listaHeader">Mis recetas</h4>
                <div class="row mtop">
                </div>
            </div>
        </div>
    </div>

</asp:Content>
