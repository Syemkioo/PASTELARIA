<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Bem-vindo - Pastelaria China</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- CSS principal -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

        <!-- CSS de acessibilidade -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/acessibilidade.css">

        <!-- Ícones -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Estilo para wallpaper -->
        <style>
            body {
                background-image: url('${pageContext.request.contextPath}/images/wallpaper.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>
        
        
    </head>

    <body id="pretogeral">

        <%-- ============================================== --%>
        <%-- MENU LATERAL FIXO --%>
        <%-- ============================================== --%>
        <div class="sidebar">
            <h2>CheckPoint Pizzaria</h2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/index.jsp" class="active">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/cardapio.jsp">Cardápio</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/pedido.jsp">Pedido</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/contato.jsp">Contato</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/sobre.jsp">Sobre</a></li>
            </ul>
        </div>

        <%-- ============================================== --%>
        <%-- CONTEÚDO PRINCIPAL --%>
        <%-- ============================================== --%>
        <div class="content">
            <div class="header-top">
                <h1>Seja Bem Vindo a melhor pizzaria da cidade!</h1>
                <a href="${pageContext.request.contextPath}/jsp/login.jsp" class="btn-login-top">
                    <i class="bi bi-person-circle"></i> Login
                </a>
            </div>

            <p>Sabor e diversão no mesmo lugar</p>

            <!-- CARROSSEL COM IMAGENS PADRONIZADAS -->
            <div id="carouselPastelaria" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner pastelaria-carousel">
                    <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath}/images/playstation.png" class="d-block w-100" alt="Jogos">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/uau.png" class="d-block w-100" alt="Pastel de carne">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/images/pizzaderretendo.png" class="d-block w-100" alt="Pastel doce">
                    </div>
                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#carouselPastelaria" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselPastelaria" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>

            <p style="margin-top: 25px;">Experimente nossos sabores e descubra por que somos tradição!</p>
        </div>
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
        <p class="mb-0">&copy; 2025 Pastelaria China - Todos os direitos reservados.</p> 
    </footer> 
</html>