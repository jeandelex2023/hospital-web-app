<%-- 
    Document   : form_modif_analyse
    Created on : 16 févr. 2018, 12:11:44
    Author     : Delex
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script type="text/javascript">
        function annuler_traitement(){
            document.location('Vue_listeAnalyse1.jsp');
        }
    </script>
    <jsp:useBean id="gestionAnal" scope="session" class="gestion.GestionAnalyse" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = gestionAnal.getAll(ide);// eto no mi-beg getAll(ide)
        resultats.next();
    %>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <jsp:include page="contenu.jsp"></jsp:include>
        <div  style="position:relative;width:550px !important;margin-left:300px !important;" class="card-panel">
        <div class="progress">
        <span>Mise à jour des dossiers de la liste sélectionnée......en attente de votre modification sur les chmps concernées........</span>
        <div class="indeterminate"></div>
        </div>
        <span class="card-title grey-text text-darken-4"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">edit</i></a></span>
        
        <form action="Update_analyse.jsp" method="POST">
            <input type="text" name="anal_numFacture" value="<%=resultats.getString("anal_numFacture")%>" />
            <input type="text" name="anal_idLaboratoire" value="<%=resultats.getString("anal_idLaboratoire")%>" />
            <input type="text" name="anal_nomPrenom" value="<%=resultats.getString("anal_nomPrenom")%>" />
            <input type="text" name="anal_rc" value="<%=resultats.getString("anal_rc")%>" />
            <input type="text" name="anal_date" value="<%=resultats.getString("anal_date")%>" />
            <input type="text" name="anal_priseCharge" value="<%=resultats.getString("anal_priseCharge")%>" />
            <input type="text" name="anal_numTelpatient" value="<%=resultats.getString("anal_numTelpatient")%>" />
            <input type="text" name="anal_agePatient" value="<%=resultats.getString("anal_agePatient")%>" />
            <input type="text" name="anal_moisCor" value="<%=resultats.getString("anal_moisCor")%>" />
            <input type="text" name="anal_sexe" value="<%=resultats.getString("anal_sexe")%>" />
            <input type="text" name="res_parametres" value="<%=resultats.getString("res_parametres")%>" />
            <input type="text" name="res_unite" value="<%=resultats.getString("res_unite")%>" />
            <input type="text" name="res_resultatObtenir" value="<%=resultats.getString("res_resultatObtenir")%>" />
            <a class="waves-effect waves-light btn"><input type="submit" value="Mettre à jour ce champs" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ou &nbsp;&nbsp;
            <a class="waves-effect waves-light btn"><input type="submit" value="Annuler ce traitment.." onClick='annuler_traitement()'/></a>
        </form>
        
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
