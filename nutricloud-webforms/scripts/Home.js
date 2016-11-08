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

function getCargaRapida(event) {
    $.ajax({
        type: "POST",
        url: "Home.aspx/cargaRapida",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var favoritos = response.d;
            setCargaRapida(favoritos, event);
        },
        error: function (msg) {
            debugger;
        }
    });
}

function setCargaRapida(favoritos, event) {

    favoritos.forEach(function (f) {

        var strFav = "<div class='row favorito' data-nombre='" + f.nombre + "' data-id='" + f.id + "' data-kcal='" + f.kcal + "'>" +
        "<div class='col s9'>" +
        "<p>" +
        "<input class='checkBox' type='checkbox' id='c" + f.id + "' />" +
        "<label class='nombre' for='c" + f.id + "'>" + f.nombre + "</label>" +
        "</p>" +
        "</div>" +
        "<div class='input-field col s3'>" +
        "<input class='porcionCR' id='p" + f.id + "' type='text' class='validate'>" +
        "<label for='p" + f.id + "' data-error='wrong' data-success='right'>Porci&oacute;n</label>" +
        "</div>" +
        "</div>";

        var htmlFav = $.parseHTML(strFav)[0];
        $("#alimentos").append(htmlFav);
    });

    var strBoton = "<a href='#' data-tipo-consumo='" + event.target.dataset.tipoComida + "' class='modal-action modal-close waves-effect waves-green btn-flat'>Agregar</a>"
    var htmlBoton = $.parseHTML(strBoton)[0];
    $("#agregarCargaRapida").append(htmlBoton);

    $(htmlBoton).click(function (node) {

        var tipoConsumo = node.target.dataset.tipoConsumo;
        var favoritos = $(".favorito");

        for (var i = 0; i < favoritos.length; i++) {

            var favoritoChekeado = $(favoritos[i]).find(".checkBox")[0].checked;

            if (favoritoChekeado) {

                var nombre = $(favoritos[i]).find(".nombre")[0].textContent;
                var porcion = $(favoritos[i]).find(".porcion")[0].value;

                if (!/^[0-9]{1,5}$/.test(porcion) || parseInt(porcion) == 0) {
                    alert("Vacío o formato incorrecto.");
                    return;
                }

                var kcalAlimento = favoritos[i].dataset.kcal;
                var kcalTotal = (kcalAlimento * porcion) / 100;

                var strF = "<div class='row item-alimento'>" +
                    "<div class='col s8'>" +
                    "<a class='alimento' href='Alimento.aspx?Idalimento=" + "5" + "'>" + nombre + "</a>" +
                    "</div>" +
                    "<div class='col s4'>" +
                    "<span class='calorias'>" + kcalTotal + "kcal</span>" +
                    "</div>" +
                    "<div class='col s12'>" +
                    "<span class='cantidad'>" + porcion + "gr</span>" +
                    "</div>" +
                    "</div>";

                var htmlF = $.parseHTML(strF)[0];
                $("#" + tipoConsumo).append(htmlF);
            };

        }

        var calorias = $("#" + tipoConsumo).find(".calorias");
        var totalCalorias = 0;
        for (var i = 0; i < calorias.length; i++) {
            var cal = parseFloat(calorias[i].textContent);
            totalCalorias = totalCalorias + cal;
        }

        $("#" + tipoConsumo).find(".total_cal")[0].textContent = totalCalorias;
        // elimino el contenido del div que tiene todos los favoritos
        $("#alimentos").empty();
        // y elimino el boton "AGREGAR"
        $("#agregarCargaRapida").empty();
        // cierro el modal
        $('.modal').closeModal();
    });

}

function CargaComidas() {

    var fechaSeleccionada = $("#alternate").val();

    $.ajax({
        type: "POST",
        url: "Home.aspx/getAlimentos",
        data: "{fecha:'" + fechaSeleccionada + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#lista-comidas").html(response.d);
            $('.modal-trigger').leanModal();
            $('.cargaRapida').click(function (event) {
                getCargaRapida(event);
            });
        },
        error: function (msg) {
            debugger;
        }
    });
}

$(document).ready(function () {
    $('.modal-trigger').leanModal();

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

