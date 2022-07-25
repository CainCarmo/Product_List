<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Product__List.index" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head runat="server">
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="https://kit.fontawesome.com/a39dd60c9e.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://igorescobar.github.io/jQuery-Mask-Plugin/js/jquery.mask.min.js"></script>
        <link rel="stylesheet" href="~/CSS/main.css"/>
        <link rel="stylesheet" href="~/CSS/form.css"/>
        <title>Home | ListProduct</title>
    </head>
    <body>
        <form id="form__server" runat="server">
            <%-- Quadro --%>
            <div id="box">
                <header id="box__header">
                    <section id="box__left">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <h1 id="box__logo">
                            <span>Product</span> List
                        </h1>
                    </section>
                    <section id="box__right">
                        <button type="button" id="box__add"><i class="fa-solid fa-plus"></i>Registrar Produto</button>
                        <button type="button" class="box__button edit"><a href="Views/edit.aspx"><i class="fa-solid fa-pencil"></i></a></button>
                        <button type="button" class="box__button delete"><a href="Views/delete.aspx"><i class="fa-solid fa-trash"></i></a></button>
                    </section>
                </header>
                <main id="box__content">
                    <header id="content__header">
                        <span class="content__colums content__column-id"><strong>ID</strong></span>
                        <span class="content__colums content__column-name"><strong>Nome</strong></span>
                        <span class="content__colums content__column-description"><strong>Descrição</strong></span>
                        <span class="content__colums content__column-type"><strong>Tipo</strong></span>
                        <span class="content__colums content__column-price"><strong>Preço</strong></span>
                        <span class="content__colums content__column-date"><strong>Data de Inclusão</strong></span>
                    </header>
                    <div id="content__lists" runat="server">

                        <% for (int i = 0; i < lstProducts.Count; i++) { %>
                        
                            <div class="content__list">
                                <span class="content__colums content__column-id"><%=lstProducts[i].ID %></span>
                                <span class="content__colums content__column-name"><%=lstProducts[i].Name %></span>
                                <span class="content__colums content__column-description"><%=lstProducts[i].Description %></span>
                                <span class="content__colums content__column-type"><%=lstProducts[i].Type %></span>
                                <span class="content__colums content__column-price"><%=lstProducts[i].Price.ToString("c") %></span>
                                <span class="content__colums content__column-date"><%=lstProducts[i].RegisDate.ToString("d") %></span>
                            </div>

                        <% } %>

                    </div>
                </main>
                <footer id="box__footer">
                    <h2 id="footer__logo"><span>Product</span> List</h2>
                    <div id="footer__line"></div>
                    <span>Product<strong>List</strong>&copy; 2022 - All Rights Reserved - <cite>by Cainã Carmo</cite></span>
                </footer>
            </div>
            <%-- Form Include --%>
            <div class="form--hidden" id="form__include--hidden">
                <div class="form__product" id="form__product-include">
                    <i class="fa-solid fa-xmark" id="include"></i>
                    <section class="product__left">
                        <img class="product__img" src="https://cdn.discordapp.com/attachments/1000527264766758943/1000982988248588368/animation_form.gif" alt="Form Gif"/>
                    </section>
                    <section class="product__right">
                        <header class="product__header">
                            <h1 class="product__logo">
                                <span>Product</span> List
                            </h1>
                            <span class="product__warn">Inclua seus produtos</span>
                        </header>
                        <main class="product__fields">
                            <div class="form__field product__name-box" id="product__name-include">
                                <div class="form__field--wrapper">
                                    <div class="form__icon--wrapper">
                                        <i class="fa-solid fa-note-sticky"></i>
                                    </div>
                                    <input type="text" id="product__name_include" class="form__input product__name" placeholder="Digite o nome do produto. . ." maxlength="100" required runat="server"/>
                                </div>
                                <div class="underline"></div>
                            </div>
                            <div class="form__field product__price-box" id="product__price-include">
                                <div class="form__field--wrapper">
                                    <div class="form__icon--wrapper">
                                        <i class="fa-solid fa-dollar-sign"></i>
                                    </div>
                                    <input type="text" id="product__price_include" class="form__input product__price" placeholder="Digite o preço do produto. . ." maxlength="10" required runat="server"/>
                                </div>
                                <div class="underline"></div>
                            </div>
                            <div class="form__field product__type-box" id="product__type-include">
                                <div class="form__field--wrapper">
                                    <select name="product__type_include" class="form__input product__type" required>
                                        <option value="" selected disabled>Selecione o Tipo de Produto</option>
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
                            <div class="form__field product__description-box" id="product__description-include">
                                <div class="form__field--wrapper">
                                    <textarea id="product__description_include" class="form__input product__description" placeholder="Digite a Descrição do produto. . ." rows="6" maxlength="255" runat="server"></textarea>
                                </div>
                                <div class="underline"></div>
                                <span class="form__description--limit" id="form__description-include--limit">
                                    <span class="form__description--length" id="form__description-include--length">0</span>/ 255
                                </span>
                            </div>
                        </main>
                        <footer class="product__footer">
                            <asp:Button OnClick="SendProduct" type="submit" class="product__submit" Text="Enviar" runat="server"/>
                            <span class="product__message" id="product__include_message" runat="server"></span>
                        </footer>
                    </section>
                </div>
            </div>
            <script src="JS/events.js"></script>
            <script src="JS/Jquery/script.js"></script>
            <script>
                objDom.btnAddProduct.addEventListener('click', () => {
                    objDom.backgroundForm.classList.add('visible')
                    objDom.formIncludeProduct.classList.add('down')
                })

                objDom.iconTimes.addEventListener('click', () => {
                    objDom.backgroundForm.classList.remove('visible')
                    objDom.formIncludeProduct.classList.remove('down')
                })
            </script>
        </form>
    </body>
</html>