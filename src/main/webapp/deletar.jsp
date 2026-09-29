<%@ page import="com.example.crud.dao.AlunoDao" %>
<%
try {
        int id = Integer.parseInt(request.getParameter("id"));
        AlunoDao dao = new AlunoDao();
        dao.deletar(id);
        response.sendRedirect("index.jsp");
    }catch (Exception e){
        throw new RuntimeException(e);
    }

%>