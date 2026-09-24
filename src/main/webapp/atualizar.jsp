<html lang="Pt-br">

<head>
    <title> Atualizar Aluno </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body class="bg-dark mt-3">
<div class="container text-light">
    <h1> Atualizar Aluno </h1>
    <form action="validator_atualizar.jsp" method="post">
        <label for="id" class="form-label"> Id </label>
        <input type="text" id="id" name="id" class="form-control" disabled value="<%= request.getParameter("id") %>">
        <label for="nome" class="form-label"> Nome </label>
        <input type="text" id="nome" name="nome" class="form-control" value="<%= request.getParameter("nome")%>">
        <label for="cpf" class="form-label"> Cpf </label>
        <input type="text" id="cpf" name="cpf" class="form-control" value="<%= request.getParameter("cpf")%>">
        <label for="email" class="form-label"> Email </label>
        <input type="email" id="email" name="email" class="form-control" value="<%= request.getParameter("email")%>">
        <label for="telefone" class="form-label"> Telefone </label>
        <input type="text" id="telefone" name="telefone" class="form-control" value="<%= request.getParameter("telefone")%>">
        <button class="form-control btn btn-primary mt-2"> Cadastrar </button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>