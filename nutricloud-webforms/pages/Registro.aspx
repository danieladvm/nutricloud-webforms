<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="nutricloud_webforms.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row seccionHeader">
        <div class="container">
            <h3>Datos</h3>
        </div>
    </div>
    <!--/seccionHeader-->

    <div class="container">
        <h5>Paciente</h5>
        <div class="row">
            <div class="col s12 m12 l8 register-form">
                <div class="row">
                    <div class="input-field col s12">
                        <asp:TextBox ID="txtName" runat="server" CssClass="validate"></asp:TextBox>
                        <label for="txtName">Nombre</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <label class="fecha-label">Fecha de Nacimiento</label>
                        <asp:TextBox ID="txtDate" runat="server" CssClass="datepicker fecha" TextMode="Date"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col m6 s12">
                        <asp:TextBox ID="txtPeso" runat="server" CssClass="validate"></asp:TextBox>
                        <label for="first_name">Peso Actual en Kg</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <asp:TextBox ID="txtAltura" runat="server" CssClass="validate"></asp:TextBox>
                        <label for="first_name">Estatura Actual en cm</label>
                    </div>
                </div>
                <div class="row">
                    <p>Género</p>
                    <div class="input-field col m6 s6">
                        <asp:RadioButton ID="m" runat="server" CssClass="with-gap" GroupName="rbGenero" />
                        <label for="masc">Masculino</label>
                    </div>
                    <div class="input-field col m6 s6">
                        <asp:RadioButton ID="f" runat="server" CssClass="with-gap" GroupName="rbGenero" />
                        <label for="fem">Femenino</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        ¿Cuánta actividad física realizás?
                        <asp:RadioButtonList ID="rblActividad" runat="server"></asp:RadioButtonList>
                    </div>
                </div>
                <div class="row">
                    <p class="terminos">
                        <input type="checkbox" id="terms" />
                        <label for="terms">Acepto los términos y condiciones.</label>
                    </p>
                </div>
                <div class="row btn-registro">
                    <button class="btn waves-effect orange btn-ingresar" type="submit" name="action">
                        Registrarse
                    </button>
                </div>
            </div>
        </div>
        <!--/row-->
    </div>
    <!--/container-->

</asp:Content>
