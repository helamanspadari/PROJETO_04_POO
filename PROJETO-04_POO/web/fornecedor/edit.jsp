

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Fornecedor"%>
<%
    ArrayList<Fornecedor> listFornecedor = new ArrayList<>();

    

    try {
        String id       = (String)request.getParameter("id");
        String nome     = (String)request.getParameter("nome");
        String razao    = (String)request.getParameter("razao");
        String cnpj     = (String)request.getParameter("cnpj");
        String email    = (String)request.getParameter("email");
        String telefone = (String)request.getParameter("telefone");
        String endereco = (String)request.getParameter("endereco");

        listFornecedor = Fornecedor.getListFornecedor();
        for(Fornecedor f : listFornecedor){
            if(f.getId().equals(id)){
                f.setId(id);
                f.setNome(nome);
                f.setRazao(razao);
                f.setCnpj(cnpj);
                f.setEmail(email);
                f.setTelefone(telefone);
                f.setEndereco(endereco);
                break;
            }
        }
        
        response.sendRedirect("view.jsp");

    } catch (Exception e) {
        throw new Exception("Falha ao salvar dados, por favor tente novamente");
    }
%>

       