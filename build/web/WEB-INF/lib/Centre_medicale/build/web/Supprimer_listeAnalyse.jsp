<%-- 
    Document   : Supprimer_listeAnalyse
    Created on : 16 févr. 2018, 12:06:58
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:useBean  id="gestionAnal" class="gestion.GestionAnalyse" />
        <%
            try {
            String iden = request.getParameter("nbsuppr");
            int nbsuppr= Integer.parseInt(iden);
            if (iden == "") {
                out.print("Suppression impossible");
            } else {
            
                for (int i = 0; i<nbsuppr; i++){
				String code = request.getParameter("code"+i);           
                                gestionAnal.delete(code);
            }
            }
            } catch (Exception e) {
            }
        %>
        <jsp:forward page="Vue_listeAnalyse1.jsp"></jsp:forward>
    </body>
</html>
