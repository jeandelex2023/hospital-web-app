<%-- 
    Document   : Form_modif_medecin
    Created on : 13 févr. 2018, 12:29:40
    Author     : Delex
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script type="text/javascript">
        function annuler_traitement(){
            document.location('Vue_listeConsultation1.jsp');
        }
    </script>
    <jsp:useBean id="gestionMdc" scope="session" class="gestion.GestionMedecin" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = gestionMdc.getAll(ide);// eto no mi-beg getAll(ide)
        resultats.next();
    %>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <jsp:include page="contenu.jsp"></jsp:include>
        <div  style="position:relative;width:550px !important;margin-left:300px !important;" class="card-panel">
        <div class="progress">
        <span>Mise à jour du Medecin de la liste sélectionnée......en attente de votre modification sur les chmps concernées........</span>
        <div class="indeterminate"></div>
        </div>
        <span class="card-title grey-text text-darken-4"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">edit</i></a></span>
        
        <form action="Update_medecin.jsp" method="POST">
            <input type="text" name="med_matricule" value="<%=resultats.getString("med_matricule")%>" />
            <input type="text" name="med_nomPrenom" value="<%=resultats.getString("med_nomPrenom")%>" />
            <input type="text" name="med_sexe" value="<%=resultats.getString("med_sexe")%>" />
            <input type="text" name="med_nationalite" value="<%=resultats.getString("med_nationalite")%>" />
            <input type="text" name="med_indice" value="<%=resultats.getString("med_indice")%>" />
            <input type="text" name="med_datebutEmbauche" value="<%=resultats.getString("med_datebutEmbauche")%>" />
            <input type="text" name="med_datefinEmbauche" value="<%=resultats.getString("med_datefinEmbauche")%>" />
            <input type="text" name="med_contact" value="<%=resultats.getString("med_contact")%>" />
            <input type="text" name="med_domicile" value="<%=resultats.getString("med_domicile")%>" />
            
            <a class="waves-effect waves-light btn"><input type="submit" value="Mettre à jour ce champs" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ou &nbsp;&nbsp;
            <a class="waves-effect waves-light btn"><input type="submit" value="Annuler ce traitment.." onClick='annuler_traitement()'/></a>
        </form>
        
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
