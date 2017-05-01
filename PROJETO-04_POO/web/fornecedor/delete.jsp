

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Fornecedor"%>
<%
    try {
        String id = request.getParameter("id");
        
        Fornecedor.remove(id);
        
        response.sendRedirect("view.jsp");

    } catch (Exception e) {
        throw new Exception("Falha ao excluir fornecedor, por favor tente novamente");
    }
%>

       