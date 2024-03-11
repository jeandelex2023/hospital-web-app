<%-- 
    Document   : Update_patient
    Created on : 12 févr. 2018, 16:45:02
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
        <jsp:useBean id="rendre" scope="session" class="action.classe.ClassePatient"/>
        <jsp:setProperty name="rendre" property="*" />       
        <jsp:useBean id="getrendre" scope="session" class="gestion.GestionPatient" />
        <%    
            String iden = request.getParameter("pat_numero");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                getrendre.update(iden, rendre);
                out.print("Le changement précedant on été bien transmise vers la table RENDEZ-VOUS");
            }
        %>
        <script lang="javascript">
            document.location = "Vue_listePatient1.jsp";
        </script>
    </body>
</html>