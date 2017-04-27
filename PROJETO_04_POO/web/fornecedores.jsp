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
        <title>FORNECEDORES</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf"%>
        <h3>Cadastro de Fornecedores</h3>
        <div>
            <fieldset>
                <legend>Novo Fornecedor</legend>
                <form>
                    Nome: <input type="text" name="nome"/>
                    Razão Social: <input type="text" name="cpf"/>
                    CNPJ: <input type="text" name="rg"/>
                    E-mail: <input type="text" name="email"/>
                    Telefone: <input type="text" name="telefone"/>
                    Endereço: <input type="text" name="endereco"/>
                    <input type="submit" name="incluir" value="Incluir"/>
                </form>
            </fieldset>
        </div>
        <div>
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
        </div>
        <%@include file="WEB-INF/footer.jspf"%>
    </body>
</html>
