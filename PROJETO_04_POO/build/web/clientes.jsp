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
        <div>
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
        <%@include file="WEB-INF/footer.jspf"%>
    </body>
</html>
