
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
                        document.location = "delete_cmd.jsp?nbsuppr=" + exist + ident;
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
                    document.location = "form_modif_cmde.jsp?code=" + ident;
                }
            }
            
            function accueil(){
                document.location="MenuPPALE.jsp";
            }
            
            function comd(){
                document.location="TEcmd.jsp";
            }
        </script>
        <link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css'>
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css'>

    <jsp:include page="entete.jsp"></jsp:include>
   <body>
       
               <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation ps-container ps-active-y" style="left: 0px; height: 636px;">
                    <li class="user-details blue-grey">
                        <div class="row">
                            <div class="col col s8 m8 l8">
                                <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><i class="material-icons">school</i></a><ul id="profile-dropdown" class="dropdown-content" style="width: 128px; position: absolute; top: 57px; left: 101.234px; opacity: 1; display: none;">
                                    <li><a href=""><i class="mdi-action-face-unlock"></i> Profile</a>
                                    </li>
                                    <li><a href=""><i class="mdi-action-settings"></i>Gérer</a>
                                    </li>
                                    <li><a href=""><i class="mdi-communication-live-help"></i>Aides</a>
                                    </li>
                                    <li><a href=""><i class="mdi-hardware-keyboard-tab"></i>Deconnection</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="no-padding">
                        <ul class="collapsible collapsible-accordion">
                            <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="large material-icons">settings</i>Paramétrage</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Ecran Plain</a>
                                        </li>
                                        <li><a href="">Ecran Normale</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="no-padding">
                        <ul class="collapsible collapsible-accordion">
                            <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="large material-icons">sync</i>Complément</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Table1</a>
                                        </li>
                                        <li><a href="">Table2</a>
                                        </li>
                                        <li><a href="">Table3</a>
                                        </li>
                                        <li><a href="">Table4</a>
                                        </li>
                                        <li><a href="">Table5</a>
                                        </li>
                                        <li><a href="">Table6</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">format_color_fill</i>Préférences </a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Couleur1</a>
                                        </li>
                                        <li><a href="">Couleur2</a>
                                        </li>
                                        <li><a href="">Couleur3</a>
                                        </li>
                                    </ul>
                                </div>

                            </li>
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">compare_arrows</i>Mes Tâches</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Couleur1</a>
                                        </li>
                                        <li><a href="">Couleur2</a>
                                        </li>
                                        <li><a href="">Couleur3</a>
                                        </li>
                                    </ul>
                                </div>	
                            </li>
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">show_chart</i>Statistiques</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Table11</a>
                                        </li>
                                        <li><a href="">Table2</a>
                                        </li>
                                        <li><a href="">Table3</a>
                                        </li>
                                    </ul>
                                </div>	
                            </li>
                            <li class="divider"></li>						 
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">map</i>Site Map</a>
                            </li>
                            </aside>
                            <div class="container"><p style="position:relative;left:50px;"<a href="javascript:accueil()">Accueil</a>>><a href="javascript:comd()">Commande</a>|Gestionnaire de l'ajour commande</p>
                           
                                <hr width="999px">
                            </div>
            <p style="position:relative;left:670px;"><a href="javascript:accueil()">Retour</a>>||Mise  à jour<p>
                            <div class="container">
                                <div class="collapsible" style="position:relative;left:80px;"><a class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">edit</i></a>
   
        <form id="form1" name="form1" method="post" action="">
            <div align="center">
                 
                    <%@ page import="java.sql.*" %>
                    <%! ResultSet resultats = null;%>
                    <%! int nbCols = 0;%>
                    <%! ResultSetMetaData rsmd;%>
                    <%int i = 0;%>
                    
            <jsp:useBean id="cmd" scope="session" class="action.classe.classeCommande">
            <jsp:setProperty name="cmd" property="*" />
            </jsp:useBean>
            <jsp:useBean id="getcmd" scope="session" class="gestion.GestionCommande" />                  
                    <%  
                        resultats = getcmd.getAll();  
                        try {
                            rsmd = resultats.getMetaData();
                            nbCols = rsmd.getColumnCount();
                            out.print("<table width=600 border=1 class='striped'>");
                            out.print("<tr><td><input type='hidden' value='num'/></td><td align=center>Numéro</td><td align=center>N° table</td><td align=center>consom</td><td align=center>Quantité</td><td align=center>Date</td><td align=center>Selection</td></font></tr>");
                            while (resultats.next()) {
                                out.print("<tr>");
                                out.print("<td><input type='hidden' name='id" + i + "' value='" + resultats.getString(1) + "'/></td>");
                                for (int j = 1; j <= nbCols; j++) {
                                    out.print("<td align=center>" + resultats.getString(j) + "</td>");
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
                           <button class="btn waves-effect waves-light  cyan darken-2" type="button"id="Modifier" name="Modifier" onClick="javascript:modifier_matiere(<%out.print(i);%>)"/>Sauvegarder
                           <i class="material-icons">edit</i>
                           </button>
                        </td>
                        <td>
                            <button class="btn waves-effect waves-light red darken-2" type="button" id="Supprimer" name="Supprimer" onClick="javascript:supprimer_matiere(<%out.print(i);%>)"/>Supprimer
                                <i class="material-icons">delete</i>
                            </button>
                            
                        </td>
                    </tr>  
                </table>
                              
            </div>    </div>                
            </div></div>
    </div></div> 
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
