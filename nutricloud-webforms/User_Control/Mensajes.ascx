<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Mensajes.ascx.cs" Inherits="nutricloud_webforms.User_Control.Mensajes" %>
<div class="container mensajes">
    <div class="row">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col s6">
                    <%--Lista de conversaciones--%>
                    <ul>
                        <asp:Repeater ID="rConversaciones" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:LinkButton ID="LnkConv" CommandArgument='<%# Eval("id_consulta_conversacion") %>' runat="server" OnClick="lnkConversacion_Click"><%# Eval("asunto") %></asp:LinkButton>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>

                <div class="col s6">
                    <%--Mensaje seleccionado / Nuevo--%>
                    <div>
                        <asp:Button ID="btnNuevo" runat="server" Text="Nueva Consulta" OnClick="btnNuevo_Click" />
                    </div>
                    <div>
                        <asp:Panel ID="pnlMsjs" runat="server"></asp:Panel>
                    </div>
                    <div class="container-cerrar">
                        <asp:Label ID="lblCerrada" runat="server" Visible="false" CssClass="text-error" Text="Conversación cerrada"></asp:Label>
                        <asp:Button ID="btnCerrar" runat="server" Visible="false" CssClass="btn waves-effect orange waves-input-wrapper" Text="Cerrar" OnClick="btnCerrar_Click1" />
                    </div>
                    <asp:Panel ID="pnlNuevoMsj" runat="server">
                        <label for="TxtAsunto">Asunto</label>
                        <asp:TextBox ID="TxtAsunto" runat="server"></asp:TextBox>
                        <label for="TxtMensaje">Mensaje</label>
                        <asp:TextBox ID="TxtMensaje" runat="server"></asp:TextBox>
                        <asp:Button ID="btnenviar" runat="server" Text="Enviar" CssClass="btn waves-effect green-nutri" OnClick="btnenviar_Click" AutoPostback="true" />
                    </asp:Panel>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
