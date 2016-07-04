<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="nutricloud_webforms.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="row seccionHeader">
    <div class="container">
        <h3>Regístrate</h3>
    </div>
</div><!--/seccionHeader-->

<div class="container">
    <p>
        <h5>Usuarios Regulares</h5>
    </p>
        <div class="row">
            <form class="col s12 m12 l8 register-form">
                <div class="row">
                    <div class="input-field col s6">
                        <input id="first_name" type="text" class="validate">
                        <label for="first_name">Nombre</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="last_name" type="text" class="validate">
                        <label for="last_name">Apellido</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <label class="fecha-label">Fecha de Nacimiento</label>
                        <input type="date" class="datepicker fecha">
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password" type="password" class="validate">
                        <label for="password">Password</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="email" type="email" class="validate">
                        <label for="email">Email</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col m6 s12">
                        <input id="first_name" type="text" class="validate">
                        <label for="first_name">Peso Actual en Kg</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <input id="first_name" type="text" class="validate">
                        <label for="first_name">Estatura Actual en cm</label>
                    </div>
                </div>
                <div class="row">
                    <p>Género</p>
                     <div class="input-field col m6 s6">
                        <input class="with-gap" name="group1" type="radio" id="masc" />
                        <label for="masc">Masculino</label>
                     </div>
                    <div class="input-field col m6 s6">
                        <input class="with-gap" name="group1" type="radio" id="fem" />
                        <label for="fem">Femenino</label>
                     </div>
                 </div>
                <div class="row">
                    <div class="input-field col s12">
                        ¿Cuánta actividad física realizás?
                        <p>
                            <input class="with-gap" name="group1" type="radio" id="act1" />
                            <label for="act1">Sedentario. Actividad diaria que requiere estar sentado la mayor parte del tiempo.</label>
                        </p>
                        <p>
                            <input class="with-gap" name="group1" type="radio" id="act2" />
                            <label for="act2">Algo Activo. Mínima actividad física diaria.</label>
                        </p>
                        <p>
                            <input class="with-gap" name="group1" type="radio" id="act3" />
                            <label for="act3">Activo. Diariamente realizás algo de actividad.</label>
                        </p>
                        <p>
                            <input class="with-gap" name="group1" type="radio" id="act4" />
                            <label for="act4">Muy Activo. Actividad física intensa.</label>
                        </p>
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
            </form>
      </div> <!--/row-->
</div><!--/container-->

</asp:Content>
