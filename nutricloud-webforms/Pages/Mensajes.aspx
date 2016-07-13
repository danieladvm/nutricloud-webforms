<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Mensajes.aspx.cs" Inherits="nutricloud_webforms.Pages.Mensajes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
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
                                        <asp:LinkButton ID="LnkConv" CommandArgument='<%# Eval("id_consulta_conversacion") %>' CommandName='<%# Eval("asunto") %>' runat="server" OnClick="lnkConversacion_Click"><%# Eval("asunto") %></asp:LinkButton>
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
                        <div>
                            <label for="TxtAsunto">Asunto</label>
                            <asp:TextBox ID="TxtAsunto" runat="server"></asp:TextBox>
                            <label for="TxtMensaje">Mensaje</label>
                            <asp:TextBox ID="TxtMensaje" runat="server"></asp:TextBox>
                            <asp:Button ID="btnenviar" runat="server" Text="Enviar" CssClass="btn waves-effect green-nutri" OnClick="btnenviar_Click" AutoPostback="true" />
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
