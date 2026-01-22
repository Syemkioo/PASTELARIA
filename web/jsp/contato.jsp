<%-- 
    Document   : contato
    Created on : 9 de out. de 2025, 20:07:31
    Author     : 11192
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bem-vindo à Pastelaria China 🎌</title>

        <!-- Bootstrap CSS (opcional) -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Seu CSS atualizado com modificações para menu retrátil -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

        <!-- CSS de acessibilidade -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/acessibilidade.css">

        <style>
            body {
                background-image: url('${pageContext.request.contextPath}/images/wallpaper3.jpeg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>
    </head>

    <body>
        <div id="wrapper" class="d-flex">


            <!-- Sidebar retrátil -->
            <nav id="sidebar" class="sidebar">
                <h2>Pastelaria China</h2>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/jsp/cardapio.jsp">Cardápio</a></li>
                    <li><a href="${pageContext.request.contextPath}/jsp/pedido.jsp">Pedido</a></li>
                    <li><a href="${pageContext.request.contextPath}/jsp/contato.jsp" class="active">Contato</a></li>
                    <li><a href="${pageContext.request.contextPath}/jsp/sobre.jsp">Sobre</a></li>
                </ul>
            </nav>
            <div class="content">
                <h1>Entre em contato</h1>
                <p> Tem alguma duvida, sugestão ou reclamação? Envie a sua mensagem!</p>

                <form action="#" method="post">
                    <label> Nome: </label> <br><!-- inserção do nome -->
                    <input type="text" name="nome"><br> <br>

                    <label> Email: </label> <br><!-- inserção do email -->
                    <input type="email" name="email"><br> <br>

                    <label> Mensagem: </label> <br><!-- inserção do mensagem -->
                    <textarea name="mensagem" rows="4" cols="40"></textarea><br> <br><!-- 4 linhas e 40 colunas -->

                    <button type="submit">Enviar</button>
                </form>

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
   
</html>
