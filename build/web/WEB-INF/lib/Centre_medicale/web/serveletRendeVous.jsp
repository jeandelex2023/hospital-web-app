<%-- 
    Document   : serveletRendeVous
    Created on : 9 févr. 2018, 22:25:47
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="classeDossier" class="action.classe.ClasseRende_vous" />
    <jsp:useBean id="gestionDossier" class="gestion.GestionRende_vous" />
    <jsp:setProperty name="classeDossier" property="*" />
    <% 
        try{
            gestionDossier.insert(classeDossier);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="CreationRendeVous.jsp" />
    <body>
    </body>
</html>
