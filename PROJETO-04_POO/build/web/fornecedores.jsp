

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Fornecedor"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Fornecedores - POO_04</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
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
        <%
            ArrayList<Fornecedor> listFornecedor;
            
            String id = UUID.randomUUID().toString();
            
            try {
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                
                Fornecedor f = new Fornecedor(id, nome, razao, cnpj, email, telefone, endereco);
                
                listFornecedor = new ArrayList<>();
                
                listFornecedor.add(f);
                
            } catch (Exception e) {
                throw new Exception("Falha ao salvar dados, por favor tente novamente");
            }
        %>

        <h3>Cadastro de Fornecedores</h3>
        <div class="form">
            <fieldset>
                <legend>Novo Fornecedor</legend>
                <form name="formFornecedor" id="formFornecedor" method="post">
                    Nome: <input type="text" name="nome"/>
                    <br/>
                    Razão Social: <input type="text" name="razao"/>
                    <br/>
                    CNPJ: <input type="text" name="cnpj"/>
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
                        <th>Nome</th>
                        <th>Razão Social</th>
                        <th>CNPJ</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                        <th>Excluir</th>
                    </tr>
                    <%  
                    for(Fornecedor f : listFornecedor){
                        if(f.getNome() != null && f.getNome() != ""){
                    %>
                    <tr>
                        <td><%= f.getNome() %></td>
                        <td><%= f.getRazao() %></td>
                        <td><%= f.getCnpj() %></td>
                        <td><%= f.getEmail() %></td>
                        <td><%= f.getTelefone() %></td>
                        <td><%= f.getEndereco() %></td>
                        <td><a class="btn" type="button" href="excluirFornecedor.jsp?id=<%= f.getId() %>">Excluir</a></td>
                    </tr>
                    <% } 
                    }
                    %>
                </table>
            </center>
        </div>
        <div id="footer">
            <h2>PROJETO - 04</h2>
        </div>
    </body>
</html>