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
        
        <style>
    body {
                background-image: url('${pageContext.request.contextPath}/images/wallpaper.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>
</style>
        
    </head>

    <body id="pretogeral">

        <%-- ============================================== --%>
        <%-- MENU LATERAL FIXO --%>
        <%-- ============================================== --%>
        <div class="sidebar">
            <h2>CheckPoint Pizzaria</h2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/cardapio.jsp">Cardápio</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/pedido.jsp">Pedido</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/contato.jsp">Contato</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/sobre.jsp" class="active">Sobre</a></li>
            </ul>
        </div>

        <%-- ============================================== --%>
        <%-- CONTEÚDO PRINCIPAL --%>
        <%-- ============================================== --%>
        <br>
  <br>
    <br>  
    <br>
    <br> 

           <h1>Bem-vindo à Pizzaria Gamer!</h1>
            <p>Sabor e diversão no mesmo lugar</p>
    <p>Prepare-se para uma aventura culinária no mundo dos jogos! Nossa pizzaria é o ponto de encontro perfeito para gamers, com pizzas temáticas inspiradas em jogos clássicos e modernos. Aqui, cada fatia é uma missão cumprida!</p>
    
   Prepare-se para subir de nível no sabor! Na CheckPoint Pizzaria Gamer, cada pizza é uma conquista e cada mordida é um checkpoint alcançado. Criamos um espaço onde o universo dos games se encontra com pizzas artesanais feitas com ingredientes de alta qualidade.

Inspiradas em jogos clássicos e sucessos modernos, nossas pizzas temáticas são verdadeiras experiências épicas. Seja você fã de RPGs, shooters ou aventuras retrô, aqui sempre existe uma pizza perfeita para sua próxima missão.

Além do cardápio exclusivo, oferecemos um ambiente totalmente gamer: telas para gameplay, campeonatos semanais, trilha sonora imersiva e Wi-Fi de alta performance. É o lugar ideal para reunir amigos, jogar, competir e comemorar vitórias.
<br>
<br>
<br>
    <br> 
    <h2>Ambiente Gamer</h2>
    <p>Além das pizzas deliciosas, oferecemos um espaço com telas para jogos, torneios semanais e Wi-Fi gratuito. Venha jogar, comer e competir com amigos!</p>
    
    <p><em>Horário de funcionamento: Todos os dias, das 18h às 2h. Localização: Avenida Rio Branco, 3330</em></p>

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
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
   
    
    <!-- ===== RODAPÉ ===== --> 
    <footer class="bg-dark text-white text-center py-3 mt-5"> 
        <p class="mb-0">&copy; 2025 Pastelaria China - Todos os direitos reservados.</p> 
    </footer> 
</html>
