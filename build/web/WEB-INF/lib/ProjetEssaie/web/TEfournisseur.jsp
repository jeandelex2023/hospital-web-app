<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css'>
        <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css'>

            <jsp:include page="entete.jsp"></jsp:include>
                <script language="JavaScript">
                    //CONTROLE TOUS LE VIDE
                    function ControllechampVide1(champ) {
                        if (champ == "") {
                            confirm("Le numéro fournisseur est vide!");

                        }
                    }
                    function ControllechampVide2(champ) {
                        if (champ == "") {
                            confirm("Completez le Nom fournisseur svp!!!");
                        }
                    }
                    function ControllechampVide3(champ) {
                        if (champ == "") {
                            confirm("Veuillez completez le champ adresse svp!!");
                        }
                    }
                    function ControllechampVide4(champ) {
                        if (champ == "") {
                            confirm("Le champ contact est vide");
                        }
                    }
                    //CONTROLE NUMERO
                    function ControlerNumFr(form1) {
                        ControllechampVide1(document.form1.idfourn.value);

                    }

                    //CONTROLE CHAMP NOM
                    function ControlerNomFr(form1) {
                        ControllechampVide2(document.form1.nomfourn.value);
                        document.form1.nomfourn.value.setFocus(true);
                    }
                    function ControlerAdrsFr(form1) {
                        ControllechampVide3(document.form1.adrs_fourn.value);
                        document.form1.adrs_fourn.value.setFocus(true);
                    }
                    //CONTROLE TELEPHONE
                    function TesterNombre4(nombre) {
                        var phon = document.form1.cont_fourn.value;
                        if (isNaN(phon) == false) {
                            var isa = phon.length;
                            if (isa == 10) {
                                var cs = phon.substring(0, 3);
                                if (cs == "032" || cs == "033" || cs == "034") {
                                    document.form1.cont_fourn.value = phon.substring(0, 3) + " " + phon.substring(3, 5) + " " + phon.substring(5, 8) + " " + phon.substring(8, 10);
                                } else {
                                    alert("Operateur inconnu");
                                }
                            } else {
                                alert("Format du contact invalide");
                            }
                        } else {
                            alert("Le numero doit etre en chiffre");
                        }
                    }
                    function ControlerContact(form1) {
                        ControllechampVide4(document.form1.cont_fourn.value);
                        TesterNombre4(document.form1.cont_fourn.value);
                        document.form1.cont_fourn.value.setFocus(true);
                    }
                    function accueil() {
                        document.location = "MenuPPALE.jsp";
                    }
                </script>
                </script>

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
                                        <p align="center"><a href="javascript:accueil()">Accueil</a>>></a>|Gestionnaires fournisseurs </p>
                                        <div style="position:relative;left:680px;" class="lera">
                                            <a href="#!" class="secondary-content"><span id='lera_ankavana' title=""></span><i class="material-icons">watch_later</i></a>
                                        </div>
                                        <hr width="999px">
                                    </div>
                                    <p style="position:relative;left:670px;"><a href="javascript:accueil()">Retour</a>>||Gestionnaire de l'ajouts fournisseurs<p>

                                            <div class="card-panel hoverable" style="position:absolute; left:500px; height:600px;border-radius:2px;width:500px;"><a class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">add</i></a>
                                                <table align="center">
                                                    <form action="ajout_fournisseur.jsp" method="post" name="form1" id="form1">
                                                        <tr>
                                                            <td width="127" height="56">Numero:</td>
                                                            <td width="235">

                                                                <div align="center">
                                                                    <div class="input-field col s6">
                                                                        <label for="last_name">Numero</label>
                                                                        <input name="idfourn" type="tel" id="id_fourn" size="35" length="10" onblur="ControlerNumFr(form1);" required="required"/>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="52">Nom:</td>
                                                            <td width="235">

                                                                <div align="center">
                                                                    <div class="input-field col s6">
                                                                        <i class="material-icons prefix">account_circle</i>


                                                                        <input name="nomfourn" type="tel" id="nom_fourn" size="35" length="40" onblur="ControlerNomFr(form1);" required="required"/>

                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="47">Adresse:</td>
                                                            <td width="235">

                                                                <div align="center">
                                                                    <div class="input-field col s6">

                                                                        <input name="adrs_fourn" type="text" id="adre_fourn" size="35" length="100" onblur="ControlerAdrsFr(form1);" required="required"/>

                                                                    </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="47">Adresse:</td>
                                                            <td width="235">

                                                                <div align="center">
                                                                    <div class="input-field col s6">
                                                                        <i class="material-icons prefix">call</i>
                                                                        <input name="cont_fourn" type="tel" id="cont_fourn" size="35" length="17" onblur="ControlerContact(form1);" required="required"/> 
                                                                    </div>
                                                            </td>
                                                        </tr>
                                                        <tr>       <td height="47"></td>                      
                                                            <td width="235">
                                                                <div style="position:absolute;left:50px;margin-left:50px;">
                                                                    <div class="input-field col s6">
                                                                        <button class="btn waves-effect waves-light  cyan darken-2" type="submit" name="ajouter">Ajouter
                                                                            <i class="material-icons right">send</i>

                                                                            <button class="btn waves-effect waves-light  red lighten-3" type="reset" name="annuler">Annuler
                                                                                <i class="material-icons right">cancel</i>
                                                                            </button>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </form>
                                                </table>

                                            </div>

                                            <script type="text/javascript" src="js/jquery.min.js"></script>
                                            <script type="text/javascript" src="js/materialize.min.js"></script>
                                        <jsp:include page="pied.jsp"></jsp:include>     
                                        </body>
                                        </html>

