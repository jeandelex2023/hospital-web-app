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
    <jsp:useBean id="gestcons" class="gestion.GestionCommande" />
    <jsp:include page="entete.jsp"></jsp:include>
    <div id="menu_c">
             <br>
            <p>Vous &ecirc;tes ici : Listes des commandes </p>
            <br>
            <form method="post" name="form1" id="form1" action="">
                <br> <center>
                  <strong> LISTE DES COMMANDES </strong>
                </center>
        <br>
                <table width="600" border="0" align="center" >
                    <tr>
                        <td width="80"><div align="center"><strong>Numéro</strong></div></td>
                        <td width="182"><div align="center"><strong>N° table</strong></div></td>
                        <td width="182"><div align="center"><strong>Consommation</strong></div></td>
                        <td width="120"><div align="center"><strong>Quantité</strong></div></td>
                        <td width="182"><div align="center"><strong>Date</strong></div></td>
                        
                  </tr>
                <%
                    ResultSet res = gestcons.getCmd();
                    int i = 0;
                %>
                <% while (res.next()) {%>
                <tr>
                    <td><div align="center"><%=res.getString("numcmd")%></div></td>
                    <td><div align="center"><%=res.getString("numtable")%></div></td>
                    <td><div align="center"><%=res.getString("libelle")%></div></td>
                    <td><div align="center"><%=res.getString("qte_cmd")%></div></td>
                    <td><div align="center"><%=res.getString("date_cmd")%></div></td>
                    
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


