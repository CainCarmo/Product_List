<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Product__List.Views.delete" %>

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
            <div id="frame_remove">
                <header id="frame__header">
                    <h3 id="frame__title"><span>Syber</span> List</h3>
                </header>
                <main id="frame__main-remove">
                    <span id="frame__description">Digite o ID do Produto</span>
                    <div class="form__field product__id-box" id="product__id-edit">
                            <div class="form__field--wrapper">
                                <div class="form__icon--wrapper">
                                    <i class="fas fa-barcode"></i>
                                </div>
                                <input type="number" id="product__id_remove" class="form__input product__id" placeholder="Digite o ID do produto. . ." runat="server" required="required"/>
                            </div>
                            <div class="underline"></div>
                        </div>
                </main>
                <footer id="frame__footer">
                    <button type="button" class="frame__button" id="product__submit-remove" >Enviar</button>
                </footer>
            </div>
            <div class="form--hidden" id="frame--hidden">
                <div id="frame">
                    <header id="frame__header">
                        <h3 id="frame__title">Confirmação</h3>
                    </header>
                    <main id="frame__main">
                        <span id="frame__warn">Deseja realmente apagar este produto?</span>
                    </main>
                    <footer id="frame__footer">
                        <asp:Button OnClick="RemoveProduct" class="frame__button" ID="frame__confirmation" Text="Confirmar" runat="server" />
                        <button class="frame__button frame__exit">Voltar</button>
                    </footer>
                </div>
            </div>
            <script src="../JS/events.js"></script>
            <script src="../JS/Jquery/script.js"></script>
            <script>
                objDom.btnShowMessageRemove.addEventListener('click', () => {
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
