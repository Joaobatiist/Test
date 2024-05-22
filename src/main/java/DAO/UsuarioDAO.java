package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BancoDeDados.Conexao;
import Entidade.Usuario;

public class UsuarioDAO {

    public boolean verifica(Usuario usuario) {
        PreparedStatement Ps = null;

        try {
            String sql = "SELECT * FROM Usuario where  Email =? and Senha =?";
            Ps = Conexao.getConnection().prepareStatement(sql);
            Ps.setString(1, usuario.getEmail());
            Ps.setString(2, usuario.getSenha());

            ResultSet rs = Ps.executeQuery();
            if (rs.isBeforeFirst() ) {
              return true;
            }

                Ps.close();

            } catch(SQLException a){
                a.printStackTrace();
            }
           return false;
        }

    public void cadastroUsuario(Usuario usuario) {


        PreparedStatement ps = null;





        try {
            String sql = "INSERT INTO Usuario (Cpf, Email, Nome, Senha, Telefone) VALUES (?, ?, ?, ?, ?)";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, usuario.getCpf());
            ps.setString(2, usuario.getEmail());
            ps.setString(3, usuario.getNome());
            ps.setString(4, usuario.getSenha());
            ps.setString(5, usuario.getTelefone());

            ps.execute();
            ps.close();


        } catch (SQLException e) {
           e.printStackTrace();

    }


}
}
