<%-- 
    Document   : Form_modif_consultation
    Created on : 9 févr. 2018, 12:21:48
    Author     : Delex
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script type="text/javascript">
        function annuler_traitement() {
            document.location('Vue_listeConsultation1.jsp');
        }
    </script>
    <jsp:useBean id="gestionConsultationss" scope="session" class="gestion.GestionConsultation" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = gestionConsultationss.getAll(ide);// eto no mi-beg getAll(ide)
        resultats.next();
    %>
    <jsp:include page="header.jsp"></jsp:include>
        <body>
        <jsp:include page="contenu.jsp"></jsp:include>
            <div  style="position:relative;width:550px !important;margin-left:300px !important;" class="card-panel">
                <div class="progress">
                    <span>Mise à jour du Consultation de la liste sélectionnée......en attente de votre modification sur les chmps concernées........</span>
                    <div class="indeterminate"></div>
                </div>
                <span class="card-title grey-text text-darken-4"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">edit</i></a></span>
                <form action="Update_consultation.jsp" method="POST">
                    <input type="text" name="com_identifiant" value="<%=resultats.getString("com_identifiant")%>" />
                <input type="text" name="cons_nomPatient" value="<%=resultats.getString("cons_nomPatient")%>" />
                <input type="text" name="cons_nomMedecin" value="<%=resultats.getString("cons_nomMedecin")%>" />
                <input type="text" name="cons_montant" value="<%=resultats.getString("cons_montant")%>" />

                <a class="waves-effect waves-light btn"><input type="submit" value="Mettre à jour ce champs" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ou &nbsp;&nbsp;
                <a class="waves-effect waves-light btn"><input type="submit" value="Annuler ce traitment.." onClick='annuler_traitement()'/></a>
            </form>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
