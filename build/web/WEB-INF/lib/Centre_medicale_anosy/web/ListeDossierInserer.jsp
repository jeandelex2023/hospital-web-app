<%-- 
    Document   : ListeDossierInserer
    Created on : 31 janv. 2018, 06:57:49
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insertion dossier médicale</title>
    </head>
    
    <jsp:useBean id="classeDossier" class="serveletClasses.Dossiermedicale" />
    <jsp:useBean id="gestionDossier" class="serveletGestions.G_dossiermedicale" />
    <jsp:setProperty name="classeDossier" property="*" />
    <% 
        try{
            gestionDossier.insert(classeDossier);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="Mise_jour_dossier.jsp" />
    <body>
    </body>
</html>
