<%@ page import="com.example.crud.dao.AlunoDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.crud.model.Aluno" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title> Cadastrar Alunos </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body class="bg-dark">
    <h1 class="text-center mt-3 text-light"> Lista de Alunos </h1>
    <div class = "container d-flex justify-content-end">
        <a href="cadastrar.jsp" class="btn btn-primary"> Novo Cadastro </a>
    </div>

    <table class="container table table-dark table-hover ">
        <thead>
            <th> Id </th>
            <th> Nome </th>
            <th> Cpf</th>
            <th> Telefone </th>
            <th> Email </th>
            <th> # </th>
            <th> # </th>
        </thead>

        <tbody>
        <%
            AlunoDao dao = new AlunoDao();
            List<Aluno> alunos = dao.findByAlunos();
            for (Aluno aluno : alunos){
        %>
            <tr>
                <td> <%= aluno.getId() %> </td>
                <td> <%= aluno.getNome() %> </td>
                <td> <%= aluno.getCpf() %> </td>
                <td> <%= aluno.getTelefone() %> </td>
                <td> <%= aluno.getEmail()%> </td>
                <td> <a href="atualizar.jsp?id=<%=aluno.getId()%>&nome=<%=aluno.getNome()%>&cpf=<%=aluno.getCpf()%>&telefone=<%=aluno.getTelefone()%>&email=<%=aluno.getEmail()%>"> Edit </a> </td>
                <td> <a href="deletar.jsp"> Delete </a> </td>
            </tr>
        <% } %>
        </tbody>
    </table>
</body>
</html>
