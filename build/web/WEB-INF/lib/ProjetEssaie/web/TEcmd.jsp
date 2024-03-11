
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script language="JavaScript">
    //CONTROLE TOUS LE VIDE
    function ControllechampVide1(champ) {
        if (champ == "") {
            confirm("Le numéro commande est vide!");

        }
    }
    function ControllechampVide2(champ) {
        if (champ == "") {
            confirm("Completez le Numéro table svp!!!");
        }
    }
    function ControllechampVide3(champ) {
        if (champ == "") {
            confirm("Veuillez completez le champ consommation svp!!");
        }
    }
    function ControllechampVide4(champ) {
        if (champ == "") {
            confirm("Le champ Quantité est vide");
        }
    }
    function ControllechampVide5(champ) {
        if (champ == "") {
            confirm("La date automatique est activer; Cliquqer 'OUI'!");
        }
    }
    //CONTROLE NUMERO
    function TesterNumer(nombre) {
        if (isNaN(nombre) == true) {
            alert("La consommation  doit être en nombre svp!");
        }
    }
    function ControlerQte(form1) {
        TesterNume(document.form1.qte_cmd.value);
    }
    function TesterNume(nombre) {
        if (isNaN(nombre) == true) {
            alert("La quantité  doit être en chiffre svp!");
        }
    }


    function ControlerNumCmd(form1) {
        ControllechampVide1(document.form1.numcmd.value);
        document.form1.numcmd.value.setFocus(true);
    }

    //CONTROLE CHAMP NOM
    function ControlerNumTab(form1) {
        ControllechampVide2(document.form1.numtable.value);
        document.form1.numtable.value.setFocus(true);
    }
    function ControlerCons(form1) {
        ControllechampVide3(document.form1.numconsom.value);
        TesterNumer(document.form1.numconsom.value);
        document.form1.numconsom.value.setFocus(true);
    }
    function ControlerQuant(form1) {
        ControllechampVide4(document.form1.qte_cmd.value);
        document.form1.qte_cmd.value.setFocus(true);
    }
    //CONTROLE TELEPHONE
    function ControlerDate(form1) {
        ControllechampVide5(document.form1.date_cmd.value);
        document.form1.date_cmd.value.setFocus(true);
    }
    function accueil() {
        document.location = "MenuPPALE.jsp";
    }

</script>
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
                            <p align="center"><a href="javascript:accueil()">Accueil</a>>></a>|Gestionnaires de commandes</p>
                            <div style="position:relative;left:680px;" class="lera">
                                <a href="#!" class="secondary-content"><span id='lera_ankavana' title=""></span><i class="material-icons">watch_later</i></a>
                            </div>
                            <hr width="999px">
                        </div>
                        <p style="position:relative;left:670px;"><a href="javascript:accueil()">Retour</a>>||Gestionnaire de commande<p>
                            <br>
                        <div class="card-panel hoverable" style="position:absolute; left:500px; height:600px;border-radius:2px;width:500px;"><a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                            <table width="200" height="300" border="0" align="center">
                                <form name="form1" method="post" action="insert_cmd.jsp">
                                    <tr>
                                        <td width="178" height="68">Numéro:</td>
                                        <td width="358">
                                            <div align="center">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">mode-edit</i>
                                                    <label for="last_name">Commande</label>
                                                    <input type="tel" name="numcmd" id="numcmd" size="42" length="10" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="69">Numero:</td>
                                        <td>
                                            <div align="center">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">mode-edit</i>
                                                    <label for="last_name">Table</label>
                                                    <input type="tel" name="numtable" id="numtable" size="42" length="5" onblur="ControlerNumTab(form1);" required/>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="70">Consommation:</td>
                                        <td>
                                            <div align="center">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">mode-edit</i>
                                                    <label for="last_name">Commande</label>
                                                    <input type="tel" name="numconsom" id="numconsom" size="42"  length="15" onblur="ControlerCons(form1);" required/>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="65">Quantité :</td>
                                        <td>
                                            <div align="center">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">pie-chart</i>
                                                    <label for="last_name">Commande</label>
                                                    <input type="tel" name="qte_cmd" id="qte_cmd" size="42" length="15" onkeyup="ControlerQte(form1);" onblur="ControlerQuant(form1);"   required/>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="65">Date : </td>
                                        <td>
                                            <div align="center">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">pie-chart</i>
                                                    <label for="last_name">Commande</label>
                                                    <input  type="date" name="date_cmd" class="datepicker"/>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><div id="formbouton">
                                         
                                                <label>
                                                    <button class="btn waves-effect waves-light  teal lighten-3" type="submit" name="ajouter">Ajouter
                                                        <i class="material-icons right">send</i>
                                                    </button>
                                                </label> 
                                                
                                                <label>
                                                    <button class="btn waves-effect waves-light red lighten-4" type="reset" name="annuler">Annuler
                                                        <i class="material-icons right">cancel</i>
                                                    </button>
                                                </label> 

                                            </div></td>
                                    </tr>
                            </table>

                        </div>

<!-- end script for materialize  == script y materialized ty mifaragne eto toke-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
    <script>
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year,
    today: 'Ajourd8',
    clear: 'Annuler',
    close: 'Ok',
    closeOnSelect: false // Close upon selecting a date,
  });     
    </script> 
                        </body>
                        </html>


