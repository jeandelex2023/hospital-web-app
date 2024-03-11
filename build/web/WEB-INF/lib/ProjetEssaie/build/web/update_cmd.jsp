
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="cmd" scope="session" class="action.classe.classeCommande"/>
        <jsp:setProperty name="cmd" property="*" />       
        <jsp:useBean id="getcm" scope="session" class="gestion.GestionCommande" />
    
        
        <%    
            String iden = request.getParameter("numcmd");
            
            
            if (iden == "") {
                out.print("Modification impossible");
            } else {
                getcm.update(iden, cmd);
                out.print("Modification reussie");
            }
        %>
        <script lang="javascript">
            document.location = "FormMajCmd.jsp";
        </script>
            
    </body>
</html>
