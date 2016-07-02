<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LogIn.ascx.cs" Inherits="nutricloud_webforms.LogIn" %>
<div class="col s12">
    <a class="modal-trigger" href="#modal1">Iniciar Sesión</a>
    <!-- Modal -->
    <div id="modal1" class="modal modal-fixed-footer">
        <div class="modal-content">
            <h4>Iniciar Sesión</h4>
            <div class="row">
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s12">
                            <input id="email" type="email" class="validate">
                            <label for="email" data-error="wrong" data-success="right">Email</label>
                        </div>
                        <!--/.input-->
                    </div>
                    <!--/.col s12-->
                </div>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s12">
                            <input id="password" type="password" class="validate">
                            <label for="password" data-error="wrong" data-success="right">Contraseña</label>
                        </div>
                        <!--/.input-->
                    </div>
                    <!--/.col s12-->
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="ingresar" runat="server" Text="Ingresar" class="btn waves-effect green-nutri" OnClick="ingresar_Click" />
        </div>
    </div>
</div>
