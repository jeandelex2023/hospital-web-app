<%-- 
    Document   : Update_rendeVous
    Created on : 9 févr. 2018, 23:16:11
    Author     : Delex
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="rendre" scope="session" class="action.classe.ClasseRende_vous"/>
        <jsp:setProperty name="rendre" property="*" />       
        <jsp:useBean id="getrendre" scope="session" class="gestion.GestionRende_vous" />
        <%    
            String iden = request.getParameter("automatique");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                getrendre.update(iden, rendre);
                out.print("Le changement précedant on été bien transmise vers la table RENDEZ-VOUS");
            }
        %>
        <script lang="javascript">
            document.location = "Vue_listeRendeVous1.jsp";
        </script>
    </body>
</html>