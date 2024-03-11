

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ajout consommation</title>
    </head>
    <jsp:useBean id="cons" class="action.classe.classeConsommation" />
    <jsp:useBean id="gestcons" class="gestion.GestionConsommation" />
    <jsp:setProperty name="cons" property="*" />
    <% 
        try{
            gestcons.insert(cons);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="FormMajConsom.jsp" />
    <body>
        
    </body>
</html>
