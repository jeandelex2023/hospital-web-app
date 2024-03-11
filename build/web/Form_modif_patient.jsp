<%-- 
    Document   : Form_modif_patient
    Created on : 12 févr. 2018, 16:41:50
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
    <jsp:useBean id="gestionPTS" scope="session" class="gestion.GestionPatient" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = gestionPTS.getAll(ide);// eto no mi-beg getAll(ide)
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
        
        <form action="Update_patient.jsp" method="POST">
            <input type="text" name="pat_numero" value="<%=resultats.getString("pat_numero")%>" />
            <input type="text" name="pat_nomPrenom" value="<%=resultats.getString("pat_nomPrenom")%>" />
            <input type="text" name="pat_dateNaissance" value="<%=resultats.getString("pat_dateNaissance")%>" />
            <input type="text" name="pat_sexe" value="<%=resultats.getString("pat_sexe")%>" />
            <input type="text" name="pat_domicile" value="<%=resultats.getString("pat_domicile")%>" />
            <input type="text" name="pat_nationalite" value="<%=resultats.getString("pat_nationalite")%>" />
            <input type="text" name="pat_contact" value="<%=resultats.getString("pat_contact")%>" />
            
            <a class="waves-effect waves-light btn"><input type="submit" value="Mettre à jour ce champs" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ou &nbsp;&nbsp;
            <a class="waves-effect waves-light btn"><input type="submit" value="Annuler ce traitment.." onClick='annuler_traitement()'/></a>
        </form>
        
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
