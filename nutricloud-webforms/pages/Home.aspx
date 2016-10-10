<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="nutricloud_webforms.Home" %>

<%@ Register Src="~/User_Control/Carga_rapida.ascx" TagPrefix="uc1" TagName="Carga_rapida" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row seccionHeader">
        <div class="container">
            <h3>Tu Consumo Diario</h3>
        </div>
    </div>
    <!--/seccionHeader-->
    <div class="container">
        <div class="row">
            <div class="col l3 m12 s12 menu-left">
                <div class="btn_group">
                    <h5>Mis Alimentos</h5>
                    <ul>
                        <li>
                            <a class="waves-effect waves-light btn orange lighten-1" href="buscador.aspx">
                                <i class="material-icons left-i">add</i>
                                Agregar
                            </a>
                        </li>
                        <li>
                            <uc1:Carga_rapida runat="server" ID="Carga_rapida" />
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col l9 m12 s12 home">
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
    <span class="ir-arriba icon-arrow-up2"><i class="material-icons">keyboard_arrow_up</i></span>


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
    <script src="../scripts/materialize.js"></script>
    <script>
        $(document).ready(function () {
            $('.modal-trigger').leanModal();
        });
    </script>
    <script>
        $(document).ready(function () {

            $('.ir-arriba').click(function () {
                $('body, html').animate({
                    scrollTop: '0px'
                }, 300);
            });

            $(window).scroll(function () {
                if ($(this).scrollTop() > 0) {
                    $('.ir-arriba').slideDown(300);
                } else {
                    $('.ir-arriba').slideUp(300);
                }
            });

        });
    </script>


</asp:Content>
