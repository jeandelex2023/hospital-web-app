<%-- 
    Document   : Supprimer_listeRendeVous
    Created on : 9 févr. 2018, 23:02:05
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
       <jsp:useBean  id="gestionRende1" class="gestion.GestionRende_vous" />
        <%
            try {
            String iden = request.getParameter("nbsuppr");
            int nbsuppr= Integer.parseInt(iden);
            if (iden == "") {
                out.print("Suppression impossible");
            } else {
            
                for (int i = 0; i<nbsuppr; i++){
				String code = request.getParameter("code"+i);           
                                gestionRende1.delete(code);
            }
            }
            } catch (Exception e) {
            }
        %>
        <jsp:forward page="Vue_listeRendeVous1.jsp"></jsp:forward>
    </body>
</html>
