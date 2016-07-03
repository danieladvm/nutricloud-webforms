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
                        <asp:Label ID="LblMail" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                        <div class="input-field col s12">
                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control input-lg" placeholder="Email" ></asp:TextBox>
                    </div>
                        <!--/.input-->
                    </div>
                    <!--/.col s12-->
                </div>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s12">
                        <asp:Label ID="LblPass" runat="server" Text="Contraseña" CssClass="control-label"></asp:Label>
                        <asp:TextBox TextMode="Password" ID="TxtPass" runat="server" CssClass="form-control input-lg" placeholder="Contraseña"></asp:TextBox>
                        </div>
                        <!--/.input-->
                    </div>
                    <!--/.col s12-->
                    <div class="form-group">
                    <div class="col-lg-12">
                        <asp:Label ID="LblError" runat="server" ForeColor="Red" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <asp:Button ID="ingresar" runat="server" Text="Ingresar" class="btn waves-effect green-nutri" OnClick="Button_Aceptar_Click" />
        </div>
    </div>
</div>
