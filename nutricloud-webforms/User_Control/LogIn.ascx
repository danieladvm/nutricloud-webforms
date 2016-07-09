﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LogIn.ascx.cs" Inherits="nutricloud_webforms.LogIn" %>

<div class="col s12">
    <a class="modal-trigger" href="#modal1">Iniciar Sesión</a>
    <!-- Modal -->
    <div id="modal1" class="modal modal-fixed-footer">
        <div class="modal-content">
            <div class="modalrow green-nutri">
                <h4>Iniciar Sesión</h4>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="row nomargin nobottom">
                        <div class="row nomargin nobottom">
                            <div class="col s12">
                                <asp:Label ID="LblMail" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                            </div>
                            <!--/.col s12-->
                        </div>
                        <div class="row nomargin nobottom">
                            <div class="col s12">
                                <asp:Label ID="LblPass" runat="server" Text="Contraseña" CssClass="control-label"></asp:Label>
                                <asp:TextBox TextMode="Password" ID="TxtPass" runat="server"></asp:TextBox>
                            </div>
                            <!--/.col s12-->
                        </div>
                        <asp:Panel ID="pnlErrores" runat="server" CssClass="panel-errores"></asp:Panel>
                    </div>
                    <!--/row-->
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ingresar" />
                </Triggers>
            </asp:UpdatePanel>
            <div class="modal-footer">
                <asp:Button ID="ingresar" runat="server" Text="Ingresar" CssClass="btn waves-effect green-nutri" OnClick="Button_Aceptar_Click" />
                <a href="#">Olvidaste tu contraseña?</a>
            </div>
        </div>
    </div>
</div>
