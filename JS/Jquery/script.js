// Máscara do Input Preço do Produto

$(document).ready(function () {
    console.log("E")
    $(".product__price").mask('000.000.000.000.000,00', { reverse: true });
});