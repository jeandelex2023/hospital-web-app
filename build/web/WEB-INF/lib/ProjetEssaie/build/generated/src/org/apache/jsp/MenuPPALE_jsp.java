package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MenuPPALE_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "entete.jsp", out, false);
      out.write("\r\n");
      out.write("        <body onload='display_ct();'>\r\n");
      out.write("            <aside id=\"left-sidebar-nav\">\r\n");
      out.write("                <ul id=\"slide-out\" class=\"side-nav fixed leftside-navigation ps-container ps-active-y\" style=\"left: 0px; height: 636px;\">\r\n");
      out.write("                    <li class=\"user-details blue-grey\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col col s8 m8 l8\">\r\n");
      out.write("                                <a class=\"btn-flat dropdown-button waves-effect waves-light white-text profile-btn\" href=\"#\" data-activates=\"profile-dropdown\"><i class=\"material-icons\">school</i></a><ul id=\"profile-dropdown\" class=\"dropdown-content\" style=\"width: 128px; position: absolute; top: 57px; left: 101.234px; opacity: 1; display: none;\">\r\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-action-face-unlock\"></i> Profile</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-action-settings\"></i>Gérer</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-communication-live-help\"></i>Aides</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-hardware-keyboard-tab\"></i>Deconnection</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"no-padding\">\r\n");
      out.write("                        <ul class=\"collapsible collapsible-accordion\">\r\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header waves-effect waves-cyan\"><i class=\"large material-icons\">settings</i>Paramétrage</a>\r\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li><a href=\"\">Ecran Plain</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Ecran Normale</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"no-padding\">\r\n");
      out.write("                        <ul class=\"collapsible collapsible-accordion\">\r\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header waves-effect waves-cyan\"><i class=\"large material-icons\">sync</i>Complément</a>\r\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li><a href=\"\">Table1</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Table2</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Table3</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Table4</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Table5</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Table6</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">format_color_fill</i>Préférences </a>\r\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li><a href=\"\">Couleur1</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Couleur2</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Couleur3</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">compare_arrows</i>Mes Tâches</a>\r\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li><a href=\"\">Couleur1</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Couleur2</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Couleur3</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\t\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">show_chart</i>Statistiques</a>\r\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li><a href=\"\">Table11</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Table2</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li><a href=\"\">Table3</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\t\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"divider\"></li>\t\t\t\t\t\t \r\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">map</i>Site Map</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            </aside>\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <p align=\"center\">Page d'accueil d'administrateur:>>|<a href=\"javascript:accueil()\">Accueil</a></p>\r\n");
      out.write("                                <div style=\"position:relative;left:680px;\" class=\"lera\">\r\n");
      out.write("                                    <a href=\"#!\" class=\"secondary-content\"><span id='lera_ankavana' title=\"\"></span><i class=\"material-icons\">watch_later</i></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <hr width=\"999px\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <p style=\"position:relative;left:600px;\">Liste journalier  offre disponnible sur cette semaine<p>\r\n");
      out.write("                            <div style=\"position:relative;right:-400px;width:800px;top:35px;\">\r\n");
      out.write("                                <ul class=\"collection\">\r\n");
      out.write("                                    <li class=\"collection-item avatar\">\r\n");
      out.write("                                        <img src=\"images/images_051.jpg\" alt=\"\" class=\"circle\">\r\n");
      out.write("                                        <span class=\"title\">Steak vs Sandwitch</span>\r\n");
      out.write("                                        <p>Matinnée<br>\r\n");
      out.write("                                            Prix= 3000 Ar<br>\r\n");
      out.write("                                            Etudiant= 1500 Ar<br>\r\n");
      out.write("                                            Enseignat= 3000 Ar<br>\r\n");
      out.write("                                            KSLMD :: 033 17 313 19\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <a href=\"#!\" class=\"secondary-content\"><i class=\"material-icons\">add_shopping_cart</i></a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"collection-item avatar\">\r\n");
      out.write("                                        <img src=\"images/images_039.jpg\" alt=\"\" class=\"circle\">\r\n");
      out.write("                                        <span class=\"title\">Jus de cacao</span>\r\n");
      out.write("                                        <p>Matinnée vs Midi<br>\r\n");
      out.write("                                            Pain sec + Lait = 3000 Ar<br>\r\n");
      out.write("                                            KSLMD :: 033 17 313 19\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <a href=\"#!\" class=\"secondary-content\"><i class=\"material-icons\">add_shopping_cart</i></a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"collection-item avatar\">\r\n");
      out.write("                                        <img src=\"images/images_133.jpg\" alt=\"\" class=\"circle\">\r\n");
      out.write("                                        <span class=\"title\">Frute de Poullet</span>\r\n");
      out.write("                                        <p>Midi vs Soir<br>\r\n");
      out.write("                                            Prix= 4000 Ar<br>\r\n");
      out.write("                                            KSLMD :: 033 17 313 19\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <a href=\"#!\" class=\"secondary-content\"><i class=\"material-icons\">add_shopping_cart</i></a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"collection-item avatar\">\r\n");
      out.write("                                        <img src=\"images/images_163.jpg\" alt=\"\" class=\"circle\">\r\n");
      out.write("                                        <span class=\"title\">Viande pork</span>\r\n");
      out.write("                                        <p>paragraphe 1 <br>\r\n");
      out.write("                                            Plat + Boisson = 12000 Ar\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <a href=\"#!\" class=\"secondary-content\"><i class=\"material-icons\">add_shopping_cart</i></a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"collection-item avatar\">\r\n");
      out.write("                                        <i class=\"material-icons circle green\">insert_chart</i>\r\n");
      out.write("                                        <span class=\"title\">Consommation mensuel</span>\r\n");
      out.write("                                        <p>\r\n");
      out.write("                                            <a ahref=\"#!\">Ici</a>\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <a href=\"#!\" class=\"secondary-content\"><i class=\"material-icons\">insert_chart</i></a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("\r\n");
      out.write("                                </ul>\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\r\n");
      out.write("                            <script type=\"text/javascript\" src=\"js/materialize.min.js\"></script>\r\n");
      out.write("                        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "pied.jsp", out, false);
      out.write("\r\n");
      out.write("                        <script type=\"text/javascript\">\r\n");
      out.write("            function display_c() {\r\n");
      out.write("                var refresh = 1000; // Refresh rate in milli seconds\r\n");
      out.write("                mytime = setTimeout('display_ct()', refresh)\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function display_ct() {\r\n");
      out.write("                var strcount\r\n");
      out.write("                var x = new Date()\r\n");
      out.write("                document.getElementById('lera_ankavana').innerHTML = x;\r\n");
      out.write("                tt = display_c();\r\n");
      out.write("            }\r\n");
      out.write("                        </script>\r\n");
      out.write("                        </body>\r\n");
      out.write("                        </html>\r\n");
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
