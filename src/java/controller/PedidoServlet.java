/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.PedidoDao;
import model.Pedido;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PedidoServlet")
public class PedidoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String produto = request.getParameter("produto");
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));
        String observacoes = request.getParameter("observacoes");

        Pedido pedido = new Pedido();
        pedido.setNomeCliente(nome);
        pedido.setTelefone(telefone);
        pedido.setProduto(produto);
        pedido.setQuantidade(quantidade);
        pedido.setObservacoes(observacoes);

        PedidoDao dao = new PedidoDao();
        dao.salvar(pedido);

        response.sendRedirect("jsp/pedido.jsp?status=sucesso");
    }
}
