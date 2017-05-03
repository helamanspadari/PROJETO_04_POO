

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Cliente"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Clientes - POO_04</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
    </head>

    <body>
        <%@include file="../WEB-INF/header.jspf" %>
        <div class="container">
            <h3>Cadastro de Cliente</h3>
            <%

                ArrayList<Cliente> listCliente = new ArrayList<>();

                try {
                    listCliente = Cliente.getListCliente();
                } catch (Exception e) {
                    throw new Exception("Falha ao salvar dados, por favor tente novamente");
                }
            %>

            <div id="main" class="container-fluid">
                <div id="top" class="row">
                    <fieldset>       
                        <form name="formCliente" id="formCliente" method="post" action="new.jsp">
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
                                <label for="rg">RG</label>
                                <input type="text" placeholder="XXXXXXXXX" pattern="[0-9]{9}" class="form-control" id="rg" name="rg">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="cpf">CPF</label>
                                <input type="text" placeholder="XXXXXXXXXXX" pattern="[0-9]{11}" class="form-control" id="cpf" name="cpf">
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
                                    <th>Cpf</th>
                                    <th>Rg</th>
                                    <th>E-mail</th>
                                    <th>Telefone</th>
                                    <th>Endereço</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                if (listCliente != null) {
                                    for (Cliente f : listCliente) {

                                %>
                                <tr>
                                    <td><%= f.getNome()%></td>
                                    <td><%= f.getCpf()%></td>
                                    <td><%= f.getRg()%></td>
                                    <td><%= f.getEmail()%></td>
                                    <td><%= f.getTelefone()%></td>
                                    <td><%= f.getEndereco()%></td>
                                    <td class="actions">
                                        <a class="btn btn-warning btn-xs" href="javascript:alterar('<%= f.getId() %>', '<%= f.getNome() %>', '<%= f.getCpf() %>', '<%= f.getRg() %>', '<%= f.getEmail() %>', '<%= f.getTelefone() %>', '<%= f.getEndereco() %>')">Editar</a>
                                        <a class="btn btn-danger btn-xs"  href="${pageContext.request.contextPath}/cliente/delete.jsp?id=<%= f.getId()%>" data-toggle="modal" data-target="#delete-modal">Excluir</a>
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
            
            function alterar(id, nome, cpf, rg, email, telefone, endereco){
                $('#id').val(id);
                $('#nome').val(nome);
                $('#cpf').val(cpf);
                $('#rg').val(rg);
                $('#email').val(email);
                $('#telefone').val(telefone);
                $('#endereco').val(endereco);
                
                $('#formCliente').attr('action', 'edit.jsp');
            }
            
        </script>
    </body>
</html>
