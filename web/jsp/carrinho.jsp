<%-- 
    Document   : carrinho
    Created on : 31 de out. de 2025, 17:08:02
    Author     : 11192
--%>

<%@page import="java.util.List"%> 
<%@page import="model.ItemCarrinho"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Carrinho de Compras</title>

    <!-- Importa o framework CSS Bootstrap para estilizar a página -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
     <style>
            body {
                background-image: url('${pageContext.request.contextPath}/images/wallpaper2.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>
</head>

<body class="container mt-5" id="pretogeral">
    
    <%
    // Se o botão "esvaziar" for acionado
    if (request.getParameter("esvaziar") != null) {
        session.removeAttribute("carrinho");
    }
%>

    <!-- Título principal da página -->
    <h2>Carrinho de Compras</h2>
    <hr>

    <%
        // Recupera da sessão a lista de itens do carrinho (se existir)
        List<ItemCarrinho> carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");

        // Verifica se o carrinho está vazio ou nulo
        if (carrinho == null || carrinho.isEmpty()) {
    %>
        <!-- Caso o carrinho esteja vazio, exibe uma mensagem e um botão de retorno -->
        <p>Seu carrinho está vazio.</p>
        <a href="cardapio.jsp" class="btn btn-primary">Voltar ao Cardápio</a>

    <%
        } else {
            // Inicializa variável para somar o total geral do carrinho
            double total = 0;
    %>

        <!-- Tabela para exibir os itens do carrinho -->
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Produto</th>       <!-- Nome do produto -->
                    <th>Quantidade</th>    <!-- Quantidade selecionada -->
                    <th>Preço</th>         <!-- Preço unitário -->
                    <th>Total</th>         <!-- Subtotal (preço x quantidade) -->
                </tr>
            </thead>

            <tbody>
            <%
                // Percorre todos os itens do carrinho
                for (ItemCarrinho item : carrinho) {
                    // Calcula o subtotal de cada produto (preço * quantidade)
                    double subtotal = item.getProduto().getPreco() * item.getQuantidade();

                    // Soma o subtotal ao total geral
                    total += subtotal;
            %>
                <!-- Exibe uma linha da tabela para cada item -->
                <tr>
                    <td><%= item.getProduto().getNome() %></td> <!-- Nome do produto -->
                    <td><%= item.getQuantidade() %></td>        <!-- Quantidade -->
                    <td>R$ <%= item.getProduto().getPreco() %></td> <!-- Preço unitário -->
                    <td>R$ <%= subtotal %></td>                 <!-- Subtotal -->
                </tr>
            <% } %>
            </tbody>
        </table>

        <!-- Exibe o total geral do carrinho -->
        <h4>Total: R$ <%= total %></h4>

        <!-- Botões de ação -->
        <a href="pedido.jsp" class="btn btn-success">Finalizar Pedido</a> <!-- Leva à tela de finalização -->
        <a href="cardapio.jsp" class="btn btn-secondary">Continuar Comprando</a> <!-- Retorna ao cardápio -->

        <form method="post" style="display:inline;">
    <button type="submit" name="esvaziar" class="btn btn-danger">
        Esvaziar Carrinho
    </button>
</form>
        
        
    <%
        } // Fim do bloco else
    %>

</body>
</html>

