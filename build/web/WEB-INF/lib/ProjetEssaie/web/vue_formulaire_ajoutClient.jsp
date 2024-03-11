<%-- 
    Document   : vue_formulaire_ajoutClient
    Created on : 27 août 2017, 21:42:11
    Author     : HP-Ularion
    raha mahita lex amty code ity anao de varriable no dikan reny, str anarako no nampitondraiko
    an le varriable nampiasaiko eto ex: var_nom == lex nom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                                <p align="center"><a href="javascript:accueil()">Accueil</a><a href="javascript:comd()">>><a href="vue_formulaire_ajoutClient.jsp">Ajout</a></a>|Gestionnaire d'ajout clients </p>
                                <hr width="999px">
                            </div>
                         
                            <center style="position:absolute;right:150px;"> <a href="MenuPPALE.jsp">Retour</a>||Gestionnaire de 'ajout clients</center>
                            <br>
                            <div class="container">
                                <div class="card-panel hoverable" style="position:absolute;top:180px; left:450px; height:690px;padding:10px;"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">add</i></a>
                                    <table>
                                        <form name="form1" method="post" action="insert_client.jsp">
                                            <tr>
                                                <td width="178" height="68">Nom:</td>
                                                <td width="358">
                                                    <div align="center">
                                                        <div class="input-field col s6">
                                                            <i class="material-icons prefix">person</i>
                                                            <label for="last_name">Client</label>
                                                            <input type="tel" name="lex_nomClient" id="numcmd" size="42" length="30" onblur="ControlerNumCmd(form1);" required/>  
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr></br>
                                            <tr>
                                                <td width="178" height="68">Numero:</td>
                                                <td width="358">
                                                    <div align="center">
                                                        <div class="input-field col s6">
                                                            <i class="material-icons prefix">table</i>
                                                            <label for="last_name">Table</label>
                                                            <input type="tel" name="lex_numTableClient" id="numcmd" size="42" length="5" onblur="ControlerNumCmd(form1);" required/>  
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr></br>
                                            <tr>
                                                <td height="70">Commande:</td>
                                                <td>
                                                    <div align="center">
                                                        <div class="input-field col s6">
                                                            <i class="material-icons prefix">restaurant</i>
                                                            <label for="last_name">Nom</label>
                                                            <input type="tel" name="lex_commandeClient" id="numconsom" size="42"  length="20" onblur="ControlerCons(form1);" required/>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="65">Solde:</td>
                                                <td>
                                                    <div align="center">
                                                        <div class="input-field col s6">
                                                            <i class="material-icons prefix">business</i>
                                                            <label for="last_name">Montant</label>
                                                            <input type="tel" name="lex_soldeClient" id="qte_cmd" size="42" length="12" onkeyup="ControlerQte(form1);" onblur="ControlerQuant(form1);"   required/>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="65">Numero:</td>
                                                <td>
                                                    <div align="center">
                                                        <div class="input-field col s6">
                                                            <i class="material-icons prefix">call</i>
                                                            <label for="last_name">Telephone</label>
                                                            <input type="tel" name="lex_telephoneClient" id="qte_cmd" size="42" length="15" onkeyup="ControlerQte(form1);" onblur="ControlerQuant(form1);"   required/>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>
                                                    <label>
                                                        <button class="btn waves-effect waves-light  cyan darken-2" type="submit" name="ajouter">Ajouter
                                                            <i class="material-icons right">send</i>
                                                        </button>
                                                    </label> 

                                                    <label>
                                                        <button class="btn waves-effect waves-light red lighten-3" type="reset" name="annuler">Annuler
                                                            <i class="material-icons right">cancel</i>
                                                        </button>
                                                    </label> 
                                                </td>
                                            </tr>
                                    </table>
                                </div>
                            </div>
                            </div>          
                            <script type="text/javascript" src="js/jquery.min.js"></script>
                            <script type="text/javascript" src="js/materialize.min.js"></script>
                        <jsp:include page="pied.jsp"></jsp:include>
                        </body>
                        </html>
