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
        <title>Home - POO_04</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf" %>

        <div class="jumbotron">
            <div class="container text-center">
                <h1>Sistema de Cadastro</h1>      
                <p>Site criado para Cadastrar Clientes e Fornecedores, e armazenar em memória</p>
            </div>
        </div>

        <div class="container-fluid bg-3 text-center">    
            <h3>Grupo 05</h3><br>
            <div class="row">
                <div class="container">
                    <div class="col-sm-3">
                        <h3>Felipe Oliveira</h3>
                        <img src="img/felipePoo.png" class="img-responsive" style="width:100%; border-radius: 40px;" alt="Thiago Morais">
                        <h4>Cadastro de Clientes</h4>
                    </div>
                    <div class="col-sm-3">
                        <h3>Helaman Spadari</h3>
                        <img src="img/helamanPoo.png" class="img-responsive" style="width:100%; border-radius: 40px;" alt="Thiago Morais">
                        <h4>Criação de Classes</h4>
                    </div>
                    <div class="col-sm-3">
                        <h3>Tiago Farias</h3>
                        <img src="img/tiagoPoo.png" class="img-responsive" style="width:100%; border-radius: 40px;" alt="Thiago Morais">
                        <h4>Cadastro de Fornecedores</h4>
                    </div>
                    <div class="col-sm-3">
                        <h3>Thiago Morais</h3>
                        <img src="img/thiagoPoo.jpg" class="img-responsive" style="width:100%; border-radius: 40px;" alt="Thiago Morais">
                        <h4>Home e Layout</h4>
                    </div>

                </div>
            </div>
        </div><br>

        <div class="container-fluid bg-3 text-center">    

        </div>



        <%@include file="WEB-INF/footer.jspf"%>
        <script src="scripts/jquery-3.2.1.min.js"></script>
        <script src="scripts/bootstrap.min.js"></script>
    </body>
</html>
