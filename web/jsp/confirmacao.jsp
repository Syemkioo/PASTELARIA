<%-- 
    Document   : confirmacao
    Created on : 31 de out. de 2025, 21:32:15
    Author     : 11192
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, model.ItemCarrinho" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Confirmação do Pedido</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="text-center mb-4">
        <h1 class="text-success"><i class="bi bi-check-circle-fill"></i> Pedido Finalizado com Sucesso!</h1>
        <p class="fs-5">Confira abaixo os detalhes do seu pedido:</p>
    </div>

    <%
        List<ItemCarrinho> carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");
        double total = 0.0;
    %>

    <div class="card shadow-lg">
        <div class="card-body">
            <table class="table table-striped align-middle">
                <thead class="table-success">
                    <tr>
                        <th>Produto</th>
                        <th class="text-center">Quantidade</th>
                        <th class="text-center">Preço Unitário</th>
                        <th class="text-center">Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        if (carrinho != null && !carrinho.isEmpty()) {
                            for (ItemCarrinho item : carrinho) {
                                double subtotal = item.getProduto().getPreco() * item.getQuantidade();
                                total += subtotal;
                    %>
                    <tr>
                        <td><%= item.getProduto().getNome() %></td>
                        <td class="text-center"><%= item.getQuantidade() %></td>
                        <td class="text-center">R$ <%= String.format("%.2f", item.getProduto().getPreco()) %></td>
                        <td class="text-center">R$ <%= String.format("%.2f", subtotal) %></td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="4" class="text-center text-muted">Nenhum item no pedido.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
                <tfoot>
                    <tr class="table-light">
                        <th colspan="3" class="text-end">Total:</th>
                        <th class="text-center text-success fs-5">R$ <%= String.format("%.2f", total) %></th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>

    <div class="text-center mt-4">
        <p class="fs-5 text-muted">Seu pedido foi registrado e estará pronto em breve. 🍴</p>
        <a href="${pageContext.request.contextPath}/jsp/cardapio.jsp" class="btn btn-primary mt-2">
            <i class="bi bi-arrow-left"></i> Voltar ao Cardápio
        </a>
    </div>
</div>
</body>
</html>

