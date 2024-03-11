<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"  import="action.classe.*" import="gestion.*"%>
<!DOCTYPE html>
<%@ page language="java" %>
<script lang="javascript">
    function Imprimer() {
        document.location = "ImprimerCons.jsp"
    }
    function accueil() {
        document.location = "MenuPPALE.jsp";
    }

    function comd() {
        document.location = "TEConsom.jsp";
    }
    function liste() {
        document.location = "FormMajConsom.jsp";
    }
</script>
<html>
    <jsp:useBean id="gestcons" class="gestion.GestionConsommation" />
    <jsp:include page="entete.jsp"></jsp:include>
    <div id="menu_c">
             <br>
            <p>Vous &ecirc;tes ici : Detail consommmation </p>
            <br>
            <form method="post" name="form1" id="form1" action="">
                <br> <center>
                  <strong> DETAIL CONSOMMATION </strong>
                </center>
        <br>
                <table width="600" border="0" align="center" >
                    <tr>
                        <td width="80"><div align="center"><strong>Numéro</strong></div></td>
                        <td width="182"><div align="center"><strong>Libellé</strong></div></td>
                        <td width="182"><div align="center"><strong>Prix unitaire</strong></div></td>
                        <td width="120"><div align="center"><strong>Fournisseur</strong></div></td>
                        <td width="182"><div align="center"><strong>Contact</strong></div></td>
                  </tr>
                <%
                    ResultSet res = gestcons.getDetail();
                    int i = 0;
                %>
                <% while (res.next()) {%>
                <tr>
                    <td><div align="center"><%=res.getString("numconsom")%></div></td>
                    <td><div align="center"><%=res.getString("libelle")%></div></td>
                    <td><div align="center"><%=res.getString("prix_unit")%></div></td>
                    <td><div align="center"><%=res.getString("nomfourn")%></div></td>
                    <td><div align="center"><%=res.getString("cont_fourn")%></div></td>
                </tr>
                <% i++;%>
                <%}%>

            </table>
            <br>

            <div align="center" id="formbouton">

                <html:button property="submit1" value="Imprimer"  onclick="javascript:Imprimer();"/>
            </div>
        </form>
    </div>
</div>
<jsp:include page="pied.jsp"></jsp:include>
</body>
</html>

