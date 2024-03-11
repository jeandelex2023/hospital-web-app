<%-- 
    Document   : serveletConsultation
    Created on : 8 févr. 2018, 22:11:35
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    </head>
    <jsp:useBean id="classeDossier" class="action.classe.ClasseConsultation" />
    <jsp:useBean id="gestionDossier" class="gestion.GestionConsultation" />
    <jsp:setProperty name="classeDossier" property="*" />
    <% 
        try{
            gestionDossier.insert(classeDossier);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="CreationConsultation.jsp" />
    <body>
  
    </body>
</html>
