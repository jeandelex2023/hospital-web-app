package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.*;

public final class FormMajCmd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 ResultSet resultats = null;
 int nbCols = 0;
 ResultSetMetaData rsmd;
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <script language=\"javascript\">\r\n");
      out.write("            function supprimer_matiere(nbmax) {\r\n");
      out.write("                exist = 0;\r\n");
      out.write("                ident = \"\";\r\n");
      out.write("                for (i = 0; i < nbmax; i++) {\r\n");
      out.write("                    if (document.forms[0].elements['checkbox' + i].checked) {\r\n");
      out.write("                        ident += \"&code\" + exist + \"=\" + document.forms[0].elements['id' + i].value;\r\n");
      out.write("                        exist += 1;\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("                if (exist == 0)\r\n");
      out.write("                    alert('Veuillez selectionner au moins un enregistrement');\r\n");
      out.write("                else if (exist >= 1)\r\n");
      out.write("                    if (confirm('Voullez vous supprimer vraiement ces enregistrements?'))\r\n");
      out.write("                        document.location = \"delete_cmd.jsp?nbsuppr=\" + exist + ident;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function modifier_matiere(nbmax) {\r\n");
      out.write("                exist = 0;\r\n");
      out.write("                for (i = 0; i < nbmax; i++) {\r\n");
      out.write("                    if (document.forms[0].elements['checkbox' + i].checked == true) {\r\n");
      out.write("                        exist += 1;\r\n");
      out.write("                        ident = document.forms[0].elements['id' + i].value;\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("                if (exist == 0)\r\n");
      out.write("                    alert('Veuillez selectionner un enregistrement');\r\n");
      out.write("                else\r\n");
      out.write("                if (exist > 1)\r\n");
      out.write("                    alert('Veuillez selectionner un seul enregistrement');\r\n");
      out.write("                else if (exist == 1) {\r\n");
      out.write("                    document.location = \"form_modif_cmde.jsp?code=\" + ident;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("            function accueil(){\r\n");
      out.write("                document.location=\"MenuPPALE.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("            function comd(){\r\n");
      out.write("                document.location=\"TEcmd.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("        <link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css'>\r\n");
      out.write("    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css'>\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "entete.jsp", out, false);
      out.write("\r\n");
      out.write("   <body>\r\n");
      out.write("       \r\n");
      out.write("               <aside id=\"left-sidebar-nav\">\r\n");
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
      out.write("                            <div class=\"container\"><p style=\"position:relative;left:50px;\"<a href=\"javascript:accueil()\">Accueil</a>>><a href=\"javascript:comd()\">Commande</a>|Gestionnaire de l'ajour commande</p>\r\n");
      out.write("                           \r\n");
      out.write("                                <hr width=\"999px\">\r\n");
      out.write("                            </div>\r\n");
      out.write("            <p style=\"position:relative;left:670px;\"><a href=\"javascript:accueil()\">Retour</a>>||Mise  à jour<p>\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <div class=\"collapsible\" style=\"position:relative;left:80px;\"><a class=\"btn-floating halfway-fab waves-effect waves-light blue-grey\"><i class=\"material-icons\">edit</i></a>\r\n");
      out.write("   \r\n");
      out.write("        <form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("            <div align=\"center\">\r\n");
      out.write("                 \r\n");
      out.write("                    \r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    ");
int i = 0;
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("            ");
      action.classe.classeCommande cmd = null;
      synchronized (session) {
        cmd = (action.classe.classeCommande) _jspx_page_context.getAttribute("cmd", PageContext.SESSION_SCOPE);
        if (cmd == null){
          cmd = new action.classe.classeCommande();
          _jspx_page_context.setAttribute("cmd", cmd, PageContext.SESSION_SCOPE);
          out.write("\r\n");
          out.write("            ");
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("cmd"), request);
          out.write("\r\n");
          out.write("            ");
        }
      }
      out.write("\r\n");
      out.write("            ");
      gestion.GestionCommande getcmd = null;
      synchronized (session) {
        getcmd = (gestion.GestionCommande) _jspx_page_context.getAttribute("getcmd", PageContext.SESSION_SCOPE);
        if (getcmd == null){
          getcmd = new gestion.GestionCommande();
          _jspx_page_context.setAttribute("getcmd", getcmd, PageContext.SESSION_SCOPE);
        }
      }
      out.write("                  \r\n");
      out.write("                    ");
  
                        resultats = getcmd.getAll();  
                        try {
                            rsmd = resultats.getMetaData();
                            nbCols = rsmd.getColumnCount();
                            out.print("<table width=600 border=1 class='striped'>");
                            out.print("<tr><td><input type='hidden' value='num'/></td><td align=center>Numéro</td><td align=center>N° table</td><td align=center>consom</td><td align=center>Quantité</td><td align=center>Date</td><td align=center>Selection</td></font></tr>");
                            while (resultats.next()) {
                                out.print("<tr>");
                                out.print("<td><input type='hidden' name='id" + i + "' value='" + resultats.getString(1) + "'/></td>");
                                for (int j = 1; j <= nbCols; j++) {
                                    out.print("<td align=center>" + resultats.getString(j) + "</td>");
                                }
                                out.print("<td><div align=center><input type=checkbox name='checkbox" + i + "' id='test5' /><label for='test5'>Cocher</label></div></td>");
                                i++;
                            }
                            out.print("</tr>");
                            out.print("</table>");
                            resultats.close();
                        } catch (SQLException e) {
                            out.println(e.getMessage());
                        }

                    
      out.write(" \r\n");
      out.write("            \r\n");
      out.write("            <br>\r\n");
      out.write("            <div style=\"width:150px;\">\r\n");
      out.write("            <div align=\"center\" id=\"formbouton\">\r\n");
      out.write("                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("                    <tr>  \r\n");
      out.write("                        <td width=\"64%\">\r\n");
      out.write("                           <button class=\"btn waves-effect waves-light  cyan darken-2\" type=\"button\"id=\"Modifier\" name=\"Modifier\" onClick=\"javascript:modifier_matiere(");
out.print(i);
      out.write(")\"/>Sauvegarder\r\n");
      out.write("                           <i class=\"material-icons\">edit</i>\r\n");
      out.write("                           </button>\r\n");
      out.write("                        </td>\r\n");
      out.write("                        <td>\r\n");
      out.write("                            <button class=\"btn waves-effect waves-light red darken-2\" type=\"button\" id=\"Supprimer\" name=\"Supprimer\" onClick=\"javascript:supprimer_matiere(");
out.print(i);
      out.write(")\"/>Supprimer\r\n");
      out.write("                                <i class=\"material-icons\">delete</i>\r\n");
      out.write("                            </button>\r\n");
      out.write("                            \r\n");
      out.write("                        </td>\r\n");
      out.write("                    </tr>  \r\n");
      out.write("                </table>\r\n");
      out.write("                              \r\n");
      out.write("            </div>    </div>                \r\n");
      out.write("            </div></div>\r\n");
      out.write("    </div></div> \r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/materialize.min.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
