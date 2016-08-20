<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="nutricloud_webforms.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row seccionHeader">
        <div class="container">
            <h3>Tu Consumo Diario</h3>
        </div>
    </div>
    <!--/seccionHeader-->
    <div class="container">
        <div class="row">
            <div class="col l3 m3 s12 menu-left">
                <h5>Mis Alimentos</h5>
                <ul>
                    <li><a href="buscador.aspx"><i class="material-icons orange-text text-darken-3 left-i">add</i>Agregar</a></li>
                </ul>
            </div>

            <div class="col l9 m9 s12 home">
                <div class="divtop" id="calendario">
                    <input type="text" id="datepicker">
                    <input type="text" id="alternate" name="name" class="altercalendar" />
                </div>

                <div id="lista-comidas" class="list-food">
                </div>
            </div>
            <!--/col9-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->
    <div class="container">
        <div class="row">
            <div class="reporte">
                <h3>Reporte</h3>
            </div>
            <!--/reporte-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->

    <script>
        $(function () {
            CargaComidas();

            $("#datepicker").datepicker({
                showOn: "button",
                buttonImage: "../../content/img/calendario.png",
                buttonImageOnly: true,
                buttonText: "Seleccione la Fecha",
                altField: "#alternate",
                altFormat: "DD, d MM, yy",
                onSelect: function () {
                    CargaComidas();
                }
            });
        });

        function CargaComidas() {
            var fechaSeleccionada = $("#alternate").val();

            $.ajax({
                type: "POST",
                url: "Home.aspx/GetAlimentos",
                data: "{fecha:'" + fechaSeleccionada + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    // How to return data here like a table???  
                    $("#lista-comidas").html(msg.d);
                    //alert(msg.d);
                }
            });
        }
    </script>

</asp:Content>
