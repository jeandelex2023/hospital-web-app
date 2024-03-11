package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.*;

public final class FormMajConsom_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 ResultSet resultats = null;
 int nbCols = 0;
 ResultSetMetaData rsmd;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/WEB-INF/struts-bean.tld");
    _jspx_dependants.add("/WEB-INF/struts-html.tld");
    _jspx_dependants.add("/WEB-INF/struts-logic.tld");
  }

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
      out.write("                        document.location = \"delete_consom.jsp?nbsuppr=\" + exist + ident;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function modifier_matiere(nbmax) {\r\n");
      out.write("                exist = 0;\r\n");
      out.write("                for (i = 0; i < nbmax; i++) {\r\n");
      out.write("                    \r\n");
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
      out.write("                    document.location = \"form_modif_cons.jsp?code=\" + ident;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("            function accueil(){\r\n");
      out.write("                document.location=\"MenuPPALE.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("            function comd(){\r\n");
      out.write("                document.location=\"TEConsom.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("    \r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "entete.jsp", out, false);
      out.write("\r\n");
      out.write("    <div id=\"menu_c\">\r\n");
      out.write("        <p>Vous &ecirc;tes ici : <a href=\"javascript:accueil()\">Accueil</a> > <a href=\"javascript:comd()\">Consommation</a> > Mis à jour</p>\r\n");
      out.write("        <form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("            <div align=\"center\">\r\n");
      out.write("                <br><div align=\"center\"><font  size=\"2\"><strong><font size=\"3\">LISTE des CONSOMMATIONS </font></strong></font></div>\r\n");
      out.write("                    <br>\r\n");
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
      action.classe.classeConsommation cons = null;
      synchronized (session) {
        cons = (action.classe.classeConsommation) _jspx_page_context.getAttribute("cons", PageContext.SESSION_SCOPE);
        if (cons == null){
          cons = new action.classe.classeConsommation();
          _jspx_page_context.setAttribute("cons", cons, PageContext.SESSION_SCOPE);
          out.write("\r\n");
          out.write("            ");
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("cons"), request);
          out.write("\r\n");
          out.write("            ");
        }
      }
      out.write("\r\n");
      out.write("            ");
      gestion.GestionConsommation getcons = null;
      synchronized (session) {
        getcons = (gestion.GestionConsommation) _jspx_page_context.getAttribute("getcons", PageContext.SESSION_SCOPE);
        if (getcons == null){
          getcons = new gestion.GestionConsommation();
          _jspx_page_context.setAttribute("getcons", getcons, PageContext.SESSION_SCOPE);
        }
      }
      out.write("                  \r\n");
      out.write("                    ");
  
                        resultats = getcons.getAll();  
                        try {
                            rsmd = resultats.getMetaData();
                            nbCols = rsmd.getColumnCount();
                            out.print("<table width=600 border=1 style=border-collapse:collapse>");
                            out.print("<tr><td><input type='hidden' value='num'/></td><td align=center>Numéro</td><td align=center>Libellé</td><td align=center>Quantité</td><td align=center>Prix_unit</td><td align=center>Selection</td></font></tr>");
                            while (resultats.next()) {
                                out.print("<tr>");
                                out.print("<td><input type='hidden' name='id" + i + "' value='" + resultats.getString(1) + "'/></td>");
                                for (int j = 1; j <= nbCols; j++) {
                                    out.print("<td align=center>" + resultats.getString(j) + "</td>");
                                }
                                out.print("<td><div align=center><input type=checkbox name='checkbox" + i + "' /></div></td>");

                                i++;
                            }
                            out.print("</tr>");
                            out.print("</table>");
                            resultats.close();
                        } catch (SQLException e) {
                            out.println(e.getMessage());
                        }

                    
      out.write("\r\n");
      out.write("         </div>\r\n");
      out.write("         <br>\r\n");
      out.write("         <div align=\"center\" id=\"formbouton\">\r\n");
      out.write("                <table width=\"20%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("                    <tr>  \r\n");
      out.write("                        <td width=\"64%\">\r\n");
      out.write("                            <input name=\"Modifier\" type=\"button\" id=\"Modifier\" value=\"Modifier\" onClick=\"javascript:modifier_matiere(");
out.print(i);
      out.write(");\"/>\r\n");
      out.write("                        </td>\r\n");
      out.write("                        <td width=\"36%\">\r\n");
      out.write("                            <input name=\"Supprimer\" type=\"button\" id=\"Supprimer\" value=\"Supprimer\" onClick=\"javascript:supprimer_matiere(");
out.print(i);
      out.write(");\"/>\r\n");
      out.write("                        </td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </table>\r\n");
      out.write("            </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js-materialize/js/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js-materialize/js/materialize.min.js\"></script>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "pied.jsp", out, false);
      out.write("\r\n");
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
