<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignIn.ascx.cs" Inherits="nutricloud_webforms.SignIn" %>
<div class="col l4 m12 s12 pcipal-index">
    <div class="row nobottom">
        <div class="col s12">
            <div class="input-field mtop col s12">
                <asp:TextBox ID="email" runat="server" CssClass="validate" TextMode="Email"></asp:TextBox>
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
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="validate"></asp:TextBox>
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
                <asp:TextBox ID="password2" runat="server" CssClass="validate"></asp:TextBox>
                <label for="password2">Repita Contraseña</label>

            </div>
            <!--/.input-->
        </div>
        <!--/.col s12-->
    </div>
    <!--/.row-->
    <div class="row checkusr">
        <asp:RadioButtonList ID="rblTipoUsuario" runat="server" CssClass=""></asp:RadioButtonList>
    </div>
    <div class="row">
        <asp:Panel ID="pnlErrores" runat="server"></asp:Panel>
    </div>
    <div class="row">
        <asp:Button ID="registrarse" runat="server" Text="Registrarse" class="btn waves-effect green-nutri btnregistro" OnClick="registrarse_Click" />
    </div>
    <!--/.row-->
</div>
<!--/.col5-->
