
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="four" scope="session" class="action.classe.classeFournisseur"/>
        <jsp:setProperty name="four" property="*" />       
        <jsp:useBean id="getfour" scope="session" class="gestion.GestionFournisseur" />
    
        
        <%    
            String iden = request.getParameter("idfourn");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                getfour.update(iden, four);
                out.print("Modification reussie");
            }
        %>
        <script lang="javascript">
            document.location = "FormMajFourn.jsp";
        </script>
    </body>
</html>
