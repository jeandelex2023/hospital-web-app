<%-- 
    Document   : Supprimer_listeConsultation
    Created on : 9 févr. 2018, 11:51:43
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
       <jsp:useBean  id="gestionConsultation" class="gestion.GestionConsultation" />
        <%
            try {
            String iden = request.getParameter("nbsuppr");
            int nbsuppr= Integer.parseInt(iden);
            if (iden == "") {
                out.print("Suppression impossible");
            } else {
            
                for (int i = 0; i<nbsuppr; i++){
				String code = request.getParameter("code"+i);           
                                gestionConsultation.delete(code);
            }
            }
            } catch (Exception e) {
            }
        %>
        <jsp:forward page="Vue_listeConsultation1.jsp"></jsp:forward>
    </body>
</html>

