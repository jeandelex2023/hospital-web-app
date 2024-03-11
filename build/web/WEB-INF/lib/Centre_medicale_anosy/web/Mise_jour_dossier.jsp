<%-- 
    Document   : Mise_jour_dossier
    Created on : 1 févr. 2018, 05:52:41
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            function supprimer_dossier_patient(nbmax) {
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
                        document.location = "delete_cmd.jsp?nbsuppr=" + exist + ident;
            }

            function modifier_dossier_patient(nbmax) {
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
                    document.location = "form_modif_cmde.jsp?code=" + ident;
                }
            }

        </script>
    </head>
    <body>
        <div align="center">

            <%@ page import="java.sql.*" %>
            <%! ResultSet resultats = null;%>
            <%! int nbCols = 0;%>
            <%! ResultSetMetaData rsmd;%>
            <%int i = 0;%>

            <jsp:useBean id="dossier" scope="session" class="serveletClasses.Dossiermedicale">
                <jsp:setProperty name="dossier" property="*" />
            </jsp:useBean>
            <jsp:useBean id="getDossier" scope="session" class="serveletGestions.G_dossiermedicale" />                  
            <%
                resultats = getDossier.getAll();
                try {
                    rsmd = resultats.getMetaData();
                    nbCols = rsmd.getColumnCount();
                    out.print("<table width=600 border=1 class='striped'>");
                    out.print("<tr><td><input type='hidden' value='num'/></td><td>dos_numeroPhone</td><td>dos_nomPrenom</td><td>dos_mere</td><td>dos_pere</td><td>dos_dateNaissance</td><td>dos_nationalite</td><td>dos_sexe</td><td>dos_adresse</td><td>dos_insurranceMedicale</td><td>dos_vaccine</td><td>dos_numInsurrance</td><td>dos_medicaleHistorique</td><td>dos_surgicaleHistorique</td><td>dos_chroniqueMedicale</td><td>dos_alergie</td><td>dos_devlpNaissance</td></font></tr>");
                    while (resultats.next()) {
                        out.print("<tr>");
                        out.print("<td><input type='hidden' name='id" + i + "' value='" + resultats.getString(1) + "'/></td>");
                        for (int j = 1; j <= nbCols; j++) {
                            out.print("<td>" + resultats.getString(j) + "</td>");
                        }
                        out.print("<td><div align=center><input type=checkbox name='checkbox" + i + "' id='test5' /><label for='test5'>Cocher</label></div></td>");
                        i++;
                    }
                    out.print("</tr>");
                    out.print("</table>");
                    resultats.close();
                } catch (SQLException e) {
                    out.println(e.getMessage());
                }

            %> 
            <br>
            <div style="width:150px;">
                <div align="center" id="formbouton">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>  
                            <td width="64%">
                                <button class="btn waves-effect waves-light  cyan darken-2" type="button"id="Modifier" name="Modifier" onClick="javascript:modifier_dossier_patient(<%out.print(i);%>)"/>Sauvegarder
                                <i class="material-icons">edit</i>
                                </button>
                            </td>
                            <td>
                                <button class="btn waves-effect waves-light red darken-2" type="button" id="Supprimer" name="Supprimer" onClick="javascript:supprimer_dossier_patient(<%out.print(i);%>)"/>Supprimer
                                <i class="material-icons">delete</i>
                                </button>

                            </td>
                        </tr>  
                    </table>
                </div>
            </div>                
        </div>
    </body>
</html>
