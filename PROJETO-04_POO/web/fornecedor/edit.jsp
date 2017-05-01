

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Fornecedor"%>
<%
    ArrayList<Fornecedor> listFornecedor = new ArrayList<>();

    String id = UUID.randomUUID().toString();

    try {
        String nome = request.getParameter("nome");
        String razao = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");

        Fornecedor f = new Fornecedor(id, nome, razao, cnpj, email, telefone, endereco);

        Fornecedor.setListFornecedor(f);

        listFornecedor = Fornecedor.getListFornecedor();
        
        response.sendRedirect("view.jsp");

    } catch (Exception e) {
        throw new Exception("Falha ao salvar dados, por favor tente novamente");
    }
%>

       