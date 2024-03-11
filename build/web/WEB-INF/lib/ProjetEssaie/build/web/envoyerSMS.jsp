<%-- 
    Document   : envoyerSMS
    Created on : 28 août 2017, 19:40:30
    Author     : HP-Ularion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.ResultSet"%>
<jsp:useBean id="gmes" class="gestion.GestionMessage"/>
<%
    String destinataire=request.getParameter("receiver");
    String message=request.getParameter("msg");
    gmes.envoyer(destinataire, message);
%>
<jsp:forward page="ozekiTesteUnitaire.jsp"/>