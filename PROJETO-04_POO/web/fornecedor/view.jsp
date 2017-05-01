

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Fornecedor"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Fornecedores - POO_04</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
    </head>
   
    <body>
        <%@include file="../WEB-INF/header.jspf" %>
        <div class="container">
        <h3>Cadastro de Fornecedor</h3>
        <%
            
            ArrayList<Fornecedor> listFornecedor = new ArrayList<>();

            try {               
                listFornecedor = Fornecedor.getListFornecedor();
            } catch (Exception e) {
//                throw new Exception("Falha ao salvar dados, por favor tente novamente");
            }
        %>

        <div id="main" class="container-fluid">
            <div id="top" class="row">
                <fieldset>       
                    <form name="formFornecedor" id="formFornecedor" method="post" action="new.jsp">
                        <div class="form-group col-md-4">
                            <label for="nome">Nome</label>
                            <input type="text" class="form-control" id="nome" name="nome">
                        </div>

                        <div class="form-group col-md-4">
                            <label for="email">E-mail</label>
                            <input type="text" class="form-control" id="nome" name="email">
                        </div>

                        <div class="form-group col-md-4">
                            <label for="telefone">Telefone</label>
                            <input type="text" class="form-control phone" id="nome" name="telefone">
                        </div>

                        <div class="form-group col-md-4">
                            <label for="endereco">Endere�o</label>
                            <input type="text" class="form-control" id="nome" name="endereco">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="razao">Raz�o</label>
                            <input type="text" class="form-control" id="nome" name="razao">
                        </div>

                        <div class="form-group col-md-4">
                            <label for="cnpj">CNPJ</label>
                            <input type="text" class="form-control" id="nome" name="cnpj">
                        </div>

                       
                        <br/><br/>
                        <div class="form-group col-md-12">
                        <button type="submit" name="incluir" class="btn btn-primary" value="Incluir">Incluir</button>
                        <a href="fornecedores.jsp" class="btn btn-default">Cancelar</a>
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
                                <th>Raz�o Social</th>
                                <th>CNPJ</th>
                                <th>E-mail</th>
                                <th>Telefone</th>
                                <th>Endere�o</th>
                                <th class="actions">A��es</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        if (listFornecedor != null) {
                            for (Fornecedor f : listFornecedor) {
                               
                            %>
                            <tr>
                                <td><%= f.getNome()%></td>
                                <td><%= f.getRazao()%></td>
                                <td><%= f.getCnpj()%></td>
                                <td><%= f.getEmail()%></td>
                                <td><%= f.getTelefone()%></td>
                                <td><%= f.getEndereco()%></td>
                                <td class="actions">
                                    <a class="btn btn-warning btn-xs" href="#">Editar</a>
                                    <a class="btn btn-danger btn-xs"  href="${pageContext.request.contextPath}/fornecedor/delete.jsp?id=<%= f.getId() %>" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                </td>
                            </tr>

                        </tbody>
                        <%  }
                        }
                        %>
                    </table>

                </div>
            </div> <!-- /#list -->
</div>
            <div id="bottom" class="row">
                <%@include file="../WEB-INF/footer.jspf" %>
            </div> <!-- /#bottom -->
        </div>  <!-- /#main -->



        <script src="scripts/jquery-3.2.1.min.js"></script>
        <script src="scripts/bootstrap.min.js"></script>
    </body>
</html>