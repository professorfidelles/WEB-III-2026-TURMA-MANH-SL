<%@ page import="com.example.crud.model.Aluno" %>
<%@ page import="com.example.crud.dao.AlunoDao" %>

<%
int id = Integer.parseInt(request.getParameter("id"));

String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String email = request.getParameter("email");
String telefone = request.getParameter("telefone");

if (!nome.trim().isEmpty() && !cpf.trim().isEmpty() && !email.trim().isEmpty() && !telefone.trim().isEmpty()){
    try {
        Aluno aluno = new Aluno(id , nome , cpf, email, telefone);
        AlunoDao dao = new AlunoDao();
        dao.atualizar(aluno);
        response.sendRedirect("index.jsp");
    }catch (Exception e){
        throw new RuntimeException(e);
    }
}
%>