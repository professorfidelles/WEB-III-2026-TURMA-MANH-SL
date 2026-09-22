<%@ page import="com.example.crud.model.Aluno" %>
<%@ page import="com.example.crud.dao.AlunoDao" %><%
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String email = request.getParameter("email");
    String telefone = request.getParameter("telefone");

    if(nome != null && !nome.trim().isEmpty() && cpf != null && !cpf.trim().isEmpty() && email != null && !email.trim().isEmpty() && telefone != null && !telefone.trim().isEmpty()){
        try{
            Aluno aluno = new Aluno();
            aluno.setNome(nome);
            aluno.setCpf(cpf);
            aluno.setEmail(email);
            aluno.setTelefone(telefone);
            AlunoDao dao = new AlunoDao();
            dao.inserir(aluno);
            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }else {
        out.print("Erro ao cadastrar aluno");
    }

%>