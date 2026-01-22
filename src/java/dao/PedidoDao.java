/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Pedido;
import util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PedidoDao {

    public void salvar(Pedido pedido) {
        String sql = "INSERT INTO pedidos (nome_cliente, telefone, produto, quantidade, observacoes, data_pedido) VALUES (?, ?, ?, ?, ?, NOW())";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, pedido.getNomeCliente());
            stmt.setString(2, pedido.getTelefone());
            stmt.setString(3, pedido.getProduto());
            stmt.setInt(4, pedido.getQuantidade());
            stmt.setString(5, pedido.getObservacoes());

            stmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Erro ao salvar pedido: " + e.getMessage(), e);
        }
    }
}
