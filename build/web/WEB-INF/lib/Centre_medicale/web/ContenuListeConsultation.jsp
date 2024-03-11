<%-- 
    Document   : ContenuListeConsultation
    Created on : 9 févr. 2018, 11:23:02
    Author     : Delex
--%>
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
                <a href="index.html" class="navbar-brand">
                    <small>
                        <img src="assets/avatars/cmdt.png" width="190px !important" height="45px">
                    </small>
                </a>
            </div>
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
                    </li>
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
                            Liste d'enregistrement
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="Form_accueil.jsp">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Dernière enregistrer
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="Form_accueil.jsp">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Donnée statistique
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
<br><br><br><br>
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
                        <a href='Form_accueil.jsp'>Page d'Accueil</a><i class="ace-icon fa fa-angle-double-right"></i> Liste
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

