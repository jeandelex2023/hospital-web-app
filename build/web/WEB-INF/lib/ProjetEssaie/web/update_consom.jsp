
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="et" scope="session" class="action.classe.classeConsommation"/>
        <jsp:setProperty name="et" property="*" />       
        <jsp:useBean id="get" scope="session" class="gestion.GestionConsommation" />
    
        
        <%    
            String iden = request.getParameter("numconsom");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                get.update(iden, et);
                out.print("Traitement encore");
            }
        %>
        <script lang="javascript">
            document.location = "FormMajConsom.jsp";
        </script>
    </body>
</html>
