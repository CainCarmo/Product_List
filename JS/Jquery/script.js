// Máscara do Input Preço do Produto

$(document).ready(function () {
    objDom.inputPrice.forEach((element, index) => {
        $(element[index]).mask('000.000.000.000.000,00', { reverse: true });
    })
});