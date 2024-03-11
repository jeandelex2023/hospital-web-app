<%-- 
    Document   : Form_modif_rende_vous
    Created on : 9 févr. 2018, 23:11:39
    Author     : Delex
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script type="text/javascript">
        function annuler_traitement(){
            document.location('Vue_listeRendeVous1.jsp');
        }
    </script>
    <jsp:useBean id="gestionR" scope="session" class="gestion.GestionRende_vous" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = gestionR.getAll(ide);// eto no mi-beg getAll(ide)
        resultats.next();
    %>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
         <jsp:include page="contenu.jsp"></jsp:include>
        <div  style="position:relative;width:550px !important;margin-left:300px !important;" class="card-panel">
        <div class="progress">
        <span>Mise à jour du rendez-vous de la liste sélectionnée......en attente de votre modification sur les chmps concernées........</span>
        <div class="indeterminate"></div>
        </div>
        <span class="card-title grey-text text-darken-4"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">edit</i></a></span>
        <form action="Update_rendeVous.jsp" method="POST">
            <input type="text" name="automatique" value="<%=resultats.getString("automatique")%>" />
            <input type="text" name="rend_date" value="<%=resultats.getString("rend_date")%>" />
            <input type="text" name="rend_docConcerne" value="<%=resultats.getString("rend_docConcerne")%>" />
            <input type="text" name="rend_patNumero" value="<%=resultats.getString("rend_patNumero")%>" />
            
            <a class="waves-effect waves-light btn"><input type="submit" value="Mettre à jour ce champs" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ou &nbsp;&nbsp;
            <a class="waves-effect waves-light btn"><input type="submit" value="Annuler ce traitment.." onClick='annuler_traitement()'/></a>
        </form>
        </div>
    <jsp:include page="footer_liste.jsp"></jsp:include>
    </body>
</html>
