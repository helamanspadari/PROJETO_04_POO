

<%@page import="java.util.UUID"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cadastros.Cliente"%>
<%
    try {
        String id = request.getParameter("id");
        
        Cliente.remove(id);
        
        response.sendRedirect("view.jsp");

    } catch (Exception e) {
        throw new Exception("Falha ao excluir cliente, por favor tente novamente");
        
    }
%>

       