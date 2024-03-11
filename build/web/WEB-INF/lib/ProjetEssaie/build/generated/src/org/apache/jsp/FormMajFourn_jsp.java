package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class FormMajFourn_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!--Erreur inconnnue pour l'importation du java sql resultatSET-->\n");
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <script lang=\"javascript\">\n");
      out.write("        function supprimer_mati(nbmax) {\n");
      out.write("            exist = 0;\n");
      out.write("            ident = \"\";\n");
      out.write("            for (i = 0; i < nbmax; i++) {\n");
      out.write("                if (document.forms[0].elements['checkbox' + i].checked) {\n");
      out.write("                    ident += \"&code\" + exist + \"=\" + document.forms[0].elements['id' + i].value;\n");
      out.write("                    exist += 1;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            if (exist == 0)\n");
      out.write("                alert('Veuillez selectionner au moins un enregistrement');\n");
      out.write("            else if (exist >= 1)\n");
      out.write("                if (confirm('Voullez vous supprimer vraiement ces enregistrements?'))\n");
      out.write("                    document.location = \"delete_fourn.jsp?nbsuppr=\" + exist + ident;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function modifier_matie(nbmax) {\n");
      out.write("            exist = 0;\n");
      out.write("            for (i = 0; i < nbmax; i++) {\n");
      out.write("                if (document.forms[0].elements['checkbox' + i].checked == true) {\n");
      out.write("                    exist += 1;\n");
      out.write("                    ident = document.forms[0].elements['id' + i].value;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            if (exist == 0)\n");
      out.write("                alert('Veuillez selectionner un enregistrement');\n");
      out.write("            else\n");
      out.write("            if (exist > 1)\n");
      out.write("                alert('Veuillez selectionner un seul enregistrement');\n");
      out.write("            else if (exist == 1) {\n");
      out.write("                document.location = \"form_modif_fourn.jsp?code=\" + ident;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function accueil() {\n");
      out.write("            document.location = \"MenuPPALE.jsp\";\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function comd() {\n");
      out.write("            document.location = \"TEfournisseur.jsp\";\n");
      out.write("        }\n");
      out.write("        function te_fourn() {\n");
      out.write("            document.location = \"TEfournisseur.jsp\";\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    ");
      gestion.GestionFournisseur getmat = null;
      synchronized (session) {
        getmat = (gestion.GestionFournisseur) _jspx_page_context.getAttribute("getmat", PageContext.SESSION_SCOPE);
        if (getmat == null){
          getmat = new gestion.GestionFournisseur();
          _jspx_page_context.setAttribute("getmat", getmat, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("    ");

        ResultSet res = getmat.getAll();
        int i = 0;
    
      out.write("\n");
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "entete.jsp", out, false);
      out.write("\n");
      out.write("        <body>\n");
      out.write("            <aside id=\"left-sidebar-nav\">\n");
      out.write("                <ul id=\"slide-out\" class=\"side-nav fixed leftside-navigation ps-container ps-active-y\" style=\"left: 0px; height: 636px;\">\n");
      out.write("                    <li class=\"user-details cyan darken-1\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col col s8 m8 l8\">\n");
      out.write("                                <a class=\"btn-flat dropdown-button waves-effect waves-light white-text profile-btn\" href=\"#\" data-activates=\"profile-dropdown\"><i class=\"material-icons\">school</i></a><ul id=\"profile-dropdown\" class=\"dropdown-content\" style=\"width: 128px; position: absolute; top: 57px; left: 101.234px; opacity: 1; display: none;\">\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-action-face-unlock\"></i> Profile</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-action-settings\"></i>Gérer</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-communication-live-help\"></i>Aides</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"mdi-hardware-keyboard-tab\"></i>Deconnection</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"no-padding\">\n");
      out.write("                        <ul class=\"collapsible collapsible-accordion\">\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header waves-effect waves-cyan\"><i class=\"large material-icons\">settings</i>Paramétrage</a>\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Ecran Plain</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Ecran Normale</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"no-padding\">\n");
      out.write("                        <ul class=\"collapsible collapsible-accordion\">\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header waves-effect waves-cyan\"><i class=\"large material-icons\">sync</i>Complément</a>\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Table1</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Table2</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Table3</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Table4</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Table5</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Table6</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">format_color_fill</i>Préférences </a>\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Couleur1</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Couleur2</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Couleur3</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">compare_arrows</i>Mes Tâches</a>\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Couleur1</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Couleur2</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Couleur3</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\t\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">show_chart</i>Statistiques</a>\n");
      out.write("                                <div class=\"collapsible-body\" style=\"\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Table11</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Table2</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"\">Table3</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\t\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\t\t\t\t\t\t \n");
      out.write("                            <li class=\"bold\"><a class=\"collapsible-header  waves-effect waves-cyan\"><i class=\"large material-icons\">map</i>Site Map</a>\n");
      out.write("                            </li>\n");
      out.write("                            </aside>\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                <p align=\"center\"><a href=\"javascript:accueil()\">Accueil</a>>> <a href=\"javascript:comd()\">Fournisseur</a> ></a>|Mise à jour</p>\n");
      out.write("                                <div style=\"position:relative;left:680px;\" class=\"lera\">\n");
      out.write("                                    <a href=\"#!\" class=\"secondary-content\"><span id='lera_ankavana' title=\"\"></span><i class=\"material-icons\">watch_later</i></a>\n");
      out.write("                                </div>\n");
      out.write("                                <hr width=\"999px\">\n");
      out.write("                            </div>\n");
      out.write("                            <p style=\"position:relative;left:670px;\"><a href=\"javascript:accueil()\">Retour</a>>||Gestionnaire de la mise à jour<p>\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                <div class=\"collapsible\" style=\"position:relative;left:80px;\"><a class=\"btn-floating halfway-fab waves-effect waves-light blue-grey\"><i class=\"material-icons\">edit</i></a>\n");
      out.write("                                    <form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\n");
      out.write("\n");
      out.write("                                        <table class=\"striped\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>Identifiant</td>\n");
      out.write("                                                <td>Nom</td>\n");
      out.write("                                                <td>Adresse</td>\n");
      out.write("                                                <td>Contact</td>\n");
      out.write("                                                <td>Selection</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 while (res.next()) {
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(res.getString("idfourn"));
      out.write("\n");
      out.write("                                                <input type=\"hidden\" name=\"id");
      out.print(i);
      out.write("\" value=\"");
      out.print(res.getString("idfourn"));
      out.write("\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>");
      out.print(res.getString("nomfourn"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(res.getString("adrs_fourn"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(res.getString("cont_fourn"));
      out.write(" </td>\n");
      out.write("\n");
      out.write("                                            <td><label>\n");
      out.write("                                                    <input type=\"checkbox\" name=\"checkbox");
      out.print(i);
      out.write("\" />\n");
      out.write("                                                </label>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
i++;
      out.write("\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                    <div align=\"center\">\n");
      out.write("                                    <label>\n");
      out.write("                                        <button class=\"btn waves-effect waves-light  cyan darken-2\" type=\"button\"id=\"Modifier\" name=\"Modifier\" onclick=\"javascript:modifier_matie(");
out.print(i);
      out.write(");\"/>Sauvegrde\n");
      out.write("                                        <i class=\"material-icons right\">edit</i>\n");
      out.write("                                    </label>\n");
      out.write("                                    <label> &nbsp;\n");
      out.write("                                        <button class=\"btn waves-effect waves-light red lighten-3\" type=\"button\" name=\"Submit2\" onclick=\"javascript:supprimer_mati(");
out.print(i);
      out.write(");\"/>Supprimer\n");
      out.write("                                        <i class=\"material-icons right\">delete</i>\n");
      out.write("                                    </label>\n");
      out.write("                                    </div>\n");
      out.write("                                </form></div></div>\n");
      out.write("                        </body>\n");
      out.write("                        </html>\n");
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
