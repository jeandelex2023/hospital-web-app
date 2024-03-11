<%-- 
    Document   : Form_accueil
    Created on : 10 févr. 2018, 19:44:24
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>www.centremedicale.takalou</title>

        <meta name="description" content="overview &amp; stats"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->

        <!-- text fonts -->
        <link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />


        <!-- ace settings handler -->
        <script src="assets/js/ace-extra.min.js"></script>

        <!--Import Google Icon Font-->
        <link href="assets/material/css/icon.css" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="assets/material/css/materialize.min.css"  media="screen,projection"/>


    </head><BR>
    <body class="no-skin" onload='display_ct()'>
        <div id="navbar" class="navbar navbar-default">
            <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
            </script>

            <div class="navbar-container" id="navbar-container">
                <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                    <span class="sr-only">Toggle sidebar</span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>
                </button>

                <div class="navbar-header pull-left" style="position:relative;margin-left:-20px;">
                    <a href="Form_accueil.jsp" class="navbar-brand">
                        <small>
                            <img src="assets/avatars/cmdt.png" width="190px !important" height="45px">
                        </small>
                    </a>
                </div>

                <div class="navbar-buttons navbar-header pull-right" role="navigation">
                    <ul class="nav ace-nav">
                        <li class="">
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
                                    <a href="#">
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

            <div id="sidebar" class="sidebar responsive">
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
                            <span class="menu-text"> Page d'accueil</span>
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
                                        <a href="#">
                                            <i class="menu-icon fa fa-plus"></i>
                                            Médecin
                                        </a>

                                        <b class="arrow"></b>
                                    </li>

                                    <li class="">
                                        <a href="#">
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

                                            Mise à jour listes
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
                                    Sauvegarde et Mise à jour
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="">

                                <a href="CreationDossier.jsp">
                                    <i class="menu-icon fa fa-book"></i>
                                    Dossier
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="">

                                <a href="CreationMedecin.jsp">
                                    <i class="menu-icon fa fa-book"></i>
                                    Medecin
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="CreationPatient.jsp"> 
                                    <i class="menu-icon fa fa-users"></i>
                                    Patients
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="">
                                <a href="#modal-table" role="button"  data-toggle="modal">
                                    Rendez-vous
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="disabled">
                                <a href="#modal-table" role="button"  data-toggle="modal">
                                    <i class="menu-icon fa fa-eye-slash"></i>
                                    Analyse  
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="disabled">
                                <a href="#modal-table" role="button"  data-toggle="modal">
                                    <i class="menu-icon fa glyphicon-euro "></i>
                                    Consultaion
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
                                <a href="#">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Tous mes tâches
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="#">
                                    <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                                    Dossier
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="#">
                                    <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                                    Patients
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="disabled">
                                <a href="#modal-table" role="button"  data-toggle="modal">
                                    <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                                    Analyse
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="disabled">
                                <a href="#modal-table" role="button"  data-toggle="modal">
                                    <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                                    Consultation
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="disabled">
                                <a href="#modal-table" role="button"  data-toggle="modal">
                                    <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                                    Rendez-vous
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="#">
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

            <div class="main-content">
                <div class="main-content-inner">
                    <div class="breadcrumbs" id="breadcrumbs">
                        <script type="text/javascript">
                            try {
                                ace.settings.check('breadcrumbs', 'fixed')
                            } catch (e) {
                            }
                        </script>

                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-home home-icon"></i>
                                <a href="#">Accueil</a>
                            </li>
                            <li class="active">Bienvenue : Docteur</li>
                        </ul><!-- /.breadcrumb -->
                    </div>

                    <br><br>
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
                                Vous êtes ici
                                <small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    page d'accueil d'administrateur
                                </small>
                            </h1><!-- Lera koa toke hoeke -->
                            <div style="position:absolute;left:750px !important; top:20px !important; margin-left:150px !important;">
                                <a href="#!" class="secondary-content"><span id='lera_ankavana' title=""></span></a>
                            </div>
                            <!-- /lera -->
                        </div><!-- /.page-header -->

                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="alert alert-block alert-success">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="ace-icon fa fa-times"></i>
                                    </button>
                                    <i class="ace-icon fa fa-check"></i>
                                    Application web pour la gestion des patients du centre médicale de<a href="#">&nbsp;&nbsp;FORT-DAUPHIN!</a>.                                
                                </div>



                                <div class="hr hr32 hr-dotted"></div>

                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->



            <div id="modal-table" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header no-padding">
                            <div class="table-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <span class="white">&times;</span>
                                </button>
                                PANNEAU D'ADMINISTRATEUR ACCEES CONTRÖLE DES MEDECINS
                            </div>
                        </div>
                        <div  class="modal-body no-padding">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <div id="forgot-box" class="forgot-box widget-box no-border">
                                        <div class="widget-body">
                                            <div class="widget-main">
                                                <div class="space-6"></div>
                                                <p>
                                                    Entrer votre Alias pour commencer: 
                                                </p>

                                                <form method="POST" action="Bienvenue_medecin.jsp">
                                                    <fieldset>
                                                        <label class="block clearfix">
                                                            <span class="block input-icon input-icon-right">
                                                                <input type="text" name="com_nomPrenom" class="form-control" placeholder="Nom d'usage" required/>
                                                                <i class="ace-icon fa fa-user"></i>
                                                            </span>
                                                        </label>

                                                        <label class="block clearfix">
                                                            <span class="block input-icon input-icon-right">
                                                                <input type="password" name="com_motPasse" class="form-control" placeholder="Mots de passe" required/>
                                                                <i class="ace-icon fa fa-lock"></i>
                                                            </span>
                                                        </label>

                                                        <div class="space"></div>

                                                        <div class="clearfix">
                                                            <label class="inline">
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl">S'enregistrer</span>
                                                            </label>

                                                            <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                                <i class="ace-icon fa fa-key"></i>
                                                                <span class="bigger-110">S'identifier</span>
                                                            </button>
                                                        </div>

                                                        <div class="space-4"></div>
                                                    </fieldset>
                                                </form>
                                            </div><!-- eto ty fara'o widget-main amboneo-->
                                        </div><!-- /.widget-body -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer no-margin-top">
                            <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                <i class="ace-icon fa fa-times"></i>
                                Fermer
                            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.ETOAGNE TY FARA Y TAB INDEX AY-->  
            <div class="footer">
                <div class="footer-inner">
                    <div class="footer-content">
                        <span class="bigger-120">
                            <span class="bolder">Application</span>
                            JSP &copy; 2017-2018 par Jean Delex
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
            <a class="btn-floating btn-large blue darken-3">
                <i class="large material-icons">archive</i>
            </a>
            <ul>
                <li><a class="btn-floating red tooltipped" data-position="left" data-delay="50" data-tooltip="Patient......" href="Vue_listePatient.jsp"><i class="material-icons">person</i></a></li>
                <li><a class="btn-floating yellow darken-1 tooltipped" data-position="left" data-delay="50" data-tooltip="Rendez-vous" href="Vue_listeRendeVous.jsp"><i class="material-icons">av_timer</i></a></li>
                <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Dossier..........." href="Vue_listeDossier.jsp"><i class="material-icons">group</i></a></li>
                <li><a class="btn-floating green tooltipped disabled" data-position="left" data-delay="50" data-tooltip="Dossier..........." href="Vue_listeAnalyse.jsp"><i class="material-icons">local_pharmacy</i></a></li>
                <li><a class="btn-floating blue tooltipped disabled" data-position="left" data-delay="50" data-tooltip="Consultation..." href="Vue_listeConsultation.jsp"><i class="material-icons">attach_money</i></a></li>
            </ul>
        </div>
        <script src="assets/js/jquery.2.1.1.min.js"></script>
        <script type="text/javascript">
                            window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
        </script>

        <script type="text/javascript">
            if ('ontouchstart' in document.documentElement)
                document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- ace scripts -->
        <script src="assets/js/ace-elements.min.js"></script>
        <script src="assets/js/ace.min.js"></script>
        <script type="text/javascript">
            function display_c() {
                var refresh = 1000; // Refresh rate in milli seconds
                mytime = setTimeout('display_ct()', refresh)
            }

            function display_ct() {
                var strcount
                var x = new Date()
                document.getElementById('lera_ankavana').innerHTML = x;
                tt = display_c();
            }
        </script>
        <!--Import jQuery before materialize.js--> 
        <script type="text/javascript" src="assets/material/js/jquery.min.js"></script>
        <script type="text/javascript" src="assets/material/js/materialize.min.js"></script>
    </body>
</html>
