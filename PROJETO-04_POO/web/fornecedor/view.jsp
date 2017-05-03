

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
                    throw new Exception("Falha ao salvar dados, por favor tente novamente");
                }
            %>

            <div id="main" class="container-fluid">
                <div id="top" class="row">
                    <fieldset>       
                        <form name="formFornecedor" id="formFornecedor" method="post" action="new.jsp">
                            <div class="form-group col-md-4">
                                <label for="nome">Nome</label>
                                <input type="text" class="form-control" id="nome" name="nome">
                                <input type="hidden" name="id" id="id">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="email">E-mail</label>
                                <input type="text" placeholder="email@email.com"
                                       pattern="^[a-zA-Z0-9_\.-]{2,}@([A-Za-z0-9_-]{2,}\.)+[A-Za-z]{2,4}$" 
                                       class="form-control" id="email" name="email">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="telefone">Telefone</label>
                                <input type="text" placeholder="XXXX-XXXX" pattern="^\(?\d{4}[-\s]\d{4}$"
                                       class="form-control phone" id="telefone" name="telefone">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="endereco">Endereço</label>
                                <input type="text" class="form-control" id="endereco" name="endereco">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="razao">Razão</label>
                                <input type="text" class="form-control" id="razao" name="razao">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="cnpj">CNPJ</label>
                                <input type="text" placeholder="XX.XXX.XXX.XXXX-ZZ" pattern="[0-9]{14}" class="form-control" id="cnpj" name="cnpj">
                            </div>


                            <br/><br/>
                            <div class="form-group col-md-12">
                                <button type="submit" name="salvar" class="btn btn-primary">Salvar</button>
                                <a href="view.jsp" class="btn btn-default">Cancelar</a>
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
                                    <th>Razão Social</th>
                                    <th>CNPJ</th>
                                    <th>E-mail</th>
                                    <th>Telefone</th>
                                    <th>Endereço</th>
                                    <th class="actions">Ações</th>
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
                                        <a class="btn btn-warning btn-xs" href="javascript:alterar('<%= f.getId() %>', '<%= f.getNome() %>', '<%= f.getRazao() %>', '<%= f.getCnpj() %>', '<%= f.getEmail() %>', '<%= f.getTelefone() %>', '<%= f.getEndereco() %>')">Editar</a>
                                        <a class="btn btn-danger btn-xs"  href="${pageContext.request.contextPath}/fornecedor/delete.jsp?id=<%= f.getId()%>" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                    </td>
                                </tr>

                            </tbody>
                            <%  
                                }
                            }
                            %>
                        </table>

                    </div>
                </div> <!-- /#list -->
            </div>
        </div>

        <%@include file="../WEB-INF/footer.jspf" %>

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"
                integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
                crossorigin="anonymous"></script> 
        <script src="scripts/bootstrap.min.js"></script>
        <script>
            
            function alterar(id, nome, razao, cnpj, email, telefone, endereco){
                $('#id').val(id);
                $('#nome').val(nome);
                $('#razao').val(razao);
                $('#cnpj').val(cnpj);
                $('#email').val(email);
                $('#telefone').val(telefone);
                $('#endereco').val(endereco);
                
                $('#formFornecedor').attr('action', 'edit.jsp');
            }
            
        </script>
    </body>
</html>
