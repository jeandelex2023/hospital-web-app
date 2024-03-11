<%-- 
    Document   : serveletPatient
    Created on : 12 févr. 2018, 10:13:40
    Author     : Delex
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    </head>
    <jsp:useBean id="classePs" class="action.classe.ClassePatient" />
    <jsp:useBean id="gestionPatients" class="gestion.GestionPatient" />
    <jsp:setProperty name="classePs" property="*" />
    <% 
        try{
            gestionPatients.insert(classePs);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="CreationPatient.jsp" />
    <body>
  
    </body>
</html>
