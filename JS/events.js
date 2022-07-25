const objDom = {
    backgroundPage: document.querySelector('#form__server'),
    backgroundIncludeForm: document.querySelector('#form--hidden'),
    backgroundEditFrame: document.querySelector('#frame--hidden'),

    formIncludeProduct: document.querySelector('#form__product-include'),
    formEditProduct: document.querySelector('#form__product-edit'),
    //formRemoveProduct: document.querySelector('#form__product--remove'),

    btnAddProduct: document.querySelector('#box__add'),
    btnShowMessageEdit: document.querySelector('#product__button_edit'),
    btnShowMessageRemove: document.querySelector('#product__button_remove'),
    //btnSubmitRemove: document.querySelector('#product__button__remove'),
    btnExitFrameEdit: document.querySelector('#frame__exit-edit'),

    iconTimes: document.querySelector('.fa-xmark#include'),

    txtareaProductDescription: document.querySelector('.product__description'),

    inputPrice: document.querySelector('.product__price'),

    spanDescriptionLimit: document.querySelector('.form__description--limit'),
    spanDescriptionLength: document.querySelector('.form__description--length'),

    divMessageEdit: document.querySelector('#frame'),
    divMessageRemove: document.querySelector('#frame')
}

//objDom.btnShowMessageEdit.addEventListener('click', () => {
//    objDom.backgroundEditFrame.classList.add('visible')
//    objDom.divMessageEdit.classList.add('expand')
//})

objDom.btnShowMessageRemove.addEventListener('click', () => {
    objDom.backgroundEditFrame.classList.add('visible')
    objDom.divMessageRemove.classList.add('expand')
})

//objDom.btnExitFrameEdit.addEventListener('click', () => {
//    objDom.backgroundEditFrame.classList.remove('visible')
//    objDom.divMessageEdit.classList.remove('expand')
//})

// -> Input

//objDom.txtareaProductDescription.forEach((element, index) => {
//    element.addEventListener('input', () => {
//        objDom.spanDescriptionLength[index].innerHTML = element.value.length;

//        if (element.value.length >= 220)
//            objDom.spanDescriptionLimit[index].classList.add('warn')
//        else
//            objDom.spanDescriptionLimit[index].classList.remove('warn')
//    })
//})