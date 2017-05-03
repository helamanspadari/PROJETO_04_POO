
<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Cliente"%>
<%
    ArrayList<Cliente> listCliente = new ArrayList<>();

    

    try {
        String id       = (String)request.getParameter("id");
        String nome     = (String)request.getParameter("nome");
        String cpf    = (String)request.getParameter("cpf");
        String rg     = (String)request.getParameter("rg");
        String email    = (String)request.getParameter("email");
        String telefone = (String)request.getParameter("telefone");
        String endereco = (String)request.getParameter("endereco");

        listCliente = Cliente.getListCliente();
        for(Cliente c : listCliente){
            if(c.getId().equals(id)){
                c.setId(id);
                c.setNome(nome);
                c.setCpf(cpf);
                c.setRg(rg);
                c.setEmail(email);
                c.setTelefone(telefone);
                c.setEndereco(endereco);
                break;
            }
        }
        
        response.sendRedirect("view.jsp");

    } catch (Exception e) {
        throw new Exception("Falha ao salvar dados, por favor tente novamente");
    }
%>
       