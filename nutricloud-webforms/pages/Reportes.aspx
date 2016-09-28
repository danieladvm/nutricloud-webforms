<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="nutricloud_webforms.Reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="row seccionRep">
    <div class="container">
        <h3>Reportes</h3>
    </div>
</div>
<div class="container">
    <div class="divider"></div>
    <div class="section">
        <h5>historial nutrientes</h5>
        <p>--aca va a ir el grafico--</p>
        <%-- Primer grafico --%>
        <div style="width: 400px; height: 400px;">
            <canvas id="chart_1" width="400" height="400"></canvas>
            
        </div>
        <div style="width: 400px; height: 400px;">
            <canvas id="chart_2" width="400" height="400"></canvas>
            
        </div>
        
    </div>
    <div class="divider"></div>
    <div class="section">
        <h5>Historial por grupo de comida</h5>
        <p>--aca va a ir el grafico--</p>
    </div>
</div>

<script src="../scripts/Chart.js"></script>
<script src="../scripts/Reportes.js"></script>

</asp:Content>
