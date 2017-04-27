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
        <h2>POO - 04</h2>
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
    </body>
</html>
