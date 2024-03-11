<!--Erreur inconnnue pour l'importation du java sql resultatSET-->
<%@page import="java.sql.ResultSet"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script lang="javascript">
        function supprimer_mati(nbmax) {
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
                    document.location = "delete_fourn.jsp?nbsuppr=" + exist + ident;
        }

        function modifier_matie(nbmax) {
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
                document.location = "form_modif_fourn.jsp?code=" + ident;
            }
        }

        function accueil() {
            document.location = "MenuPPALE.jsp";
        }

        function comd() {
            document.location = "TEfournisseur.jsp";
        }
        function te_fourn() {
            document.location = "TEfournisseur.jsp";
        }
    </script>
    <jsp:useBean id="getmat" scope="session" class="gestion.GestionFournisseur" />
    <%
        ResultSet res = getmat.getAll();
        int i = 0;
    %>

    <jsp:include page="entete.jsp"></jsp:include>
        <body>
            <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation ps-container ps-active-y" style="left: 0px; height: 636px;">
                    <li class="user-details cyan darken-1">
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
                            <div class="container">
                                <p align="center"><a href="javascript:accueil()">Accueil</a>>> <a href="javascript:comd()">Fournisseur</a> ></a>|Mise à jour</p>
                                <div style="position:relative;left:680px;" class="lera">
                                    <a href="#!" class="secondary-content"><span id='lera_ankavana' title=""></span><i class="material-icons">watch_later</i></a>
                                </div>
                                <hr width="999px">
                            </div>
                            <p style="position:relative;left:670px;"><a href="javascript:accueil()">Retour</a>>||Gestionnaire de la mise à jour<p>
                            <div class="container">
                                <div class="collapsible" style="position:relative;left:80px;"><a class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">edit</i></a>
                                    <form id="form1" name="form1" method="post" action="">

                                        <table class="striped">
                                            <tr>
                                                <td>Identifiant</td>
                                                <td>Nom</td>
                                                <td>Adresse</td>
                                                <td>Contact</td>
                                                <td>Selection</td>
                                            </tr>
                                        <% while (res.next()) {%>
                                        <tr>
                                            <td><%=res.getString("idfourn")%>
                                                <input type="hidden" name="id<%=i%>" value="<%=res.getString("idfourn")%>"/>
                                            </td>
                                            <td><%=res.getString("nomfourn")%></td>
                                            <td><%=res.getString("adrs_fourn")%></td>
                                            <td><%=res.getString("cont_fourn")%> </td>

                                            <td><label>
                                                    <input type="checkbox" name="checkbox<%=i%>" />
                                                </label>
                                            </td>
                                        </tr>
                                        <%i++;%>
                                        <%}%>
                                    </table>
                                    <div align="center">
                                    <label>
                                        <button class="btn waves-effect waves-light  cyan darken-2" type="button"id="Modifier" name="Modifier" onclick="javascript:modifier_matie(<%out.print(i);%>);"/>Sauvegrde
                                        <i class="material-icons right">edit</i>
                                    </label>
                                    <label> &nbsp;
                                        <button class="btn waves-effect waves-light red lighten-3" type="button" name="Submit2" onclick="javascript:supprimer_mati(<%out.print(i);%>);"/>Supprimer
                                        <i class="material-icons right">delete</i>
                                    </label>
                                    </div>
                                </form></div></div>
                        </body>
                        </html>
