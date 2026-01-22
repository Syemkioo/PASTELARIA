<%-- 
    Document   : cadastro
    Created on : 13 de out. de 2025, 21:10:17
    Author     : 11192
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html lang="pt-br"> 
    <head> 
        <meta charset="UTF-8"> 
        <title>Login - Pastelaria China 🎌</title> 

        <!-- Bootstrap --> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> 

        <!-- Ícones Bootstrap --> 

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet"> 

        <!-- CSS personalizado --> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> 

        <!-- CSS de acessibilidade -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/acessibilidade.css">
        
        <style>
            body {
                background-image: url('${pageContext.request.contextPath}/images/wallpaper5.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>

    </head> 

    <body > 
        <!-- ===== MENU SUPERIOR ===== --> 
        <nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top shadow-sm"> 
            <div class="container-fluid px-4"> 
                <a class="navbar-brand fw-bold text-white" href="${pageContext.request.contextPath}/index.jsp"> 
                    Pizzaria Checkpoint 
                </a> 

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"> 
                    <span class="navbar-toggler-icon"></span> 
                </button> 

                <div class="collapse navbar-collapse" id="navbarNav"> 
                    <ul class="navbar-nav ms-auto"> 
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Início</a></li> 
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/jsp/contato.jsp">Contato</a></li> 
                    </ul> 
                </div> 
            </div> 
        </nav> 

        <!-- ===== CONTEÚDO LOGIN ===== --> 

        <section class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;"> 

            <div class="card shadow-lg border-0 p-4" style="max-width: 450px; width: 100%; margin-top: 80px;"> 
                <h2 class="text-center text-danger fw-bold mb-3">Entrar</h2> 
                <p class="text-center text-muted mb-4">Faça cadastro para acessar seu perfil e acompanhar seus pedidos.</p> 

                <%-- Formulário de cadastro --%>
                <form action="${pageContext.request.contextPath}/CadastrarUsuarioServlet" method="post" class="form-cadastro">

                    <%-- Campo nome completo --%>
                    <label for="nome">Nome completo:</label>
                    <input type="text" id="nome" name="nome" placeholder="Digite seu nome completo" required>

                    <%-- Campo e-mail --%>
                    <label for="email">E-mail:</label>
                    <input type="email" id="email" name="email" placeholder="exemplo@email.com" required>

                    <%-- Campo telefone --%>
                    <label for="telefone">Telefone:</label>
                    <input type="text" id="telefone" name="telefone" placeholder="(00) 00000-0000" required>

                    <%-- Campo senha --%>
                    <label for="senha">Senha:</label>
                    <input type="password" id="senha" name="senha" placeholder="Crie uma senha" required>

                    <%-- Campo confirmação de senha --%>
                    <label for="confirmarSenha">Confirmar senha:</label>
                    <input type="password" id="confirmarSenha" name="confirmarSenha" placeholder="Repita sua senha" required>

                    <%-- Botão de envio do formulário --%>
                    <button type="submit" class="btn-enviar">
                        <i class="bi bi-check-circle-fill"></i> Cadastrar
                    </button>

                    <%-- Link para login, caso já tenha conta --%>
                    <p class="link-login">
                        Já tem uma conta? <a href="${pageContext.request.contextPath}/jsp/login.jsp">Faça login aqui</a>.
                    </p>

                    <a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-outline-secondary"> 
                        <i class="bi bi-arrow-left-circle"></i> Cancelar / Voltar 
                    </a>
                </form>
        </section> 

        <!-- ===== RODAPÉ ===== --> 
        <footer class="bg-dark text-white text-center py-3 mt-5"> 
            <p class="mb-0">&copy; 2025 Pastelaria China - Todos os direitos reservados.</p> 
        </footer> 


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