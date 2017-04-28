<%-- 
    Document   : fornecedores
    Created on : 27/04/2017, 00:17:12
    Author     : PA01
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Fornecedore - POO_04</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf"%>
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
        <%@include file="WEB-INF/footer.jspf"%>
    </body>
</html>
