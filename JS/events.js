const objDom = {
    backgroundPage: document.querySelector('#form__server'),
    backgroundForm: document.querySelector('.form--hidden'),

    formIncludeProduct: document.querySelector('#form__product-include'),

    btnAddProduct: document.querySelector('#box__add'),
    btnShowMessageEdit: document.querySelector('#product__button_edit'),
    btnShowMessageRemove: document.querySelector('#product__submit-remove'),

    iconTimes: document.querySelector('.fa-xmark'),

    inputPrice: document.querySelector('.prouct__price'),

    txtareaProductDescription: document.querySelector('.product__description'),

    spanDescriptionLimit: document.querySelector('.form__description--limit'),
    spanDescriptionLength: document.querySelector('.form__description--length'),

    btnExitMessage: document.querySelector('#frame__exit-edit'),

    divMessage: document.querySelector('#frame')
}

objDom.txtareaProductDescription.addEventListener('input', () => {
    objDom.spanDescriptionLength.innerHTML = objDom.txtareaProductDescription.value.length

    if (objDom.txtareaProductDescription.value.length >= 220)
        objDom.spanDescriptionLimit.classList.add('warn')
    else
        objDom.spanDescriptionLimit.classList.remove('warn')
})