<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Product__List.Views.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="https://kit.fontawesome.com/a39dd60c9e.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://igorescobar.github.io/jQuery-Mask-Plugin/js/jquery.mask.min.js"></script>
        <link rel="stylesheet" href="~/CSS/main.css"/>
        <link rel="stylesheet" href="~/CSS/form.css"/>
        <link rel="stylesheet" href="~/CSS/frame.css"/>
        <title>Home | ListProduct</title>
    </head>
    <body>
        <form id="form__server" runat="server">
            <a href="https://localhost:44339/index.aspx" id="return">
                <i class="fa-solid fa-arrow-left"></i>
            </a>
            <div class="form__product" id="form__product-edit">
                <section class="product__left">
                    <img class="product__img" src="https://cdn.discordapp.com/attachments/1000527264766758943/1000982988248588368/animation_form.gif" alt="Form Gif"/>
                </section>
                <section class="product__right">
                    <header class="product__header">
                        <h1 class="product__logo">
                            <span>Product</span> List
                        </h1>
                        <span class="product__warn">Edite seus produtos</span>
                    </header>
                    <main class="product__fields" id="product__fields-edit">
                        <div class="form__field product__id-box" id="product__id-edit">
                            <div class="form__field--wrapper">
                                <div class="form__icon--wrapper">
                                    <i class="fas fa-barcode"></i>
                                </div>
                                <input type="number" id="product__id_edit" class="form__input product__id" placeholder="Digite o ID do produto. . ." runat="server" required="required"/>
                            </div>
                            <div class="underline"></div>
                        </div>
                        <div class="form__field product__name-box" id="product__name-edit">
                            <div class="form__field--wrapper">
                                <div class="form__icon--wrapper">
                                    <i class="fa-solid fa-note-sticky"></i>
                                </div>
                                <input type="text" id="product__name_edit" class="form__input product__name" placeholder="Digite o nome do produto. . ." maxlength="100"  runat="server"/>
                            </div>
                            <div class="underline"></div>
                        </div>
                        <div class="form__field product__price-box" id="product__price-edit">
                            <div class="form__field--wrapper">
                                <div class="form__icon--wrapper">
                                    <i class="fa-solid fa-dollar-sign"></i>
                                </div>
                                <input type="text" id="product__price_edit" class="form__input product__price" placeholder="Digite o preço do produto. . ." maxlength="10"  runat="server"/>
                            </div>
                            <div class="underline"></div>
                        </div>
                        <div class="form__field product__type-box" id="product__type-edit">
                            <div class="form__field--wrapper">
                                <select name="product__type_edit" class="form__input product__type" >
                                    <option value="" selected disabled runat="server">Escolha o Tipo de Produto</option>
                                    <option value="1">Alimentício</option>
                                    <option value="2">Bebida</option>
                                    <option value="3">Limpeza</option>
                                    <option value="4">Saúde</option>
                                    <option value="5">Higiene</option>
                                    <option value="6">Automotivo</option>
                                    <option value="7">Ferramenta</option>
                                    <option value="8">Eletrônico</option>
                                    <option value="9">Eletrodoméstico</option>
                                    <option value="10">Construção</option>
                                    <option value="11">Móveis</option>
                                    <option value="12">Decoração</option>
                                    <option value="13">Utensílio</option>
                                    <option value="14">Vestuário</option>
                                    <option value="15">Acessórios</option>
                                    <option value="16">Beleza</option>
                                    <option value="17">Papelaria</option>
                                </select>
                            </div>
                            <div class="underline"></div>
                        </div>
                        <div class="form__field product__description-box" id="product__description-edit">
                            <div class="form__field--wrapper">
                                <textarea id="product__description_edit" class="form__input product__description" placeholder="Digite a Descrição do produto. . ." rows="6" maxlength="255" runat="server"></textarea>
                            </div>
                            <div class="underline"></div>
                            <span class="form__description--limit" id="form__description-edit--limit">
                                <span class="form__description--length" id="form__description-edit--length">0</span>/ 255
                            </span>
                        </div>
                    </main>
                    <footer class="product__footer">
                        <button type="button" class="product__submit" id="product__button_edit">Registrar</button>
                    </footer>
                </section>
            </div>
            <div class="form--hidden" id="frame__edit--hidden">
                <div id="frame">
                    <header id="frame__header">
                        <h3 id="frame__title">Confirmação</h3>
                    </header>
                    <main id="frame__main">
                        <span id="frame__warn">Deseja realmente editar este produto?</span>
                    </main>
                    <footer id="frame__footer">
                        <asp:Button OnClick="EditProduct" class="frame__button" ID="frame__confirmation" Text="Confirmar" runat="server" />
                        <button class="frame__button frame__exit" id="frame__exit-edit">Voltar</button>
                    </footer>
                </div>
            </div>
            <script src="../JS/events.js"></script>
            <script src="../JS/Jquery/script.js"></script>
            <script>
                objDom.btnShowMessageEdit.addEventListener('click', () => {
                    objDom.backgroundForm.classList.add('visible')
                    objDom.divMessage.classList.add('expand')
                })
                objDom.btnExitMessage.addEventListener('click', e => {
                    objDom.backgroundForm.classList.remove('visible')
                    objDom.divMessage.classList.remove('expand')
                    e.preventDefault()
                })
            </script>
        </form>
    </body>
</html>
