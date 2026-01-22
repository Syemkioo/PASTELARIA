<%-- 
    Document   : pedido
    Created on : 8 de out. de 2025, 18:11:16
    Author     : 11192
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Finalizar Pedido</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
         
         <style>
            body {
                background-image: url('${pageContext.request.contextPath}/images/wallpaper6.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>
    </head>
    <body class="container mt-5" id="pretogeral"><%-- Aplica classes do Bootstrap para espaçamento e centralização --%>
        
        <div class="sidebar">
            <h2>CheckPoint Pizzaria</h2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/cardapio.jsp">Cardápio</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/pedido.jsp" class="active">Pedido</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/contato.jsp">Contato</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/sobre.jsp">Sobre</a></li>
            </ul>
        </div>
            <br>
            <br>
            <br>
        <h2>Finalizar Pedido</h2>
        
        <%-- Formulário para envio dos dados do pedido --%>
        <form action="${pageContext.request.contextPath}/finalizarPedido" method="post">
            
            <%-- Campo para o nome do cliente (obrigatório) --%>
            <div class="mb-3">
                <label>Nome do Cliente:</label>
                <input type="text" name="nome_cliente" class="form-control" required>
            </div>
            
            <%-- Campo para o telefone do cliente (opcional) --%>
            <div class="mb-3">
                <label>Telefone:</label>
                <input type="text" name="telefone" class="form-control">
            </div>
            
            <%-- Campo para observações adicionais (opcional) --%>
            <div class="mb-3">
                <label>Observações:</label>
                <textarea name="observacoes" class="form-control"></textarea>
            </div>
            
            <%-- Botão para enviar o formulário --%>
            <button type="submit" class="btn btn-success">Confirmar Pedido</button>
            <%-- Link para voltar à página do carrinho --%>
            <a href="carrinho.jsp" class="btn btn-secondary">Voltar ao Carrinho</a>
        </form>    
            
            
    </body>  
    
    <br>
    <br>
    <br>
    <br>
    <br>
    <br><br>
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
