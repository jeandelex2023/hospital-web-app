<%-- 
    Document   : Vue_listeMedecin
    Created on : 13 févr. 2018, 16:30:44
    Author     : Delex
--%>
<%@page import="java.sql.ResultSet"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
        if (!confirm("Es-tu certain de vouloir accéder à cette page ? Clique sur OK pour continuer ou Annuler pour retourner à la page précédente"))
            history.go(-1);
    </script>
    <jsp:include page="header_liste.jsp"></jsp:include>
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
                    alert('Veuillez selectionner au plus une seule enregistrement de la liste souhaitez-vous à supprimer!!');
                else if (exist >= 1)
                    if (confirm('Si vous allez supprimer cet élement, vous risque de perdre son contenu!!\n \n \f NB: Effectuer pour\t [ OK ou ANNULER ]:\n \n \f -OK :: Pour éliminer cet élement! \n \n \f - Annuler :: Pour garder encore cet élement!'))
                        document.location = "Supprimer_listeConsultation.jsp?nbsuppr=" + exist + ident;
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
                    alert('Veuillez selectionner au plus une seule enregistrement de la liste souhaitez-vous à modifier!');
                else
                if (exist > 1)
                    alert('Veuillez selectionner un seul enregistrement !');
                else if (exist == 1) {
                    if (confirm('Vous êtes entrain de mêtre à jour une liste qui vient d/être sélectionner!! \n \n \f NB: Apuiez sur \t [ OK ou ANNULER ]:\n \n \f -OK :: Pour effectuer le changement ! \n \n \f - Annuler :: Pour ne pas changer !'))
                        document.location = "form_modif_dossier.jsp?code=" + ident;
                }
            }

            //    misy karazana roa ny fanaovana impression, ray le code comment io de ray le lavai o       
            function excel() {
                //            var htmltable= document.getElementById('clips_table');
                //            var html = htmltable.outerHTML;
                //            window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));

                var tab_text = "<table border='2px'><tr bgcolor='#87AFC6'>";
                var textRange;
                var j = 0;
                tab = document.getElementById('dynamic-table'); // id of table

                for (j = 0; j < tab.rows.length; j++)
                {
                    tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
                    //tab_text=tab_text+"</tr>";
                }

                tab_text = tab_text + "</table>";
                tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
                tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
                tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

                var ua = window.navigator.userAgent;
                var msie = ua.indexOf("MSIE ");

                if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
                {
                    txtArea1.document.open("txt/html", "replace");
                    txtArea1.document.write(tab_text);
                    txtArea1.document.close();
                    txtArea1.focus();
                    sa = txtArea1.document.execCommand("SaveAs", true, "Say Thanks to Sumit.xls");
                }
                else                 //other browser not tested on IE 11
                    sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

                return (sa);

            }
            function selectElementContents(el) {
                var body = document.body, range, sel;
                if (document.createRange && window.getSelection) {
                    range = document.createRange();
                    sel = window.getSelection();
                    sel.removeAllRanges();
                    try {
                        range.selectNodeContents(el);
                        sel.addRange(range);
                    } catch (e) {
                        range.selectNode(document.getElementById(el));
                        sel.addRange(range);
                    }
                } else if (body.createTextRange) {
                    range = body.createTextRange();
                    range.moveToElementText(el);
                    range.select();
                }
            }

        </script>
    <jsp:useBean id="gestionMDC" scope="session" class="gestion.GestionMedecin" />
    <%
        ResultSet res = gestionMDC.getAll();
        int i = 0;
    %>
            <script language="javascript">
            // code mampivoha y pop up kedekey
            function ouvrir() {
                fenetre = window.open("Vue_listeMedecin1.jsp", "fenetre",
                        "resizable=no,crollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }
            function liste_avec_recherche() {
                fenetre = window.open("Vue_listeMedecin.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }
            function liste_avec_import_export() {
                fenetre = window.open("Vue_listeMedecin.jsp", "fenetre",
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
                                    Liste Enregistrer
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
                        <a href="#S">
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
                            Panneau d'administration des listes
                            <small>
                                <i class="ace-icon fa fa-angle-double-right"></i>
                                <a href='CreationMedecin.jsp'>Medecin </a><i class="ace-icon fa fa-angle-double-right"></i> Liste
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


            <div class="row">
                <div class="col-xs-12">
                    <div class="clearfix">
                        <div class="pull-right tableTools-container"></div>
                    </div>
                    <div class="table-header">
                        Resultat pour "Les dernières enregistrements MEDECIN"
                    </div>

                    <!-- div.table-responsive -->

                    <!-- div.dataTables_borderWrap -->
                    <div>
                        <form id="form1" name="form1" method="post" action="">
                            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Matricule</th>
                                        <th>Nom/Prenom</th>

                                        <th>Nationalite</th>
                                        <th>Indice</th>
                                        <th>Date debut d'Embauche</th>
                                        <th>Date de fin d'Embauche</th>
                                        <th class="hidden-480">Contacte</th>

                                    </tr>
                                </thead>

                                <tbody>
                                <% while (res.next()) {%>
                                <tr>


                                    <td>
                                        <a href="#"><%=res.getString("med_matricule")%><input type="hidden" name="id<%=i%>" value="<%=res.getString("med_matricule")%>"/></a>
                                    </td>
                                    <td><%=res.getString("med_nomPrenom")%></td>
                                    <td><%=res.getString("med_nationalite")%></td>
                                    <td><%=res.getString("med_indice")%></td>
                                    <td><%=res.getString("med_datebutEmbauche")%></td>
                                    <td><%=res.getString("med_datefinEmbauche")%></td>

                                    <td class="hidden-480"><%=res.getString("med_contact")%></td>


                                </tr>
                                <%i++;%>
                                <%}%>
                            </tbody>
                        </table>
                        <button class="btn waves-effect waves-light" type="button" name="Modifier" disabled='' onclick="javascript:modifier_matie(<%out.print(i);%>);">Modification
                            <i class="material-icons right"></i>
                        </button>
                        &nbsp;
                        <button class="btn waves-effect waves-light" type="button" name="Submit2" disabled='' onclick="javascript:supprimer_mati(<%out.print(i);%>);">Suppression
                            <i class="material-icons right"></i>
                        </button>
                        &nbsp;
                        <button class="btn waves-effect waves-light" type="button"  onclick='excel()'>Exporter......
                            <i class="material-icons right"></i>
                        </button>
                        &nbsp;
                        <button class="btn waves-effect waves-light" type="button"  onclick="selectElementContents('dynamic-table');">Copier..... 
                            <i class="material-icons left"></i>
                        </button>
                        &nbsp;&nbsp;&nbsp;          
                        <button class="btn waves-effect waves-light" type="button"  onclick="window.print();">Imprimer..... 
                            <i class="material-icons left"></i>
                        </button>
                    </form>                         
                </div>
            </div>
        </div>
        <jsp:include page="footer_liste.jsp"></jsp:include>
        <script type="text/javascript">
            window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
        </script>
        <script type="text/javascript">
            if ('ontouchstart' in document.documentElement)
                document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- page specific plugin scripts -->
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
        <script src="assets/js/dataTables.tableTools.min.js"></script>
        <script src="assets/js/dataTables.colVis.min.js"></script>

        <!-- ace scripts -->
        <script src="assets/js/ace-elements.min.js"></script>
        <script src="assets/js/ace.min.js"></script>

        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function($) {
                //initiate dataTables plugin
                var oTable1 =
                        $('#dynamic-table')
                        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                        .dataTable({
                    bAutoWidth: false,
                    "aoColumns": [
                        {"bSortable": false},
                        null, null, null, null, null,
                        {"bSortable": false}
                    ],
                    "aaSorting": [],
                    //,
                    //"sScrollY": "200px",
                    //"bPaginate": false,

                    //"sScrollX": "100%",
                    //"sScrollXInner": "120%",
                    //"bScrollCollapse": true,
                    //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                    //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                    //"iDisplayLength": 50
                });
                //oTable1.fnAdjustColumnSizing();


                //TableTools settings
                TableTools.classes.container = "btn-group btn-overlap";
                TableTools.classes.print = {
                    "body": "DTTT_Print",
                    "info": "tableTools-alert gritter-item-wrapper gritter-info gritter-center white",
                    "message": "tableTools-print-navbar"
                }

                //initiate TableTools extension
                var tableTools_obj = new $.fn.dataTable.TableTools(oTable1, {
                    "sSwfPath": "assets/swf/copy_csv_xls_pdf.swf",
                    "sRowSelector": "td:not(:last-child)",
                    "sRowSelect": "multi",
                    "fnRowSelected": function(row) {
                        //check checkbox when row is selected
                        try {
                            $(row).find('input[type=checkbox]').get(0).checked = true
                        }
                        catch (e) {
                        }
                    },
                    "fnRowDeselected": function(row) {
                        //uncheck checkbox
                        try {
                            $(row).find('input[type=checkbox]').get(0).checked = false
                        }
                        catch (e) {
                        }
                    },
                    "sSelectedClass": "success",
                    "aButtons": [
                        {
                            "sExtends": "copy",
                            "sToolTip": "Copy to clipboard",
                            "sButtonClass": "btn btn-white btn-primary btn-bold",
                            "sButtonText": "<i class='fa fa-copy bigger-110 pink'></i>",
                            "fnComplete": function() {
                                this.fnInfo('<h3 class="no-margin-top smaller">Table copied</h3>\
                                                                <p>Copied ' + (oTable1.fnSettings().fnRecordsTotal()) + ' row(s) to the clipboard.</p>',
                                        1500
                                        );
                            }
                        },
                        {
                            "sExtends": "csv",
                            "sToolTip": "Export to CSV",
                            "sButtonClass": "btn btn-white btn-primary  btn-bold",
                            "sButtonText": "<i class='fa fa-file-excel-o bigger-110 green'></i>"
                        },
                        {
                            "sExtends": "pdf",
                            "sToolTip": "Export to PDF",
                            "sButtonClass": "btn btn-white btn-primary  btn-bold",
                            "sButtonText": "<i class='fa fa-file-pdf-o bigger-110 red'></i>"
                        },
                        {
                            "sExtends": "print",
                            "sToolTip": "Pour l'Impression",
                            "sButtonClass": "btn btn-white btn-primary  btn-bold",
                            "sButtonText": "<i class='fa fa-print bigger-110 grey'></i>",
                            "sMessage": "<div class='navbar navbar-default'><div class='navbar-header pull-left'><a class='navbar-brand' href='#'><small>LISTE IMPRIMMABLE</small></a></div></div>",
                            "sInfo": "<h3 class='no-margin-top'>Impression</h3>\
                                                                  <p>SVP utiliser votre fonction de navigateur d'impression pour pouvoir\
                                                                  imprimer cet Table.\
                                                                  <br />Press <b>escape</b> when finished.</p>",
                        }
                    ]
                });
                //we put a container before our table and append TableTools element to it
                $(tableTools_obj.fnContainer()).appendTo($('.tableTools-container'));

                //also add tooltips to table tools buttons
                //addding tooltips directly to "A" buttons results in buttons disappearing (weired! don't know why!)
                //so we add tooltips to the "DIV" child after it becomes inserted
                //flash objects inside table tools buttons are inserted with some delay (100ms) (for some reason)
                setTimeout(function() {
                    $(tableTools_obj.fnContainer()).find('a.DTTT_button').each(function() {
                        var div = $(this).find('> div');
                        if (div.length > 0)
                            div.tooltip({container: 'body'});
                        else
                            $(this).tooltip({container: 'body'});
                    });
                }, 200);



                //ColVis extension
                var colvis = new $.fn.dataTable.ColVis(oTable1, {
                    "buttonText": "<i class='fa fa-search'></i>",
                    "aiExclude": [0, 6],
                    "bShowAll": true,
                    //"bRestore": true,
                    "sAlign": "right",
                    "fnLabel": function(i, title, th) {
                        return $(th).text();//remove icons, etc
                    }

                });

                //style it
                $(colvis.button()).addClass('btn-group').find('button').addClass('btn btn-white btn-info btn-bold')

                //and append it to our table tools btn-group, also add tooltip
                $(colvis.button())
                        .prependTo('.tableTools-container .btn-group')
                        .attr('title', 'Trier et Chercher par catégorie!').tooltip({container: 'body'});

                //and make the list, buttons and checkboxed Ace-like
                $(colvis.dom.collection)
                        .addClass('dropdown-menu dropdown-light dropdown-caret dropdown-caret-right')
                        .find('li').wrapInner('<a href="javascript:void(0)" />') //'A' tag is required for better styling
                        .find('input[type=checkbox]').addClass('ace').next().addClass('lbl padding-8');



                /////////////////////////////////
                //table checkboxes
                $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

                //select/deselect all rows according to table header checkbox
                $('#dynamic-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
                    var th_checked = this.checked;//checkbox inside "TH" table header

                    $(this).closest('table').find('tbody > tr').each(function() {
                        var row = this;
                        if (th_checked)
                            tableTools_obj.fnSelect(row);
                        else
                            tableTools_obj.fnDeselect(row);
                    });
                });

                //select/deselect a row when the checkbox is checked/unchecked
                $('#dynamic-table').on('click', 'td input[type=checkbox]', function() {
                    var row = $(this).closest('tr').get(0);
                    if (!this.checked)
                        tableTools_obj.fnSelect(row);
                    else
                        tableTools_obj.fnDeselect($(this).closest('tr').get(0));
                });




                $(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
                    e.stopImmediatePropagation();
                    e.stopPropagation();
                    e.preventDefault();
                });


                //And for the first simple table, which doesn't have TableTools or dataTables
                //select/deselect all rows according to table header checkbox
                var active_class = 'active';
                $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
                    var th_checked = this.checked;//checkbox inside "TH" table header

                    $(this).closest('table').find('tbody > tr').each(function() {
                        var row = this;
                        if (th_checked)
                            $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                        else
                            $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
                    });
                });

                //select/deselect a row when the checkbox is checked/unchecked
                $('#simple-table').on('click', 'td input[type=checkbox]', function() {
                    var $row = $(this).closest('tr');
                    if (this.checked)
                        $row.addClass(active_class);
                    else
                        $row.removeClass(active_class);
                });



                /********************************/
                //add tooltip for small view action buttons in dropdown menu
                $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

                //tooltip placement on right or left
                function tooltip_placement(context, source) {
                    var $source = $(source);
                    var $parent = $source.closest('table')
                    var off1 = $parent.offset();
                    var w1 = $parent.width();

                    var off2 = $source.offset();
                    //var w2 = $source.width();

                    if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
                        return 'right';
                    return 'left';
                }

            })
        </script>
    </body>
</html>
