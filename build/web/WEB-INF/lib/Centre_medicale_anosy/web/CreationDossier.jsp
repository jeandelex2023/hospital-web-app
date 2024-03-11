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

        <meta name="description" content="top menu &amp; navigation" />
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
                    <a href="index.html" class="navbar-brand">
                        <small>
                            <i class="fa fa-leaf"></i>
                            <img src="assets/avatars/cmdt.png" width="150px !important">
                        </small>
                    </a>

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

                <!-- /.sidebar-shortcuts -->

                <ul class="nav nav-list">
                    <li class="active">
                        <a href="index.html">
                            <i class="menu-icon fa fa-home"></i>
                            <span class="menu-text"><<=Retour</span>
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-group"></i>
                            <span class="menu-text">
                                Gestion de groupes
                            </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa fa-database"></i>

                                    Gérer utilisateurs
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>

                                <b class="arrow"></b>

                                <ul class="submenu">
                                    <li class="">
                                        <a href="top-menu.html">
                                            <i class="menu-icon fa fa-plus"></i>
                                            Médecin
                                        </a>

                                        <b class="arrow"></b>
                                    </li>

                                    <li class="">
                                        <a href="two-menu-1.html">
                                            <i class="menu-icon fa fa-plus"></i>
                                            Pharmacie
                                        </a>

                                        <b class="arrow"></b>
                                    </li>
                                </ul>
                            </li>

                            <li class="">
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa fa-caret-right"></i>

                                    Liste d'enregistrer
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>

                                <b class="arrow"></b>

                                <ul class="submenu">
                                    <li class="">
                                        <a href="#">
                                            <i class="menu-icon fa fa-eye"></i>
                                            Médecin
                                        </a>

                                        <b class="arrow"></b>
                                    </li>
                                    <li class="">
                                        <a href="#">
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
                                                <a href="#">
                                                    <i class="menu-icon fa fa-pencil"></i>
                                                    Médecin
                                                </a>

                                                <b class="arrow"></b>
                                            </li>

                                            <li class="">
                                                <a href="#">
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
                                <a href="#">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Créer une fiche
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="#">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Créer un dossier
                                </a>

                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-eye"></i>
                            <span class="menu-text"> Vue enssembles</span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="form-elements.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Tous mes tâches
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="form-elements-2.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Liste Enregistrer
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="form-wizard.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Dernière enregistrer
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="wysiwyg.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Donnée statistique
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="dropzone.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Sauvergarde tous
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="widgets.html">
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

                    <div class="page-header">
                        <h1>
                            Panneau d'administration
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
                                        <span class="card-title activator grey-text text-darken-4" id="DivClignotante"><i class="material-icons right">announcement</i></span>
                                        <p>
                                            <span class="help-button" title="Si vous allez passer une nouvelle enregistrement, vous devez maintenir la souris sur le clignotant!!, NB: Dans le cas ou vous ne comprenez rien, veuillez contacter: 034 32 490 07">?</span>
                                            <a href="#">&nbsp;&nbsp;Maintenir sur le clignotant pour commencer l'enregistrement</a>
                                        </p>

                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">add</i></a><i class="material-icons right">close</i></span>

                                        <form class="col s12" action="ListeDossierInserer.jsp" method="post">
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">call</i>
                                                    <label for="last_name">CELL NO: +261</label>
                                                    <input type="tel" name="dos_numeroPhone" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">call</i>
                                                    <label for="last_name">CELL NO: +261</label>
                                                    <input type="tel" name="dos_nomPrenom" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">person</i>
                                                    <label for="last_name">MOTHER:</label>
                                                    <input type="tel" name="dos_mere" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">person</i>
                                                    <label for="last_name">FATHER:</label>
                                                    <input type="tel" name="dos_pere" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">face</i>
                                                    <input type="date" name="dos_dateNaissance"/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">flag</i>
                                                    <label for="last_name">NATIONALITY:</label>
                                                    <input type="tel" name="dos_nationalite" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">low_priority</i>
                                                    <label for="last_name">SEX:</label>
                                                    <input type="tel" name="dos_sexe" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">home</i>
                                                    <label for="last_name">ADRESSE:</label>
                                                    <input type="tel" name="dos_adresse" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_hospital</i>
                                                    <label for="last_name">MEDICALE INSURANCE:</label>
                                                    <input type="tel" name="dos_insurranceMedicale" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_pharmacy</i>
                                                    <label for="last_name">CACCINATIONS:</label>
                                                    <input type="tel" name="dos_vaccine" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">loop</i>
                                                    <label for="last_name">MED.INSURANCE NO:</label>
                                                    <input type="tel" name="dos_numInsurrance" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_hospital</i>
                                                    <label for="last_name">PAST MEDICAL HISTORY:</label>
                                                    <input type="tel" name="dos_medicaleHistorique" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_pharmacy</i>
                                                    <label for="last_name">PAST SURGICAL HISTORY:</label>
                                                    <input type="tel" name="dos_surgicaleHistorique" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_hospital</i>
                                                    <label for="last_name">CHRONIC MEDICATION:</label>
                                                    <input type="tel" name="dos_chroniqueMedicale" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                                <div class="input-field col s6">
                                                    <i class="material-icons prefix">local_pharmacy</i>
                                                    <label for="last_name">ALERGIES:</label>
                                                    <input type="tel" name="dos_alergie" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col12">
                                                    <i class="material-icons prefix">group</i>
                                                    <label for="last_name">BIRTH & DEVELOPMENTAL HISTORY:</label>
                                                    <input type="tel" name="dos_devlpNaissance" id="numcmd" size="45" length="50" onblur="ControlerNumCmd(form1);" required/>  
                                                </div>
                                            </div>

                                            <div class="row" style="position:relative; margin-left:90px! important;">
                                                <div class="input-field col s6">
                                                    <label>
                                                        <button class="btn waves-effect waves-light  cyan darken-2" type="submit" name="ajouter">Créer
                                                            <i class="material-icons right">send</i>
                                                        </button>
                                                    </label>
                                                </div>
                                                <div class="input-field col 8">
                                                    <label>
                                                        <button class="btn waves-effect waves-light red lighten-3" type="reset" name="annuler">Annuler
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
                            <span class="blue bolder">Application</span>
                            TAKALOU &copy; 2017-2018 par Jean Delex
                        </span>
                        &nbsp; &nbsp;
                        <span class="action-buttons">
                            <a href="#">
                                <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
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
            <a class="btn-floating btn-large blue darken-3">
                <i class="large material-icons">person</i>
            </a>
            <ul>
                <li><a class="btn-floating red tooltipped" data-position="left" data-delay="50" data-tooltip="Données statistique...."><i class="material-icons">insert_chart</i></a></li>
                <li><a class="btn-floating yellow darken-1 tooltipped" data-position="left" data-delay="50" data-tooltip="Sauvegarder et exportater.."><i class="material-icons">share</i></a></li>
                <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Sauvegarder et Copier...."><i class="material-icons">cloud</i></a></li>
                <li><a class="btn-floating blue tooltipped" data-position="left" data-delay="50" data-tooltip="Chercher un Enregistrement" href="index.php"><i class="material-icons">search</i></a></li>
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
