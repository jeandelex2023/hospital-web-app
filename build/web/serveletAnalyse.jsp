<%-- 
    Document   : serveletAnalyse
    Created on : 15 févr. 2018, 12:40:20
    Author     : Delex
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    </head>
    <jsp:useBean id="classeA" class="action.classe.ClasseAnalyse" />
    <jsp:useBean id="gestionA" class="gestion.GestionAnalyse" />
    <jsp:setProperty name="classeA" property="*" />
    <% 
        try{
            gestionA.insert(classeA);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="CreationAnalyse.jsp" />
    <body>
  
    </body>
</html>

