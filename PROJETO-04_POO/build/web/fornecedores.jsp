

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Fornecedores - POO_04</title>
    </head>
    <body>
        

<link rel="stylesheet" type="text/css" href="css/main.css">
<div id="header">
    <nav>
        <h1>POO - 04</h1>
	<ul>
            <li><a href="home.jsp" class="btn">Home</a></li>
            <li><a href="clientes.jsp" class="btn">Clientes</a></li>
            <li><a href="fornecedores.jsp" class="btn">Fornecedores</a></li>
	</ul>
    </nav>
</div>

        <h3>Cadastro de Fornecedores</h3>
        <div class="form">
            <fieldset>
                <legend>Novo Fornecedor</legend>
                <form>
                    Nome: <input type="text" name="nome"/>
                    <br/>
                    Razão Social: <input type="text" name="cpf"/>
                    <br/>
                    CNPJ: <input type="text" name="rg"/>
                    <br/>
                    E-mail: <input type="text" name="email"/>
                    <br/>
                    Telefone: <input type="text" name="telefone"/>
                    <br/>
                    Endereço: <input type="text" name="endereco"/>
                    <br/><br/>
                    <input type="submit" name="incluir" value="Incluir"/>
                    <br/>
                </form>
            </fieldset>
        </div>
        <div class="tabelas">
            <center>
                <table border="1">
                    <tr>
                        <th>Índice</th>
                        <th>Nome</th>
                        <th>Razão Social</th>
                        <th>CNPJ</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                    </tr>
                    <!-- for(int i=0; i<.getContatos().size(); i++){%>
                     c = Database.getContatos().get(i);-->


                </table>
            </center>
        </div>
        

<link rel="stylesheet" type="text/css" href="css/main.css">
<div id="footer">
    <h2>PROJETO - 04</h2>
</div>
    </body>
</html>