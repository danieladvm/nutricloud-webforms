<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignIn.ascx.cs" Inherits="nutricloud_webforms.SignIn" %>
<div class="col l4 m12 s12 pcipal-index">
    <div class="row nobottom">
        <div class="col s12">
            <div class="input-field mtop col s12">
                <input runat="server" id="email" type="email" class="validate" />
                <label for="email">Email</label>
            </div>
            <!--/.input-->
        </div>
        <!--/.col s12-->
    </div>
    <!--/.row-->
    <div class="row nobottom">
        <div class="col s12">
            <div class="input-field col s12">
                <input runat="server" id="password" type="password" class="validate">
                <label for="password">Contraseña</label>
            </div>
            <!--/.input-->
        </div>
        <!--/.col s12-->
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col s12">
            <div class="input-field col s12">
                <input runat="server" id="password2" type="password" class="validate">
                <label for="password2">Repita Contraseña</label>

            </div>
            <!--/.input-->
        </div>
        <!--/.col s12-->
    </div>
    <!--/.row-->
    <div class="row checkusr">
        <asp:RadioButtonList ID="rblTipoUsuario" runat="server" CssClass="with-gap"></asp:RadioButtonList>
    </div>
    <div class="row">
        <asp:Button ID="registrarse" runat="server" Text="Registrarse" class="btn waves-effect green-nutri" OnClick="registrarse_Click" />
    </div>
    <!--/.row-->
</div>
<!--/.col5-->
