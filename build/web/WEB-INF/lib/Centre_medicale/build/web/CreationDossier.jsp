<%-- 
    Document   : CreationDossier
    Created on : 31 janv. 2018, 06:49:57
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>création d'un dossier médicale</title>

        <meta name="description" content="Appliction de memoire L3" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />


        <!--Import Google Icon Font-->
        <link href="assets/material/css/icon.css" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="assets/material/css/materialize.min.css"  media="screen,projection"/>


        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->

        <!-- text fonts -->
        <link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
        <script src="assets/js/ace-extra.min.js"></script>
    </head>
    <script language="javascript">
        // code mampivoha y pop up kedekey
        function ouvrir() {
            fenetre = window.open("Vue_listeDossier.jsp", "fenetre",
                    "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
        }
        function liste_avec_recherche() {
            fenetre = window.open("Vue_listeDossier1.jsp", "fenetre",
                    "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
        }
        function liste_avec_import_export() {
            fenetre = window.open("Vue_listeDossier1.jsp", "fenetre",
                    "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
        }

    </script>
    <body class="no-skin">

        <div id="navbar" class="navbar navbar-default    navbar-collapse       h-navbar">
            <script type="text/javascript">
                try {
                    ace.settings.check('navbar', 'fixed')
                } catch (e) {
                }
            </script>

            <div class="navbar-container" id="navbar-container">
                <div class="navbar-header pull-left">
                    <div class="navbar-header pull-left" style="position:relative;margin-left:-20px;">
                        <a href="Form_accueil.jsp" class="navbar-brand">
                            <small>
                                <img src="assets/avatars/cmdt.png" width="190px !important" height="45px">
                            </small>
                        </a>
                    </div>

                    <button class="pull-right navbar-toggle navbar-toggle-img collapsed" type="button" data-toggle="collapse" data-target=".navbar-buttons,.navbar-menu">
                        <span class="sr-only">Toggle user menu</span>

                        <img src="assets/avatars/user.jpg" alt="Jason's Photo" />
                    </button>

                    <button class="pull-right navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#sidebar">
                        <span class="sr-only">Toggle sidebar</span>

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>
                    </button>
                </div>

                <div class="navbar-buttons navbar-header pull-right  collapse navbar-collapse" role="navigation">
                    <ul class="nav ace-nav">
                        <li class="light-blue">
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                                <img class="nav-user-photo" src="assets/avatars/cmdt.png" alt="Profil du Centre" />
                                <span class="user-info">
                                    Profil d'administrateur
                                </span>

                                <i class="ace-icon fa fa-caret-down"></i>
                            </a>

                            <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                                <li>
                                    <a href="#">
                                        <i class="ace-icon fa fa-cog"></i>
                                        Paramettres
                                    </a>
                                </li>

                                <li>
                                    <a href="profile.html">
                                        <i class="ace-icon fa fa-user"></i>
                                        Profile
                                    </a>
                                </li>

                                <li class="divider"></li>

                                <li>
                                    <a href="#">
                                        <i class="ace-icon fa fa-power-off"></i>
                                        Déconnexion
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div><!-- /.navbar-container -->
        </div>

        <div class="main-container" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.check('main-container', 'fixed')
                } catch (e) {
                }
            </script>

            <div id="sidebar" class="sidebar h-sidebar navbar-collapse collapse">
                <script type="text/javascript">
                    try {
                        ace.settings.check('sidebar', 'fixed')
                    } catch (e) {
                    }
                </script>
                <ul class="nav nav-list">
                    <li class="active">
                        <a href="Form_accueil.jsp">
                            <i class="menu-icon fa fa-home"></i>
                            <span class="menu-text"></span>
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="Form_accueil.jsp" class="dropdown-toggle">
                            <i class="menu-icon fa fa-group"></i>
                            <span class="menu-text">
                                Gestion de groupes
                            </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="Form_accueil.jsp" class="dropdown-toggle">
                                    <i class="menu-icon fa fa-database"></i>

                                    Gérer utilisateurs
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>

                                <b class="arrow"></b>

                                <ul class="submenu">
                                    <li class="">
                                        <a href="Form_accueil.jsp">
                                            <i class="menu-icon fa fa-plus"></i>
                                            Médecin
                                        </a>

                                        <b class="arrow"></b>
                                    </li>

                                    <li class="">
                                        <a href="Form_accueil.jsp">
                                            <i class="menu-icon fa fa-plus"></i>
                                            Pharmacie
                                        </a>

                                        <b class="arrow"></b>
                                    </li>
                                </ul>
                            </li>

                            <li class="">
                                <a href="Form_accueil.jsp" class="dropdown-toggle">
                                    <i class="menu-icon fa fa-caret-right"></i>

                                    Enregistrement
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>

                                <b class="arrow"></b>

                                <ul class="submenu">
                                    <li class="">
                                        <a href="Form_accueil.jsp">
                                            <i class="menu-icon fa fa-eye"></i>
                                            Médecin
                                        </a>

                                        <b class="arrow"></b>
                                    </li>
                                    <li class="">
                                        <a href="Form_accueil.jsp">
                                            <i class="menu-icon fa fa-eye"></i>
                                            Pharmacie
                                        </a>

                                        <b class="arrow"></b>
                                    </li>

                                    <li class="">
                                        <a href="#" class="dropdown-toggle">
                                            <i class="menu-icon fa fa-edit"></i>

                                            Mise à jour
                                            <b class="arrow fa fa-angle-down"></b>
                                        </a>

                                        <b class="arrow"></b>

                                        <ul class="submenu">
                                            <li class="">
                                                <a href="Form_accueil.jsp">
                                                    <i class="menu-icon fa fa-pencil"></i>
                                                    Médecin
                                                </a>

                                                <b class="arrow"></b>
                                            </li>

                                            <li class="">
                                                <a href="Form_accueil.jsp">
                                                    <i class="menu-icon fa fa-pencil"></i>
                                                    Pharmacie
                                                </a>

                                                <b class="arrow"></b>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-database"></i>
                            <span class="menu-text"> Base de données</span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="#" onclick="ouvrir();">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Mise a jour
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="#" onclick="liste_avec_import_export();">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Impression
                                </a>

                                <b class="arrow"></b>
                            </li
                            <li class="">
                            <li class="">
                                <a href="#" onclick="liste_avec_recherche();">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Recherche
                                </a>

                                <b class="arrow"></b>
                            </li>                            

                        </ul>
                    </li>

                    <li class="">
                        <a href="Form_accueil.jsp" class="dropdown-toggle">
                            <i class="menu-icon fa fa-eye"></i>
                            <span class="menu-text"> Vue enssembles</span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="Form_accueil.jsp">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Tous mes tâches
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="Form_accueil.jsp">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Enregistrement
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="Form_accueil.jsp">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Statistiques
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="Form_accueil.jsp">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Tous sauvegarder
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="Form_accueil.jsp">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> Site Map</span>
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                        <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
                    </div>

                    <script type="text/javascript">
                    try {
                        ace.settings.check('sidebar', 'collapsed')
                    } catch (e) {
                    }
                    </script>
            </div>
        </div>
        <BR><BR><BR><BR>
        <div class="main-content">

            <div class="main-content-inner">

                <div class="page-content">
                    <div class="ace-settings-container" id="ace-settings-container">
                        <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                            <i class="ace-icon fa fa-cog bigger-130"></i>
                        </div>
                        <div class="ace-settings-box clearfix" id="ace-settings-box">
                            <div class="pull-left width-50">
                                <div class="ace-settings-item">
                                    <div class="pull-left">
                                        <select id="skin-colorpicker" class="hide">
                                            <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                        </select>
                                    </div>
                                    <span>&nbsp; Choisir paramèttre</span>
                                </div>
                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                                    <label class="lbl" for="ace-settings-navbar"> Navigation fixée</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                                    <label class="lbl" for="ace-settings-sidebar"> Navigation gauche (F)</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                                    <label class="lbl" for="ace-settings-breadcrumbs"> Fixée Breadcrumbs</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                                    <label class="lbl" for="ace-settings-rtl"> Droite à Gauche (G à D)</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                                    <label class="lbl" for="ace-settings-add-container">
                                        Au niveau
                                        <b>de ma page</b>
                                    </label>
                                </div>
                            </div><!-- /.pull-left -->

                            <div class="pull-left width-50">
                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
                                    <label class="lbl" for="ace-settings-hover">Survol de la souris</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
                                    <label class="lbl" for="ace-settings-compact"> Compaté le navigation</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                                    <label class="lbl" for="ace-settings-highlight">Activer les elements</label>
                                </div>
                            </div><!-- /.pull-left -->
                        </div><!-- /.ace-settings-box -->
                    </div><!-- /.ace-settings-container -->


                    <div class="fixed-action-btn toolbar hide-on-med-and-down" style="position:relative;top:-10px;height:70px; margin-left:40px;">
                        <a class="btn-floating btn-large teal">
                            <i class="large material-icons">menu</i>
                        </a>
                        <ul>
                            <li class="waves-effect waves-light"><a href="#!" onclick="ouvrir();"><i class="material-icons">edit</i></a></li>
                            <li class="waves-effect waves-light"><a href="#!" onclick="liste_avec_recherche();"><i class="material-icons">search_list</i></a></li>
                            <li class="waves-effect waves-light"><a href="#!" onclick="liste_avec_import_export();"><i class="material-icons">import_export_list</i></a></li>
                            <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">insert_chart</i></a></li>
                        </ul>
                    </div>

                    <div class="page-header">
                        <h1>
                            Panneau d'administration

                            <small>
                                <i class="ace-icon fa fa-angle-double-right" ></i>
                                <a href="#" onclick="javascript:retour_Form_accueil();">Accueil</a>
                            </small>
                            <small>
                                <i class="ace-icon fa fa-angle-double-right"></i>
                                DOSSIER
                            </small>
                        </h1>
                    </div><!-- /.page-header -->
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->

                                <div class="hidden-sm hidden-xs">
                                    <button type="button" class="sidebar-collapse btn btn-white btn-primary" data-target="#sidebar">
                                        <i class="ace-icon fa fa-angle-double-up" data-icon1="ace-icon fa fa-angle-double-up" data-icon2="ace-icon fa fa-angle-double-down"></i>
                                        Personnaliser!
                                    </button>
                                </div>
                                <div class="card hoverable" style="position:absolute; height:700px; width:500px; margin-left:300px; margin-top:-30px;">

                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4" id="DivClignotante"><i class="material-icons right">developer_mode</i></span>
                                        <p>
                                            <span class="help-button" title="Si vous allez passer une nouvelle enregistrement, vous devez maintenir la souris sur le clignotant!!, NB: Dans le cas ou vous ne comprenez rien, veuillez contacter: 034 32 490 07">?</span>
                                            <a href="#">&nbsp;&nbsp;Maintenir sur le clignotant pour commencer l'enregistrement</a>
                                        </p>

                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">add</i></a><i class="material-icons right">close</i></span>

                                        <form action="serveletDossier.jsp" method="POST">
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <input type="hidden" name="automatique"/>
                                                    <i class="material-icons prefix">call</i>
                                                    <label for="last_name">CELL NO: +261</label>
                                                    <input type="text" name="dos_numeroPhone" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">group</i>
                                                    <label for="last_name">SURNAME & NAME CHILD</label>
                                                    <input type="text" name="dos_nomPrenom" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">person</i>
                                                    <label for="last_name">MOTHER:</label>
                                                    <input type="text" name="dos_mere" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">person</i>
                                                    <label for="last_name">FATHER:</label>
                                                    <input type="text" name="dos_pere" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <label for="last_name">:</label>
                                                    <i class="material-icons prefix">face</i>
                                                    <input type="date" name="dos_dateNaissance"/>  
                                                </div>
                                                <div class="input-field col s6" style="position:relative !important;left:30px !important;width:210px !important;">
                                                    <select name="dos_nationalite" class="form-control" id="form-field-select-1">
                                                        <option value="">NATIONALITY:</option>
                                                        <option value="Malagasy">Malagasy</option>
                                                        <option value="Français">Français</option>
                                                        <option value="Malagasy">Anglais</option>
                                                        <option value="Français">Italien</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6" style="position:relative !important;left:30px !important;width:210px !important;">
                                                    <select name="dos_sexe" class="form-control" id="form-field-select-1">
                                                        <option value="">SEX</option>
                                                        <option value="Femme">Femme</option>
                                                        <option value="Homme">Homme</option>
                                                    </select>
                                                </div>
                                                <div class="input-field col s6" style="position:relative !important;left:28px !important;width:218px !important;">
                                                    <i class="material-icons prefix">home</i>
                                                    <label for="last_name">ADRESS:</label>
                                                    <input type="text" name="dos_adresse" required/>
                                                </div> 
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_hospital</i>
                                                    <label for="last_name">MEDICAL INSURANCE:</label>
                                                    <input type="text" name="dos_insurranceMedicale" id="numcmd" size="45" length="50" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_hospital</i>
                                                    <label for="last_name">VACCINATIONS:</label>
                                                    <input type="text" name="dos_vaccine" id="numcmd" size="45" length="50" required/>  
                                                </div> 
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_hospital</i>
                                                    <label for="last_name">MED.INSURANCE NO:</label>
                                                    <input type="text" name="dos_numInsurrance" id="numcmd" size="45" length="50" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_pharmacy</i>
                                                    <label for="last_name">PAST MEDICAL HISTORY:</label>
                                                    <input type="text" name="dos_medicaleHistorique" id="numcmd" size="45" length="50" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_pharmacy</i>
                                                    <label for="last_name">PAST SURGICAL HISTORY:</label>
                                                    <input type="text" name="dos_surgicaleHistorique" id="numcmd" size="45" length="50" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_pharmacy</i>
                                                    <label for="last_name">CHRONIC MEDICATION:</label>
                                                    <input type="text" name="dos_chroniqueMedicale" id="numcmd" size="45" length="50" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_pharmacy</i>
                                                    <label for="last_name">ALERGIE:</label>
                                                    <input type="text" name="dos_alergie" id="numcmd" size="45" length="50" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_hospital</i>
                                                    <label for="last_name">DEVELOPPEMENTAL</label>
                                                    <input type="text" name="dos_devlpNaissance" required/>
                                                </div>
                                            </div>
                                            <div class="row" style="position:relative; margin-left:90px! important;">
                                                <div class="input-field col s6">
                                                    <label>
                                                        <button class="btn waves-effect waves-light  cyan darken-2" type="submit">Créer
                                                            <i class="material-icons right">send</i>
                                                        </button>
                                                    </label>
                                                </div>
                                                <div class="input-field col 8">
                                                    <label>
                                                        <button class="btn waves-effect waves-light red lighten-3" type="reset">Annuler
                                                            <i class="material-icons right">cancel</i>
                                                        </button>
                                                    </label> 
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="center">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </div>

                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->
            <div class="footer">
                <div class="footer-inner">
                    <div class="footer-content">
                        <span class="bigger-120">
                            <span color="blue">Application</span>
                            TAKALOU &copy; 2017-2018 par Jean Delex
                        </span>
                        &nbsp; &nbsp;
                        <span class="action-buttons">
                            <a href="#">
                                <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                            </a>
                        </span>
                    </div>
                </div>
            </div>
            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
            </a>
        </div><!-- /.main-container -->
        <div class="fixed-action-btn vertocal">
            <a class="btn-floating btn-large teal darken-3">
                <i class="large material-icons">group</i>
            </a>
            <ul>
                <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de recherche multi option" href="Vue_listeDossier1.jsp"><i class="material-icons">search</i></a></li>
                <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste d'import et export d'option" href="Vue_listeDossier1.jsp"><i class="material-icons">import_export</i></a></li>
                <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de medecin version imprimmable" href="Vue_listeDossier1.jsp"><i class="material-icons">print</i></a></li>
                <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de mis à jour et sauvegarde" href="Vue_listeDossier.jsp"><i class="material-icons">update</i></a></li>
            </ul>
        </div>
        <script type="text/javascript">
                    window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
        </script>

        <script type="text/javascript">
            if ('ontouchstart' in document.documentElement)
                document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- page specific plugin scripts -->

        <!-- ace scripts -->
        <script src="assets/js/ace-elements.min.js"></script>
        <script src="assets/js/ace.min.js"></script>

        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function($) {
                var $sidebar = $('.sidebar').eq(0);
                if (!$sidebar.hasClass('h-sidebar'))
                    return;

                $(document).on('settings.ace.top_menu', function(ev, event_name, fixed) {
                    if (event_name !== 'sidebar_fixed')
                        return;

                    var sidebar = $sidebar.get(0);
                    var $window = $(window);

                    //return if sidebar is not fixed or in mobile view mode
                    var sidebar_vars = $sidebar.ace_sidebar('vars');
                    if (!fixed || (sidebar_vars['mobile_view'] || sidebar_vars['collapsible'])) {
                        $sidebar.removeClass('lower-highlight');
                        //restore original, default marginTop
                        sidebar.style.marginTop = '';

                        $window.off('scroll.ace.top_menu')
                        return;
                    }


                    var done = false;
                    $window.on('scroll.ace.top_menu', function(e) {

                        var scroll = $window.scrollTop();
                        scroll = parseInt(scroll / 4);//move the menu up 1px for every 4px of document scrolling
                        if (scroll > 17)
                            scroll = 17;


                        if (scroll > 16) {
                            if (!done) {
                                $sidebar.addClass('lower-highlight');
                                done = true;
                            }
                        }
                        else {
                            if (done) {
                                $sidebar.removeClass('lower-highlight');
                                done = false;
                            }
                        }

                        sidebar.style['marginTop'] = (17 - scroll) + 'px';
                    }).triggerHandler('scroll.ace.top_menu');

                }).triggerHandler('settings.ace.top_menu', ['sidebar_fixed', $sidebar.hasClass('sidebar-fixed')]);

                $(window).on('resize.ace.top_menu', function() {
                    $(document).triggerHandler('settings.ace.top_menu', ['sidebar_fixed', $sidebar.hasClass('sidebar-fixed')]);
                });


            });
        </script>
        <script type="text/javascript">
            var clignotement = function() {
                if (document.getElementById('DivClignotante').style.visibility == 'visible') {
                    document.getElementById('DivClignotante').style.visibility = 'hidden';
                }
                else {
                    document.getElementById('DivClignotante').style.visibility = 'visible';
                }
            };

            // appelava io hoeke'o function ambone reo isake ty 0.8 secondes
            // afak'afahagne O clignontant eo, io ty code'e : clearInterval(periode);
            periode = setInterval(clignotement, 3000);
        </script> 
        <!--Import jQuery before materialize.js--> 
        <script type="text/javascript" src="assets/material/js/jquery.min.js"></script>
        <script type="text/javascript" src="assets/material/js/materialize.min.js"></script>
    </body>
</html>
