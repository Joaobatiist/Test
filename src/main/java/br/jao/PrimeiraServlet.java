package br.jao;

import DAO.UsuarioDAO;
import Entidade.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name= "/Primeiro", urlPatterns = {"/", "/login"})
public class PrimeiraServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getServletPath();

        switch (path) {
            case "/Primeiro/":
                cadastroUsuario(request, response);
                break;
            case "/Primeiro/login":
                loginUsuario (request,response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
        }

    }

    private void loginUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email-login");
        String senha = request.getParameter("senha-login");


        Usuario u = new Usuario();
        u.setEmail(email);
        u.setSenha(senha);

        UsuarioDAO dao = new UsuarioDAO();
        boolean logado = dao.verifica(u);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        if (logado) {
            response.getWriter().write("Cadastro realizado com sucesso!");
        }else{
            response.getWriter().write("Erro ao tentar fazer login");
        }

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

    }
  private void cadastroUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

      String cpf = request.getParameter("cpf");
      String email = request.getParameter("email");
      String nome = request.getParameter("nome");
      String senha = request.getParameter("senha");
      String telefone = request.getParameter("telefone");



      // Criar um objeto Armazena
      Usuario usuario = new Usuario();
      usuario.setCpf(cpf);
      usuario.setEmail(email);
      usuario.setNome(nome);
      usuario.setSenha(senha);
      usuario.setTelefone(telefone);

      // Inserir os dados no banco de dados
      UsuarioDAO usuarioDAO = new UsuarioDAO();
      usuarioDAO.cadastroUsuario(usuario); // "cadastro" é o nome da tabela onde você deseja inserir os dados

      // Responder ao frontend
      response.setContentType("application/json");
      response.setCharacterEncoding("UTF-8");
      response.getWriter().write("Cadastro realizado com sucesso!");
  }
}
