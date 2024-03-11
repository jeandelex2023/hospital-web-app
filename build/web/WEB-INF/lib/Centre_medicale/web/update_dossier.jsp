<%-- 
    Document   : update_dossier
    Created on : 5 févr. 2018, 07:21:30
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
        <jsp:useBean id="four" scope="session" class="action.classe.ClasseDossier"/>
        <jsp:setProperty name="four" property="*" />       
        <jsp:useBean id="getfour" scope="session" class="gestion.GestionDossier" />
        <%    
            String iden = request.getParameter("automatique");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                getfour.update(iden, four);
                out.print("Le changement précedant on été bien transmise vers la table DOSSIER");
            }
        %>
        <script lang="javascript">
            document.location = "Vue_listeDossier.jsp";
        </script>
    </body>
</html>
