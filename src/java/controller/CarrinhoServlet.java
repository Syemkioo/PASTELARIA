/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;
/**
 *
 * @author 11192
 */
@WebServlet("/carrinho")

public class CarrinhoServlet extends HttpServlet {
    
  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sessao = request.getSession();
        List<ItemCarrinho> carrinho = (List<ItemCarrinho>) sessao.getAttribute("carrinho");

        if (carrinho == null) {
            carrinho = new ArrayList<>();
            sessao.setAttribute("carrinho", carrinho);
        }

        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        double preco = Double.parseDouble(request.getParameter("preco"));
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));

        Produto produto = new Produto(id, nome, preco, null);

        boolean existe = false;
        for (ItemCarrinho item : carrinho) {
            if (item.getProduto().getId() == id) {
                item.setQuantidade(item.getQuantidade() + quantidade);
                existe = true;
                break;
            }
        }

        if (!existe) {
            carrinho.add(new ItemCarrinho(produto, quantidade));
        }

        // Redireciona de volta para o cardápio
        response.sendRedirect("jsp/carrinho.jsp");
    }
}

