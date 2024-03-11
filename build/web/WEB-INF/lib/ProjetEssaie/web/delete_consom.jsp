
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supprimer</title>
    </head>
    <body>
        <jsp:useBean  id="gestcons" class="gestion.GestionConsommation" />
        <%
            try {
            String iden = request.getParameter("nbsuppr");
            int nbsuppr= Integer.parseInt(iden);
            if (iden == "") {
                out.print("Suppression impossible");
            } else {
            
                for (int i = 0; i<nbsuppr; i++){
				String code = request.getParameter("code"+i);           
                                gestcons.delete(code);
            }
            }
            } catch (Exception e) {
            }
        %>
        <jsp:forward page="FormMajConsom.jsp"></jsp:forward>
    </body>
</html>
