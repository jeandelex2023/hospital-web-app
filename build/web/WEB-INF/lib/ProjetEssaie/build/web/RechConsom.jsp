
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            <p>Vous &ecirc;tes ici : <a href="javascript:accueil()">Accueil</a> > <a href="javascript:comd()"> Consommation</a> > <a href="javascript:liste()"> Mis à jour</a> > Listes </p>
            <br>
            <form method="post" name="form1" id="form1" action="">
                <%
                Connection con = null;
                String id = request.getParameter("search");
                try {
                    Class.forName("org.gjt.mm.mysql.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basecafet", "root", "");
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                Statement Statements = con.createStatement();
                ResultSet res = Statements.executeQuery("select * from consommation where numconsom = '%" + request.getParameter("search") + "%'");
            %>
                <table width="200" border="0" align="center">
                    <tr>                       
                        <td><div id="recher"><input type="text" name="search" value="" /></div></td>
                        <td><div id="formbouton"><input type="submit" value="Rechercher" /></div></td>
                    </tr>
                </table>
                <br> <center style="font-weight: bold"> LISTE DES CONSOMMATIONS </center>
                <br>
                <table width="600" border="0" align="center" >
                    <tr>
                        <td width="80"><div align="center" style="font-weight: bold">Numéro</div></td>
                        <td width="182"><div align="center" style="font-weight: bold">Libellé</div></td>
                        <td width="120"><div align="center" style="font-weight: bold">Prix unitaire</div></td>
                        <td width="120"><div align="center" style="font-weight: bold">Quantité initiale</div></td>
                    </tr>
                
                <% while (res.next()) {%>
                <tr>
                    <td align="center"><%=res.getString("numconsom")%></td>
                    <td align="center"><%=res.getString("libelle")%></td>
                    <td align="center"><%=res.getString("prix_unit")%></td>
                    <td align="center"><%=res.getString("qte_init")%></td>
                </tr>
                <%}%>
                <% res.close();%>
                <%Statements.close();%>

            </table>
            <br>

            <div align="center" id="formbouton">
                       <label>
                        <button class="btn waves-effect waves-light  teal lighten-3" type="button" name="Imprimer" onClick="javascript:imprimer();">Imprimer
                          <i class="material-icons right">print</i>
                        </button>
                        </label>
            </div>
        </form>
    </div>
</div

<script type="text/javascript" src="js-materialize/js/jquery.min.js"></script>
<script type="text/javascript" src="js-materialize/js/materialize.min.js"></script>
<jsp:include page="pied.jsp"></jsp:include>
</body>
</html>
