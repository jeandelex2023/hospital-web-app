<%-- 
    Document   : ajoutPersonne
    Created on : 1 févr. 2018, 13:41:44
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <jsp:useBean id="fourn" class="actionclasses.classePersonne" />
    <jsp:useBean id="gestfourn" class="actiongestion.gestionPersonne" />
    <jsp:setProperty name="fourn" property="*"/>
    <% 
        try{
            gestfourn.insert(fourn);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>

    
    <body>
        
    </body>
</html>
