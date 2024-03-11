<%-- 
    Document   : Supprimer_listeMedecin
    Created on : 13 févr. 2018, 12:26:33
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
       <jsp:useBean  id="gestionMdc" class="gestion.GestionMedecin" />
        <%
            try {
            String iden = request.getParameter("nbsuppr");
            int nbsuppr= Integer.parseInt(iden);
            if (iden == "") {
                out.print("Suppression impossible");
            } else {
            
                for (int i = 0; i<nbsuppr; i++){
				String code = request.getParameter("code"+i);           
                                gestionMdc.delete(code);
            }
            }
            } catch (Exception e) {
            }
        %>
        <jsp:forward page="Vue_listeMedecin1.jsp"></jsp:forward>
    </body>
