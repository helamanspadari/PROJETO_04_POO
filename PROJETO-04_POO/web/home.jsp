<%-- 
    Document   : home
    Created on : 27/04/2017, 00:16:58
    Author     : PA01
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="main.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - POO_04</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf" %>
        <div id="mid">
            <h2>Grupo 05 - Trabalho de POO</h2>
            <hr>		
            <h2>Objetivo</h2>
            <p>Site criado para Cadastrar Clientes e Fornecedores, e armazenar em memória</p>
            <hr>
            <ul>
                <h2>Integrantes do Grupo</h2>
                <li>Felipe Oliveira</li>
                <li>Helaman Spadari</li>
                <li>Tiago Farias</li>
                <li>Thiago Morais</li>
            </ul>
        </div>
        <%@include file="WEB-INF/footer.jspf"%>
        <script src="scripts/jquery-3.2.1.min.js"></script>
        <script src="scripts/bootstrap.min.js"></script>
    </body>
</html>