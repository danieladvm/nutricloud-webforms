<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignIn.ascx.cs" Inherits="nutricloud_webforms.SignIn" %>
<div class="col l4 m12 s12 pcipal-index">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row nobottom">
                <div class="col s12">
                    <div class="input-field mtop col s12">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="validate" TextMode="Email"></asp:TextBox>
                        <label for="txtEmail">Email</label>
                    </div>
                    <!--/.input-->
                </div>
                <!--/.col s12-->
            </div>
            <!--/.row-->
            <div class="row nobottom">
                <div class="col s12">
                    <div class="input-field col s12">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="validate"></asp:TextBox>
                        <label for="txtPassword">Contraseña</label>
                    </div>
                    <!--/.input-->
                </div>
                <!--/.col s12-->
            </div>
            <!--/.row-->
            <div class="row nomargin nobottom">
                <div class="col s12">
                    <div class="input-field col s12">
                        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" CssClass="validate"></asp:TextBox>
                        <label for="txtPassword2">Repita Contraseña</label>
                    </div>
                    <!--/.input-->
                </div>
                <!--/.col s12-->
            </div>
            <!--/.row-->
            <div class="row checkusr nomargin nobottom">
                <asp:RadioButtonList ID="rblTipoUsuario" runat="server"></asp:RadioButtonList>
            </div>
            <asp:Panel ID="pnlErrores" runat="server" CssClass="panel-errores"></asp:Panel>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="registrarse" />
        </Triggers>
    </asp:UpdatePanel>
    <div class="row">
        <asp:Button ID="registrarse" runat="server" Text="Registrarse" CssClass="btn waves-effect green-nutri btnregistro" OnClick="registrarse_Click" />
    </div>
    <!--/.row-->
</div>
<!--/.col5-->
