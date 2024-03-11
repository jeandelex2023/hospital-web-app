<%-- 
    Document   : delete_dossier
    Created on : 5 févr. 2018, 06:26:35
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
       <jsp:useBean  id="gestionDossier" class="gestion.GestionDossier" />
        <%
            try {
            String iden = request.getParameter("nbsuppr");
            int nbsuppr= Integer.parseInt(iden);
            if (iden == "") {
                out.print("Suppression impossible");
            } else {
            
                for (int i = 0; i<nbsuppr; i++){
				String code = request.getParameter("code"+i);           
                                gestionDossier.delete(code);
            }
            }
            } catch (Exception e) {
            }
        %>
        <jsp:forward page="FormMajDossier.jsp"></jsp:forward>
    </body>
</html>
