
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html lang="pt-br"> 
    <head> 
        <meta charset="UTF-8"> 
        <title>Cardápio - Pastelaria China</title> 

        <%-- Importação do CSS do projeto --%> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> 
        <!-- CSS de acessibilidade -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/acessibilidade.css">

        <%-- Bootstrap e ícones para layout responsivo e moderno --%> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> 

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet"> 
        
        <style>
            body {
                background-image: url('${pageContext.request.contextPath}/images/wallpaper7.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>
    </head> 

    <body id="pretogeral"> 
        <%-- ============================================== --%> 
        <%-- SEÇÃO: MENU LATERAL FIXO                       --%> 
        <%-- ============================================== --%> 
        <div class="sidebar"> 
            <h2>Pizzaria CheckPoint</h2> 
            <ul> 
                <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li> 
                <li><a href="${pageContext.request.contextPath}/jsp/cardapio.jsp" class="active">Cardápio</a></li> 
                <li><a href="${pageContext.request.contextPath}/jsp/pedido.jsp">Pedido</a></li> 
                <li><a href="${pageContext.request.contextPath}/jsp/contato.jsp">Contato</a></li> 
                <li><a href="${pageContext.request.contextPath}/jsp/sobre.jsp">Sobre</a></li> 
            </ul> 
        </div> 
        <%-- ============================================== --%> 
        <%-- SEÇÃO: CONTEÚDO PRINCIPAL DO CARDÁPIO          --%> 
        <%-- ============================================== --%> 
        <div class="content"> 
            <h1>Nosso Cardápio</h1> 
            <p>Confira nossas deliciosas opções divididas por categorias:</p> 

            <%-- ============================================== --%> 
            <%-- CATEGORIA: PASTÉIS SALGADOS                   --%> 
            <%-- ============================================== --%> 
            <h2 class="category-title" id="rojo">🥟 Pizzas Salgadas</h2> 
    <div class="card-container"> 
        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/barbecue.jpg" alt="Pizza de Barbecue">
                <h3>Pizza de Barbecue</h3>
                <p>Mussarela derretida, frango suculento e molho barbecue defumado, criando um sabor intenso e irresistível em cada fatia.</p>
                <span class="price">R$45,00</span>
                <input type="hidden" name="id" value="1">
                <input type="hidden" name="nome" value="Pizza de Barbecue">
                <input type="hidden" name="preco" value="45.00">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div> 

        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/pizza_calabresa.png" alt="Pizza de Calabresa"> 
                <h3>Pizza de Calabresa</h3> 
                <p>Calabresa fatiada, cebola e mussarela derretida, unidas em um clássico saboroso que nunca sai de moda.</p> 
                <span class="price">R$ 37,20</span> 
                <input type="hidden" name="id" value="2">
                <input type="hidden" name="nome" value="Pizza de Calabresa">
                <input type="hidden" name="preco" value="37.20">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>

        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/pizza_bacon.png" alt="Pizza de Bacon"> 
                <h3>Pizza de Bacon</h3> 
                <p>Generosas fatias de bacon dourado sobre mussarela cremosa, trazendo um sabor marcante e cheio de personalidade.</p> 
                <span class="price">R$ 42,50</span> 
                <input type="hidden" name="id" value="3">
                <input type="hidden" name="nome" value="Pizza de Bacon">
                <input type="hidden" name="preco" value="42.50">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>

        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/pizza_4queijos.png" alt="Pizza de Quatro Queijos"> 
                <h3>Pizza de Quatro Queijos</h3> 
                <p>Uma combinação cremosa de queijos selecionados, com sabor intenso e textura irresistível em cada fatia.</p> 
                <span class="price">R$39,90</span> 
                <input type="hidden" name="id" value="4">
                <input type="hidden" name="nome" value="Pizza de Quatro Queijos">
                <input type="hidden" name="preco" value="39.90">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>
    </div> 
               
                <br>
               

    <%-- ============================================== --%> 
    <%-- CATEGORIA: PASTÉIS DOCES                      --%> 
    <%-- ============================================== --%> 
    <h2 class="category-title" id="rojo">🍫 Pizzas Doces</h2> 
    <div class="card-container"> 
        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/pizza_cookie.jpg" alt="Pizza de Cookie"> 
                <h3>Pizza de Cookie</h3> 
                <p>Massa dourada coberta com pedaços de cookie crocante e recheio doce, perfeita para fechar a refeição com muito sabor.</p> 
                <span class="price">R$45,50</span>
                <input type="hidden" name="id" value="5">
                <input type="hidden" name="nome" value="Pizza de Cookie">
                <input type="hidden" name="preco" value="45.50">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div> 

        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/pizza_oreo.jpg" alt="Pizza de Oreo"> 
                <h3>Pizza de Oreo</h3> 
                <p>Coberta com creme doce e pedaços generosos de Oreo, trazendo o equilíbrio perfeito entre crocância e cremosidade</p> 
                <span class="price">R$ 35,50</span>
                <input type="hidden" name="id" value="6">
                <input type="hidden" name="nome" value="Pizza de Oreo">
                <input type="hidden" name="preco" value="35.50">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>

        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/pizza_nutellabanana.png" alt="Pizza de Nutella com Banana"> 
                <h3>Pizza de Nutella com Banana</h3> 
                <p>Massa macia coberta com Nutella cremosa e fatias de banana fresca, criando uma combinação doce e irresistível.</p> 
                <span class="price">R$ 41,30</span>
                <input type="hidden" name="id" value="7">
                <input type="hidden" name="nome" value="Pizza de Nutella com Banana">
                <input type="hidden" name="preco" value="41.30">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>
                 <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/pizza_doceleite.png " alt="Pizza de Doce de leite"> 
                <h3>Pizza de Doce de Leite</h3> 
                <p>Massa suave coberta com doce de leite cremoso, oferecendo um sabor doce e irresistivelmente aconchegante em cada fatia.</p> 
                <span class="price">R$ 45,20</span>
                <input type="hidden" name="id" value="7">
                <input type="hidden" name="nome" value="Pizza de Doce de Leite">
                <input type="hidden" name="preco" value="45.20">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>
    </div>

                <br>
    <%-- ============================================== --%> 
    <%-- CATEGORIA: BEBIDAS                            --%> 
    <%-- ============================================== --%> 
    <h2 class="category-title" id="rojo">🥤 Bebidas</h2> 
    <div class="card-container"> 
        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/refrigerantes.jpg" alt="Refrigerante"> 
                <h3>Refrigerante Lata</h3> 
                <p>Escolha entre Coca-Cola, Fanta, Guaraná ou Sprite.</p> 
                <span class="price">R$ 5,00</span>
                <input type="hidden" name="id" value="8">
                <input type="hidden" name="nome" value="Refrigerante Lata">
                <input type="hidden" name="preco" value="5.00">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>

        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/sucos.webp" alt="Suco Natural"> 
                <h3>Suco Natural</h3> 
                <p>Sabores variados: Laranja, Maracujá, Abacaxi ou Limão.</p> 
                <span class="price">R$ 6,00</span>
                <input type="hidden" name="id" value="9">
                <input type="hidden" name="nome" value="Suco Natural">
                <input type="hidden" name="preco" value="6.00">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>

        <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/agua_gas.webp" alt="Água Mineral"> 
                <h3>Água Com Gás</h3> 
                <p>Água sem gás ou com gás, 500ml.</p> 
                <span class="price">R$ 3,50</span>
                <input type="hidden" name="id" value="10">
                <input type="hidden" name="nome" value="Água Mineral">
                <input type="hidden" name="preco" value="3.50">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>
                 <div class="card">
            <form action="${pageContext.request.contextPath}/carrinho" method="post">
                <img src="${pageContext.request.contextPath}/images/agua_min.webp" alt="Água Mineral"> 
                <h3>Água Mineral</h3> 
                <p>Água sem gás ou com gás, 500ml.</p> 
                <span class="price">R$ 3,50</span>
                <input type="hidden" name="id" value="10">
                <input type="hidden" name="nome" value="Água Mineral">
                <input type="hidden" name="preco" value="3.50">
                <label>Quantidade:</label>
                <input type="number" name="quantidade" value="1" min="1" style="width:60px;">
                <button type="submit" class="btn btn-success mt-2">
                    <i class="bi bi-cart-plus"></i> Adicionar
                </button>
            </form>
        </div>
    </div>
</div> <%-- Fim do conteúdo principal --%> 
        <%-- ============================================== --%>
        <%-- BOTÃO DE CONTRASTE E VLibras --%>
        <%-- ============================================== --%>
        <button class="contrast-toggle" title="Ativar/Desativar alto contraste">
            <i class="bi bi-eye"></i>
        </button>

        <div vw class="enabled">
            <div vw-access-button class="active"></div>
            <div vw-plugin-wrapper>
                <div class="vw-plugin-top-wrapper"></div>
            </div>
        </div>

        <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
        <script>
            new window.VLibras.Widget('https://vlibras.gov.br/app');

            // Alternar contraste
            const contrastButton = document.querySelector('.contrast-toggle');
            contrastButton.addEventListener('click', () => {
                document.body.classList.toggle('high-contrast');
            });
        </script>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    <!-- ===== RODAPÉ ===== --> 
    <footer class="bg-dark text-white text-center py-3 mt-5"> 
        <p class="mb-0">&copy; 2025 Pizzaria CheckPoint - Todos os direitos reservados.</p> 
    </footer> 
</html>



