<%-- 
    Document   : Update_consultation
    Created on : 9 févr. 2018, 16:52:09
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
        <jsp:useBean id="four" scope="session" class="action.classe.ClasseConsultation"/>
        <jsp:setProperty name="four" property="*" />       
        <jsp:useBean id="getfour" scope="session" class="gestion.GestionConsultation" />
        <%    
            String iden = request.getParameter("com_identifiant");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                getfour.update(iden, four);
                out.print("Le changement précedant on été bien transmise vers la table CONSULTATION");
            }
        %>
        <script lang="javascript">
            document.location = "Vue_listeConsultation1.jsp";
        </script>
    </body>
</html>