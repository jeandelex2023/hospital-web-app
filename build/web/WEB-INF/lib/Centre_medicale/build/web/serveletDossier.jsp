<%-- 
    Document   : serveletDossier
    Created on : 3 févr. 2018, 08:33:44
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    </head>
    <jsp:useBean id="classeDossier" class="action.classe.ClasseDossier" />
    <jsp:useBean id="gestionDossier" class="gestion.GestionDossier" />
    <jsp:setProperty name="classeDossier" property="*" />
    <% 
        try{
            gestionDossier.insert(classeDossier);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="CreationDossier.jsp" />
    <body>
        
    </body>
</html>
