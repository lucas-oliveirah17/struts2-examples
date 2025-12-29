package br.com.struts2.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import br.com.struts2.model.Usuario;

public class UsuarioDAO {

    public void save(Usuario u) throws Exception {
        String sql;
        
        if (u.getId() == null) {
            sql = "INSERT INTO usuarios (nome, usuario, senha, email, cargo) VALUES (?, ?, ?, ?, ?)";
        } else {
            sql = "UPDATE usuarios SET nome=?, usuario=?, senha=?, email=?, cargo=? WHERE id=?";
        }

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, u.getNome());
            ps.setString(2, u.getUsuario());
            ps.setString(3, u.getSenha());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getCargo());
            
            if (u.getId() != null) {
                ps.setInt(6, u.getId());
            }
            
            ps.execute();
        }
    }

    public List<Usuario> findAll() throws Exception {
        List<Usuario> lista = new ArrayList<>();
        String sql = "SELECT * FROM usuarios ORDER BY id";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId(rs.getInt("id"));
                u.setNome(rs.getString("nome"));
                u.setUsuario(rs.getString("usuario"));
                u.setSenha(rs.getString("senha"));
                u.setEmail(rs.getString("email"));
                u.setCargo(rs.getString("cargo"));
                lista.add(u);
            }
        }
        return lista;
    }

    public Usuario findById(Integer id) throws Exception {
        String sql = "SELECT * FROM usuarios WHERE id=?";
        Usuario u = null;
        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    u = new Usuario();
                    u.setId(rs.getInt("id"));
                    u.setNome(rs.getString("nome"));
                    u.setUsuario(rs.getString("usuario"));
                    u.setSenha(rs.getString("senha"));
                    u.setEmail(rs.getString("email"));
                    u.setCargo(rs.getString("cargo"));
                }
            }
        }
        return u;
    }

    public void delete(Integer id) throws Exception {
        String sql = "DELETE FROM usuarios WHERE id=?";
        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.execute();
        }
    }
}