<%-- 
    Document   : serveletMedecin
    Created on : 13 févr. 2018, 10:19:47
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    </head>
    <jsp:useBean id="classeM" class="action.classe.ClasseMedecin" />
    <jsp:useBean id="gestionM" class="gestion.GestionMedecin" />
    <jsp:setProperty name="classeM" property="*" />
    <% 
        try{
            gestionM.insert(classeM);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="CreationMedecin.jsp" />
    <body>
  
    </body>
</html>
