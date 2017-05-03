

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Cliente"%>
<%
    ArrayList<Cliente> listCliente = new ArrayList<>();

    String id = UUID.randomUUID().toString();

    try {
        String nome = request.getParameter("nome");
        String rg = request.getParameter("rg");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");

        Cliente c = new Cliente(id, nome, cpf, rg, email, telefone, endereco);
                

        Cliente.setListCliente(c);
        
        response.sendRedirect("view.jsp");

    } catch (Exception e) {
        throw new Exception("Falha ao salvar dados, por favor tente novamente");
    }
%>

       