<html lang="Pt-br">

<head>
    <title> Cadastro de Aluno </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1> Cadastro de Alunos </h1>
        <form action="validator_cadastro.jsp" method="post">
            <label for="nome" class="form-label"> Nome </label>
            <input type="text" id="nome" name="nome" class="form-control">
            <label for="cpf" class="form-label"> Cpf </label>
            <input type="text" id="cpf" name="cpf" class="form-control">
            <label for="email" class="form-label"> Email </label>
            <input type="email" id="email" name="email" class="form-control">
            <label for="telefone" class="form-label"> Telefone </label>
            <input type="text" id="telefone" name="telefone" class="form-control">
            <button class="form-control btn btn-primary mt-2"> Cadastrar </button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>