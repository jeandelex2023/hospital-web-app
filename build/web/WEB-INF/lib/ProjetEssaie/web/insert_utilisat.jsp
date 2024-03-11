
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="clutil" class="action.classe.ClasseUtilisateur" />
        <jsp:useBean id="gutil" class="gestion.GestionUtilisateur" />
        <jsp:setProperty name="clutil" property="*" />
        <%
            try {
                gutil.insert(clutil);
         
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        
    </body>
</html>
