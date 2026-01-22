/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.ItemCarrinho;

@WebServlet("/finalizarPedido")
public class FinalizarPedidoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Recupera o carrinho da sessão
        HttpSession session = request.getSession();
        List<ItemCarrinho> carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");

        if (carrinho == null || carrinho.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/jsp/carrinho.jsp");
            return;
        }

        // Aqui poderia salvar no banco (opcional)
        // PedidoDAO.salvar(carrinho);
        // Mantém o carrinho na sessão para exibir na confirmação
        session.setAttribute("carrinhoConfirmado", carrinho);

        // Redireciona para a página de confirmação
        response.sendRedirect(request.getContextPath() + "/jsp/confirmacao.jsp");
    }
}

