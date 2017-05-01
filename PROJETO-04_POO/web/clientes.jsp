<%-- 
    Document   : home
    Created on : 26/04/2017, 23:20:44
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
        <title>Cadastro de Clientes - POO_04</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf" %>
        <h3>Cadastro de Cliente</h3>
        <div id="main" class="container-fluid">
            <div id="top" class="row">
                <fieldset>
                    <%@include file="WEB-INF/cadastro.jspf" %>
                        <div class="form-group col-md-4">
                            <label for="rg">RG</label>
                            <input type="text" class="form-control" id="nome" name="rg">
                        </div>

                        <div class="form-group col-md-4">
                            <label for="cpf">CPF</label>
                            <input type="text" class="form-control" id="nome" name="cpf">
                        </div>

                       
                        <br/><br/>
                        <div class="form-group col-md-12">
                        <button type="submit" name="incluir" class="btn btn-primary" value="Incluir">Incluir</button>
                        <a href="clientes.jsp.jsp" class="btn btn-default">Cancelar</a>
                        </div>

                        <br/>
                    </form>
                </fieldset>
            </div> <!-- /#top -->

            <hr />

            <div id="list" class="row">

                <div class="table-responsive col-md-12">
                    <table class="table table-striped" cellspacing="0" cellpadding="0">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>RG</th>
                                <th>CPF</th>
                                <th>E-mail</th>
                                <th>Telefone</th>
                                <th>Endereço</th>
                                <th class="actions">Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                           
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="actions">
                                     <a class="btn btn-warning btn-xs" href="#">Editar</a>
                                    <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                </td>
                            </tr>

                        </tbody>

                    </table>

                </div>
            </div> <!-- /#list -->

            <div id="bottom" class="row">
                <%@include file="WEB-INF/footer.jspf" %>
            </div> <!-- /#bottom -->
        </div>  <!-- /#main -->

        <%@include file="WEB-INF/footer.jspf"%>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>