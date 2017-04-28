<%-- 
    Document   : home
    Created on : 26/04/2017, 23:20:44
    Author     : PA01
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home PROJETO 04</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf"%>
        <h3>Cadastro de Clientes</h3>
        <div class="form">
            <fieldset>
                <legend>Novo Cliente</legend>
                <form>
                    Nome: <input type="text" name="nome"/>
                    CPF: <input type="text" name="cpf"/>
                    RG: <input type="text" name="rg"/>
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
                    <th>CPF</th>
                    <th>RG</th>
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
