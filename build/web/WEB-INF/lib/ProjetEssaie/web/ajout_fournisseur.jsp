<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <jsp:useBean id="fourn" class="action.classe.classeFournisseur" />
    <jsp:useBean id="gestfourn" class="gestion.GestionFournisseur" />
    <jsp:setProperty name="fourn" property="*" />
    <% 
        try{
            gestfourn.insert(fourn);
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    
    
    <jsp:forward page="FormMajFourn.jsp" />
    
    <body>
        
    </body>
</html>
