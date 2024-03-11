<%-- 
    Document   : Update_analyse
    Created on : 16 févr. 2018, 12:13:52
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
        <jsp:useBean id="CAnalyse" scope="session" class="action.classe.ClasseAnalyse"/>
        <jsp:setProperty name="CAnalyse" property="*" />       
        <jsp:useBean id="getanal" scope="session" class="gestion.GestionAnalyse" />
        <%    
            String iden = request.getParameter("anal_numFacture");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                getanal.update(iden, CAnalyse);
                out.print("Le changement précedant on été bien transmise vers la table ANALYSE et RESULTAT");
            }
        %>
        <script lang="javascript">
            document.location = "Vue_listeAnalyse1.jsp";
        </script>
    </body>
</html