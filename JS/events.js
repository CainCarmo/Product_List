const objDom = {
    formServer: document.querySelector('#form__server'),
    btnAddProduct: document.querySelector('#box__add'),
    backgroundFormAdd: document.querySelector('#form__product--hidden'),
    formAdd: document.querySelector('#form__product'),
    formTimes: document.querySelector('#product__times'),
    formSubmit: document.querySelector('#product__submit'),
    editIcon: document.querySelectorAll('.fa-pencil.edit')
}

/* --- Events --- */

objDom.editIcon.forEach((element, index) => {
    objDom.editIcon[index].addEventListener('click', () => {
        objDom.backgroundFormAdd.classList.add('visible')
        objDom.formAdd.classList.add('down')
    })
})

// -> Click

objDom.btnAddProduct.addEventListener('click', () => {
    objDom.backgroundFormAdd.classList.add('visible')
    objDom.formAdd.classList.add('down')
})

objDom.formTimes.addEventListener('click', () => {
    objDom.backgroundFormAdd.classList.remove('visible')
    objDom.formAdd.classList.remove('down')
})