<%-- 
    Document   : Update_medecin
    Created on : 13 févr. 2018, 12:33:13
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
        <jsp:useBean id="Cmedecin" scope="session" class="action.classe.ClasseMedecin"/>
        <jsp:setProperty name="Cmedecin" property="*" />       
        <jsp:useBean id="Gmedecin" scope="session" class="gestion.GestionMedecin" />
        <%    
            String iden = request.getParameter("med_matricule");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                Gmedecin.update(iden, Cmedecin);
                out.print("Le changement précedant on été bien transmise vers la table MEDECIN");
            }
        %>
        <script lang="javascript">
            document.location = "Vue_listeMedecin1.jsp";
        </script>
    </body>
</html>
