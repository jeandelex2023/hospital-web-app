
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script language="javascript">
            function supprimer_matiere(nbmax) {
                exist = 0;
                ident = "";
                for (i = 0; i < nbmax; i++) {
                    if (document.forms[0].elements['checkbox' + i].checked) {
                        ident += "&code" + exist + "=" + document.forms[0].elements['id' + i].value;
                        exist += 1;
                    }
                }
                if (exist == 0)
                    alert('Veuillez selectionner au moins un enregistrement');
                else if (exist >= 1)
                    if (confirm('Voullez vous supprimer vraiement ces enregistrements?'))
                        document.location = "delete_util.jsp?nbsuppr=" + exist + ident;
            }

            function modifier_matiere(nbmax) {
                exist = 0;
                for (i = 0; i < nbmax; i++) {
                    if (document.forms[0].elements['checkbox' + i].checked == true) {
                        exist += 1;
                        ident = document.forms[0].elements['id' + i].value;
                    }
                }
                if (exist == 0)
                    alert('Veuillez selectionner un enregistrement');
                else
                if (exist > 1)
                    alert('Veuillez selectionner un seul enregistrement');
                else if (exist == 1) {
                    document.location = "form_modif_util.jsp?code=" + ident;
                }
            }
            function accueil(){
                document.location="MenuPPALE.jsp";
            }
            
            function comd(){
                document.location="TEUtilisat.jsp";
            }
        </script>
    <jsp:include page="entete.jsp"></jsp:include>
    <div id="menu_c">
        <p>Vous &ecirc;tes ici : <a href="javascript:accueil()">Accueil</a> > <a href="javascript:comd()">Admin</a> > Liste et modification</p>
        <br>    
        <div align="center">
            <br><div align="center"><font  size="2"><strong><font size="3">LISTE des UTILISATEURS </font></strong></font></div><br>

                    <%@ page import="java.sql.*" %>
                    <%! ResultSet resultats = null;%>
                    <%! int nbCols = 0;%>
                    <%! ResultSetMetaData rsmd;%>
                    <%int i = 0;%>
                    
            <jsp:useBean id="util" scope="session" class="action.classe.ClasseUtilisateur">
            <jsp:setProperty name="util" property="*" />
            </jsp:useBean>
            <jsp:useBean id="getutil" scope="session" class="gestion.GestionUtilisateur" />                  
                    <%  
                        resultats = getutil.getAll();  
                        try {
                            rsmd = resultats.getMetaData();
                            nbCols = rsmd.getColumnCount();
                            out.print("<table width=600 border=1 style=border-collapse:collapse>");
                            out.print("<tr><td><input type='hidden' value='num'/></td><td align=center>Nom d'utilisateur</td><td align=center>Mot de passe</td><td align=center>Selection</td></font></tr>");
                            while (resultats.next()) {
                                out.print("<tr>");
                                out.print("<td><input type='hidden' name='id" + i + "' value='" + resultats.getString(1) + "'/></td>");
                                for (int j = 1; j <= nbCols; j++) {
                                    out.print("<td align=center>" + resultats.getString(j) + "</td>");
                                }
                                out.print("<td><div align=center><input type=checkbox name='checkbox" + i + "' /></div></td>");

                                i++;
                            }
                            out.print("</tr>");
                            out.print("</table>");
                            resultats.close();
                        } catch (SQLException e) {
                            out.println(e.getMessage());
                        }

                    %>
                </table>
            </div>
            <br>
            <div align="center" id="formbouton">
                <table width="20%" border="0" cellpadding="0" cellspacing="0">
                    <tr>  
                        <td width="64%">
                            <input name="Modifier" type="button" id="Modifier" value="Modifier" onClick="javascript:modifier_matiere(<%out.print(i);%>);"/>
                        </td>
                        <td width="36%">
                            <input name="Supprimer" type="button" id="Supprimer" value="Supprimer" onClick="javascript:supprimer_matiere(<%out.print(i);%>);"/>
                        </td>
                    </tr>
                </table>
            </div>
    </div>
</div

<script type="text/javascript" src="js-materialize/js/jquery.min.js"></script>
<script type="text/javascript" src="js-materialize/js/materialize.min.js"></script>
<jsp:include page="pied.jsp"></jsp:include>
    </body>
</html>
