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
    <jsp:useBean id="gestcommd" class="gestion.GestionCommande" />
    <%
        ResultSet res = gestcommd.getDet();
        int i = 0;
    %>
    <jsp:include page="entete.jsp"></jsp:include>
        <div id="menu_c">
            <br>
            <p>Vous &ecirc;tes ici : Detail commande </p>
            <br>
            <form id="form1" name="form1" method="post" action="">
                <table width="580" border="0" align="center" >
                    <tr>
                        <td width="500" bgcolor="#F2F2F2" align="center"><span class="Style24 Style14">DETAILS DES COMMANDES </span></td>
                    </tr><br>
                </table>
                <table width="580" border="1" align="center" style="border-collapse:collapse">
                    <tr bgcolor="#999999">
                        <td width="60" class="Style24"><div align="center" class="Style16"><strong>Numéro</strong></div></td>
                        <td width="150" class="Style24"><div align="center" class="Style16"><strong>N° table</strong></div></td>
                        <td width="170" class="Style24"><div align="center" class="Style16"><strong>Libellé</strong></div></td>
                        <td width="100" class="Style24"><div align="center" class="Style16"><strong>Quantité</strong></div></td>
                        <td width="91" class="Style24"><div align="center" class="Style16"><strong>Prix unitaire</strong></div></td>
                        <td width="100"><div align="center"><strong>Montant</strong></div></td>

                    </tr>
                <% while (res.next()) {%>
                <tr>
                    <td><div align="center"><%=res.getString("numcmd")%></div></td>
                    <td><div align="center"><%=res.getString("numtable")%></div></td>
                    <td><div align="center"><%=res.getString("libelle")%></div></td>
                    <td><div align="center"><%=res.getString("qte_cmd")%></div></td>
                    <td><div align="center"><%=res.getString("prix_unit")%></div></td>
                    <td><div align="center"></div></td>
                </tr>
                <%i++;%>
                <%}%>
            </table>
            <br>
            <div id="formbouton" align="center">
                <label>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                <label> &nbsp;
                    <input type="button" name="Submit2" value="Imprimer" onclick=""/>
                </label>
                <label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </label>
            </div>
            
            
        </form>
    </div>
</div>
<jsp:include page="pied.jsp"></jsp:include>
</body>
</html>

