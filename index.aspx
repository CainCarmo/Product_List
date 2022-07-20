<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Product_List.index" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head runat="server">
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="https://kit.fontawesome.com/a39dd60c9e.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="~/CSS/main.css"/>
        <link rel="stylesheet" href="~/CSS/form.css"/>
        <title>Home | ListProduct</title>
    </head>
    <body>
        <form id="form__server" runat="server">
            <div class="form--hidden" id="form__product--hidden">
                <div id="form__product">
                    <i class="fa-solid fa-xmark" id="product__times"></i>
                    <section id="product__left">
                        <img id="product__img" src="Assets/Img/animation_form.gif" alt="">
                    </section>
                    <section id="product__right">
                        <header id="product__header">
                            <h1 id="product__logo">
                                <span>Product</span> List
                            </h1>
                        </header>
                        <main id="product__fields">
                            <div class="form__field" id="product__name-box">
                                <div class="form__field--wrapper">
                                    <div class="form__icon--wrapper">
                                        <i class="fa-solid fa-note-sticky"></i>
                                    </div>
                                    <input type="text" name="product-name" class="form__input" id="product__name" placeholder="Digite o Nome do Produto. . ." maxlength="10" required>
                                </div>
                                <div class="underline"></div>
                            </div>
                            <div class="form__field" id="product__price-box">
                                <div class="form__field--wrapper">
                                    <div class="form__icon--wrapper">
                                        <i class="fa-solid fa-dollar-sign"></i>
                                    </div>
                                    <input type="text" name="product-price" class="form__input" id="product__price" placeholder="Digite o Nome do Produto. . ." maxlength="10" required>
                                </div>
                                <div class="underline"></div>
                            </div>
                            <div class="form__field" id="product__type-box">
                                <div class="form__field--wrapper">
                                    <select name="product-type" class="form__input" id="product__type" required>
                                        <option value="0" selected disabled>Escolha o Tipo do Produto</option>
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
                            <div class="form__field" id="product__description-box">
                                <div class="form__field--wrapper">
                                    <textarea name="product-description" class="form__input" id="product__description" placeholder="Digite a descrição do Produto. . ." rows="8" required></textarea>
                                </div>
                                <div class="underline"></div>
                            </div>
                        </main>
                        <footer id="product__footer">
                            <asp:Button OnClick="Product__submit_Click" type="submit" id="product__submit" Text="Enviar" runat="server" />
                        </footer>
                    </section>
                </div>
            </div>
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
                    </section>
                </header>
                <main id="box__content">
                    <header id="content__header">
                            <span class="content__colums" id="content__column-id"><strong>ID</strong></span>
                            <span class="content__colums" id="content__column-name"><strong>Nome</strong></span>
                            <span class="content__colums" id="content__column-description"><strong>Descrição</strong></span>
                            <span class="content__colums" id="content__column-type"><strong>Tipo</strong></span>
                            <span class="content__colums" id="content__column-price"><strong>Preço</strong></span>
                            <span class="content__colums" id="content__column-actions"><strong>Ações</strong></span>
                    </header>
                    <div id="content__lists">

                        <%
                            for (int i = 0; i < lstProducts.Count; i++)
                            {
                                Response.Write("<div class='content__list'>");
                                Response.Write("<span class='content__fields content__id'>" + lstProducts[i].ID + "</span>");
                                Response.Write("<span class='content__fields content__name'>" + lstProducts[i].Name + "</span>");
                                Response.Write("<span class='content__fields content__description'>" + lstProducts[i].Description + "</span>");
                                Response.Write("<span class='content__fields content__type'>" + lstProducts[i].Type + "</span>");
                                Response.Write("<span class='content__fields content__price'>" + lstProducts[i].Price.ToString("c") + "</span>");
                                Response.Write("<div  class='content__fields content__actions'><i class='fa-solid fa-pencil edit'></i><i class='fa-solid fa-trash'></i></div>");
                                Response.Write("</div>");
                            }
                        %>

                    </div>
                </main>
                <footer id="box__footer">
                    <h2 id="footer__logo">Product List</h2>
                    <div id="footer__line"></div>
                    <span>Product<strong>List</strong>&copy; 2022 - All Rights Reserved - <cite>by Cainã Carmo</cite></span>
                </footer>
            </div>
        </form>
        <script src="JS/events.js"></script>
    </body>
</html>