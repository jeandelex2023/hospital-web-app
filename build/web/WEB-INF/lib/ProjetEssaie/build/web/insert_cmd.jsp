
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insertion commande</title>
    </head>
    
    <jsp:useBean id="clcmd" class="action.classe.classeCommande" />
    <jsp:useBean id="gcmd" class="gestion.GestionCommande" />
    <jsp:setProperty name="clcmd" property="*" />
    <% 
        try{
            gcmd.insert(clcmd);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    <jsp:forward page="FormMajCmd.jsp" />
    <body>
    </body>
</html>
