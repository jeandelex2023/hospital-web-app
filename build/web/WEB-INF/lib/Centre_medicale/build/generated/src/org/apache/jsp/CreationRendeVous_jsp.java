package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreationRendeVous_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("            // code mampivoha y pop up kedekey\n");
      out.write("            function ouvrir() {\n");
      out.write("                fenetre = window.open(\"Vue_listeRendeVous1.jsp\", \"fenetre\",\n");
      out.write("                        \"resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60\")\n");
      out.write("            }\n");
      out.write("            function liste_avec_recherche() {\n");
      out.write("                fenetre = window.open(\"Vue_listeRendeVous.jsp\", \"fenetre\",\n");
      out.write("                        \"resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60\")\n");
      out.write("            }\n");
      out.write("            function liste_avec_import_export() {\n");
      out.write("                fenetre = window.open(\"Vue_listeRendeVous.jsp\", \"fenetre\",\n");
      out.write("                        \"resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60\")\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <body class=\"no-skin\">\n");
      out.write("            <div id=\"navbar\" class=\"navbar navbar-default    navbar-collapse       h-navbar\">\n");
      out.write("                <script type=\"text/javascript\">\n");
      out.write("                    try {\n");
      out.write("                        ace.settings.check('navbar', 'fixed')\n");
      out.write("                    } catch (e) {\n");
      out.write("                    }\n");
      out.write("                </script>\n");
      out.write("\n");
      out.write("                <div class=\"navbar-container\" id=\"navbar-container\">\n");
      out.write("                    <div class=\"navbar-header pull-left\">\n");
      out.write("                        <a href=\"index.html\" class=\"navbar-brand\">\n");
      out.write("                            <small>\n");
      out.write("                                <img src=\"assets/avatars/cmdt.png\" width=\"150px !important\">\n");
      out.write("                            </small>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <button class=\"pull-right navbar-toggle navbar-toggle-img collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\".navbar-buttons,.navbar-menu\">\n");
      out.write("                            <span class=\"sr-only\">Toggle user menu</span>\n");
      out.write("\n");
      out.write("                            <img src=\"assets/avatars/user.jpg\" alt=\"Jason's Photo\" />\n");
      out.write("                        </button>\n");
      out.write("\n");
      out.write("                        <button class=\"pull-right navbar-toggle collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\"#sidebar\">\n");
      out.write("                            <span class=\"sr-only\">Toggle sidebar</span>\n");
      out.write("\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"navbar-buttons navbar-header pull-right  collapse navbar-collapse\" role=\"navigation\">\n");
      out.write("                        <ul class=\"nav ace-nav\">\n");
      out.write("                            <li class=\"light-blue\">\n");
      out.write("                                <a data-toggle=\"dropdown\" href=\"#\" class=\"dropdown-toggle\">\n");
      out.write("                                    <img class=\"nav-user-photo\" src=\"assets/avatars/cmdt.png\" alt=\"Profil du Centre\" />\n");
      out.write("                                    <span class=\"user-info\">\n");
      out.write("                                        Profil d'administrateur\n");
      out.write("                                    </span>\n");
      out.write("\n");
      out.write("                                    <i class=\"ace-icon fa fa-caret-down\"></i>\n");
      out.write("                                </a>\n");
      out.write("\n");
      out.write("                                <ul class=\"user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <i class=\"ace-icon fa fa-cog\"></i>\n");
      out.write("                                            Paramettres\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"profile.html\">\n");
      out.write("                                            <i class=\"ace-icon fa fa-user\"></i>\n");
      out.write("                                            Profile\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("\n");
      out.write("                                    <li class=\"divider\"></li>\n");
      out.write("\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <i class=\"ace-icon fa fa-power-off\"></i>\n");
      out.write("                                            Déconnexion\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div><!-- /.navbar-container -->\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"main-container\" id=\"main-container\">\n");
      out.write("                <script type=\"text/javascript\">\n");
      out.write("                    try {\n");
      out.write("                        ace.settings.check('main-container', 'fixed')\n");
      out.write("                    } catch (e) {\n");
      out.write("                    }\n");
      out.write("                </script>\n");
      out.write("\n");
      out.write("                <div id=\"sidebar\" class=\"sidebar h-sidebar navbar-collapse collapse\">\n");
      out.write("                    <script type=\"text/javascript\">\n");
      out.write("                        try {\n");
      out.write("                            ace.settings.check('sidebar', 'fixed')\n");
      out.write("                        } catch (e) {\n");
      out.write("                        }\n");
      out.write("                    </script>\n");
      out.write("                    <ul class=\"nav nav-list\">\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Form_accueil.jsp\">\n");
      out.write("                                <i class=\"menu-icon fa fa-home\"></i>\n");
      out.write("                                <span class=\"menu-text\"></span>\n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                            <b class=\"arrow\"></b>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <li class=\"\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\">\n");
      out.write("                                <i class=\"menu-icon fa fa-database\"></i>\n");
      out.write("                                <span class=\"menu-text\"> Base de données</span>\n");
      out.write("\n");
      out.write("                                <b class=\"arrow fa fa-angle-down\"></b>\n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                            <b class=\"arrow\"></b>\n");
      out.write("\n");
      out.write("                            <ul class=\"submenu\">\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"#\" onclick=\"ouvrir();\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-eye\"></i>\n");
      out.write("                                        Mise a jour\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"#\" onclick=\"liste_avec_import_export();\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-eye\"></i>\n");
      out.write("                                        Impression\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"#\" onclick=\"liste_avec_recherche();\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-eye\"></i>\n");
      out.write("                                        Recherche\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li> \n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"\">\n");
      out.write("                            <a href=\"Form_accueil.jsp\" class=\"dropdown-toggle\">\n");
      out.write("                                <i class=\"menu-icon fa fa-eye\"></i>\n");
      out.write("                                <span class=\"menu-text\"> Vue enssembles</span>\n");
      out.write("\n");
      out.write("                                <b class=\"arrow fa fa-angle-down\"></b>\n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                            <b class=\"arrow\"></b>\n");
      out.write("\n");
      out.write("                            <ul class=\"submenu\">\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"Form_accueil.jsp\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-caret-right\"></i>\n");
      out.write("                                        Tous mes tâches\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"Form_accueil.jsp\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-caret-right\"></i>\n");
      out.write("                                        Liste enregistre\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"Form_accueil.jsp\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-caret-right\"></i>\n");
      out.write("                                        Enregistrement\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"Form_accueil.jsp\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-caret-right\"></i>\n");
      out.write("                                        Statistique\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li class=\"\">\n");
      out.write("                                    <a href=\"Form_accueil.jsp\">\n");
      out.write("                                        <i class=\"menu-icon fa fa-caret-right\"></i>\n");
      out.write("                                        Tous sauvegarder\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <b class=\"arrow\"></b>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"\">\n");
      out.write("                            <a href=\"Form_accueil.jsp\">\n");
      out.write("                                <i class=\"menu-icon fa fa-list-alt\"></i>\n");
      out.write("                                <span class=\"menu-text\"> Site Map</span>\n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                            <b class=\"arrow\"></b>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <div class=\"sidebar-toggle sidebar-collapse\" id=\"sidebar-collapse\">\n");
      out.write("                            <i class=\"ace-icon fa fa-angle-double-left\" data-icon1=\"ace-icon fa fa-angle-double-left\" data-icon2=\"ace-icon fa fa-angle-double-right\"></i>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <script type=\"text/javascript\">\n");
      out.write("                        try {\n");
      out.write("                            ace.settings.check('sidebar', 'collapsed')\n");
      out.write("                        } catch (e) {\n");
      out.write("                        }\n");
      out.write("                        </script>\n");
      out.write("                </div>\n");
      out.write("            </div><BR><BR><BR><BR><BR>\n");
      out.write("            <div class=\"main-content\">\n");
      out.write("\n");
      out.write("                <div class=\"main-content-inner\">\n");
      out.write("\n");
      out.write("                    <div class=\"page-content\">\n");
      out.write("                        <div class=\"ace-settings-container\" id=\"ace-settings-container\">\n");
      out.write("                            <div class=\"btn btn-app btn-xs btn-warning ace-settings-btn\" id=\"ace-settings-btn\">\n");
      out.write("                                <i class=\"ace-icon fa fa-cog bigger-130\"></i>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"ace-settings-box clearfix\" id=\"ace-settings-box\">\n");
      out.write("                                <div class=\"pull-left width-50\">\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <div class=\"pull-left\">\n");
      out.write("                                            <select id=\"skin-colorpicker\" class=\"hide\">\n");
      out.write("                                                <option data-skin=\"no-skin\" value=\"#438EB9\">#438EB9</option>\n");
      out.write("                                                <option data-skin=\"skin-1\" value=\"#222A2D\">#222A2D</option>\n");
      out.write("                                                <option data-skin=\"skin-2\" value=\"#C6487E\">#C6487E</option>\n");
      out.write("                                                <option data-skin=\"skin-3\" value=\"#D0D0D0\">#D0D0D0</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <span>&nbsp; Choisir paramèttre</span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-navbar\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-navbar\"> Navigation fixée</label>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-sidebar\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-sidebar\"> Navigation gauche (F)</label>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-breadcrumbs\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-breadcrumbs\"> Fixée Breadcrumbs</label>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-rtl\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-rtl\"> Droite à Gauche (G à D)</label>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-add-container\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-add-container\">\n");
      out.write("                                            Au niveau\n");
      out.write("                                            <b>de ma page</b>\n");
      out.write("                                        </label>\n");
      out.write("                                    </div>\n");
      out.write("                                </div><!-- /.pull-left -->\n");
      out.write("\n");
      out.write("                                <div class=\"pull-left width-50\">\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-hover\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-hover\">Survol de la souris</label>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-compact\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-compact\"> Compaté le navigation</label>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"ace-settings-item\">\n");
      out.write("                                        <input type=\"checkbox\" class=\"ace ace-checkbox-2\" id=\"ace-settings-highlight\" />\n");
      out.write("                                        <label class=\"lbl\" for=\"ace-settings-highlight\">Activer les elements</label>\n");
      out.write("                                    </div>\n");
      out.write("                                </div><!-- /.pull-left -->\n");
      out.write("                            </div><!-- /.ace-settings-box -->\n");
      out.write("                        </div><!-- /.ace-settings-container -->\n");
      out.write("\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("                            <h1>\n");
      out.write("                                Panneau d'administration\n");
      out.write("                                <small>\n");
      out.write("                                    <i class=\"ace-icon fa fa-angle-double-right\" ></i>\n");
      out.write("                                    <a href=\"#\" onclick=\"javascript:retour_Form_accueil();\">Page d'Accueil</a>\n");
      out.write("                                </small>\n");
      out.write("                                <small>\n");
      out.write("                                    <i class=\"ace-icon fa fa-angle-double-right\"></i>\n");
      out.write("                                    RENDEZ-VOUS\n");
      out.write("                                </small>\n");
      out.write("                            </h1>\n");
      out.write("                        </div><!-- /.page-header -->\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-12\">\n");
      out.write("                                    <!-- PAGE CONTENT BEGINS -->\n");
      out.write("\n");
      out.write("                                    <div class=\"hidden-sm hidden-xs\">\n");
      out.write("                                        <button type=\"button\" class=\"sidebar-collapse btn btn-white btn-primary\" data-target=\"#sidebar\">\n");
      out.write("                                            <i class=\"ace-icon fa fa-angle-double-up\" data-icon1=\"ace-icon fa fa-angle-double-up\" data-icon2=\"ace-icon fa fa-angle-double-down\"></i>\n");
      out.write("                                            Personnaliser!\n");
      out.write("                                        </button>\n");
      out.write("                                    </div>                   \n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <h4 class=\"white-opaque\">\n");
      out.write("                                        <i class=\"ace-icon fa fa-hand-o-right icon-animated-hand-pointer\"></i>\n");
      out.write("                                        <a href=\"#modal-table\" role=\"button\"  data-toggle=\"modal\">Ouvrir le Formulaire du RENDEZ-VOUS</a>\n");
      out.write("                                    </h4>                   \n");
      out.write("                                    <div id=\"modal-table\" class=\"modal fade\" tabindex=\"-1\">\n");
      out.write("                                        <div class=\"modal-dialog\">\n");
      out.write("                                            <div class=\"modal-content\">\n");
      out.write("                                                <div class=\"modal-header no-padding\">\n");
      out.write("                                                    <div class=\"table-header\">\n");
      out.write("                                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">\n");
      out.write("                                                            <span class=\"white\">&times;</span>\n");
      out.write("                                                        </button>\n");
      out.write("                                                        PANNEAU DE REGLEMENT DES RENDEZ-VOUS\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                <div  class=\"modal-body no-padding\">\n");
      out.write("                                                    <div class=\"widget-body\">\n");
      out.write("                                                        <div class=\"widget-main\">\n");
      out.write("                                                            <div style=\"position:relative;top:20px;\">\n");
      out.write("                                                                <form action=\"serveletRendeVous.jsp\" method=\"POST\">\n");
      out.write("                                                                    <input data-rel=\"tooltip\" type=\"text\" name=\"automatique\"  id=\"form-field-6\" placeholder=\"Identifiant du patient\" title=\"Hello Tooltip!\" data-placement=\"bottom\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                    <div class=\"input-field col s6\">\n");
      out.write("                                                                        <i class=\"material-icons prefix\">perm_contact_calendar</i>\n");
      out.write("                                                                        <label for=\"last_name\"></label>\n");
      out.write("                                                                        <input type=\"date\" name=\"rend_date\" class=\"datepicker\" size=\"50\" placeholder=\"Date du rendez vous\" required/>\n");
      out.write("                                                                    </div>\n");
      out.write("\n");
      out.write("                                                                    <input data-rel=\"tooltip\" type=\"text\" name=\"rend_docConcerne\" id=\"form-field-6\" placeholder=\"Nom et Prenom du Médecin\" title=\"Hello Tooltip!\" data-placement=\"bottom\" required/>\n");
      out.write("                                                                    <input data-rel=\"tooltip\" type=\"text\" name=\"rend_patNumero\" id=\"form-field-6\" placeholder=\"Numéro téléphone\" title=\"Hello Tooltip!\" data-placement=\"bottom\" required/>\n");
      out.write("\n");
      out.write("                                                                    <div style=\"position:relative;margin-left:460px;\">\n");
      out.write("                                                                        <button class=\"btn btn-app btn-grey btn-xs radius-0\" type=\"submit\">\n");
      out.write("                                                                            <i class=\"ace-icon fa fa-floppy-o bigger-100\"></i>\n");
      out.write("                                                                            <span class=\"badge badge-transparent\">\n");
      out.write("                                                                                <i class=\"light-red ace-icon fa fa-asterisk\"></i>\n");
      out.write("                                                                            </span>\n");
      out.write("                                                                        </button>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                </form>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                <div class=\"modal-footer no-margin-top\">\n");
      out.write("                                                    <button class=\"btn btn-sm btn-danger pull-left\" data-dismiss=\"modal\">\n");
      out.write("                                                        <i class=\"ace-icon fa fa-times\"></i>\n");
      out.write("                                                        Fermer\n");
      out.write("                                                    </button>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div><!-- /.modal-content -->\n");
      out.write("                                        </div><!-- /.modal-dialog -->\n");
      out.write("                                    </div><!-- PAGE CONTENT ENDS --> \n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <br />\n");
      out.write("                                    <br />\n");
      out.write("                                    <br />\n");
      out.write("                                    <br />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <!-- PAGE CONTENT ENDS -->\n");
      out.write("                            </div><!-- /.col -->\n");
      out.write("                        </div><!-- /.row -->\n");
      out.write("                    </div><!-- /.page-content -->\n");
      out.write("                </div>\n");
      out.write("            </div><!-- /.main-content -->\n");
      out.write("            <div class=\"fixed-action-btn vertocal\">\n");
      out.write("                <a class=\"btn-floating btn-large teal\">\n");
      out.write("                    <i class=\"large material-icons\">group</i>\n");
      out.write("                </a>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a class=\"btn-floating teal tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de recherche multi option\" href=\"#\" onclick=\"ouvrir();\"><i class=\"material-icons\">search</i></a></li>\n");
      out.write("                    <li><a class=\"btn-floating teal tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste d'import et export d'option\" href=\"#\" onclick=\"liste_avec_import_export();\"><i class=\"material-icons\">import_export</i></a></li>\n");
      out.write("                    <li><a class=\"btn-floating teal tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de medecin version imprimmable\" href=\"#\" onclick=\"liste_avec_recherche();\"><i class=\"material-icons\">print</i></a></li>\n");
      out.write("                    <li><a class=\"btn-floating teal tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de mis à jour et sauvegarde\" href=\"#\" onclick=\"ouvrir();\"><i class=\"material-icons\">update</i></a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
