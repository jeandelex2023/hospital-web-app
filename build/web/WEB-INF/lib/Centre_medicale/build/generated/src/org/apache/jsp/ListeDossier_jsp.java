package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.*;

public final class ListeDossier_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <script language=\"javascript\">\n");
      out.write("            function supprimer_matiere(nbmax) {\n");
      out.write("                exist = 0;\n");
      out.write("                ident = \"\";\n");
      out.write("                for (i = 0; i < nbmax; i++) {\n");
      out.write("                    if (document.forms[1].elements['checkbox' + i].checked) {\n");
      out.write("                        ident += \"&code\" + exist + \"=\" + document.forms[1].elements['id' + i].value;\n");
      out.write("                        exist += 1;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                if (exist == 0)\n");
      out.write("                    alert('Veuillez selectionner au moins un enregistrement');\n");
      out.write("                else if (exist >= 1)\n");
      out.write("                    if (confirm('Voullez vous supprimer vraiement ces enregistrements?'))\n");
      out.write("                        document.location = \"delete_cmd.jsp?nbsuppr=\" + exist + ident;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function modifier_matiere(nbmax) {\n");
      out.write("                exist = 0;\n");
      out.write("                for (i = 0; i < nbmax; i++) {\n");
      out.write("                    if (document.forms[1].elements['checkbox' + i].checked == true) {\n");
      out.write("                        exist += 1;\n");
      out.write("                        ident = document.forms[1].elements['id' + i].value;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                if (exist == 0)\n");
      out.write("                    alert('Veuillez selectionner un enregistrement');\n");
      out.write("                else\n");
      out.write("                if (exist > 1)\n");
      out.write("                    alert('Veuillez selectionner un seul enregistrement');\n");
      out.write("                else if (exist == 1) {\n");
      out.write("                    document.location = \"form_modif_cmde.jsp?code=\" + ident;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function accueil(){\n");
      out.write("                document.location=\"MenuPPALE.jsp\";\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function comd(){\n");
      out.write("                document.location=\"TEcmd.jsp\";\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("            \n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("          \n");
      out.write("          ");
      out.write("\n");
      out.write("          ");
      out.write("\n");
      out.write("          ");
      out.write("\n");
      out.write("          ");
int i = 0;
      out.write("\n");
      out.write("          \n");
      out.write("          ");
      action.classe.ClasseDossier dossier = null;
      synchronized (session) {
        dossier = (action.classe.ClasseDossier) _jspx_page_context.getAttribute("dossier", PageContext.SESSION_SCOPE);
        if (dossier == null){
          dossier = new action.classe.ClasseDossier();
          _jspx_page_context.setAttribute("dossier", dossier, PageContext.SESSION_SCOPE);
          out.write("\n");
          out.write("          ");
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("dossier"), request);
          out.write("\n");
          out.write("          ");
        }
      }
      out.write("\n");
      out.write("          ");
      gestion.GestionDossier gestionDossier = null;
      synchronized (session) {
        gestionDossier = (gestion.GestionDossier) _jspx_page_context.getAttribute("gestionDossier", PageContext.SESSION_SCOPE);
        if (gestionDossier == null){
          gestionDossier = new gestion.GestionDossier();
          _jspx_page_context.setAttribute("gestionDossier", gestionDossier, PageContext.SESSION_SCOPE);
        }
      }
      out.write("  \n");
      out.write("          \n");
      out.write("                    ");
  
                        resultats = gestionDossier.getAll();  
                        try {
                            rsmd = resultats.getMetaData();
                            nbCols = rsmd.getColumnCount();
                            out.print("<table width=600 border=1 class='striped'>");
                            out.print("<tr><td><input type='hidden' value='num'/></td><td align=center>automatique</td><td align=center>dos_numeroPhone</td><td align=center>dos_nomPrenom</td><td align=center>dos_mere</td><td align=center>dos_pere</td><td align=center>dos_dateNaissance</td><td align=center>dos_nationalite</td><td align=center>dos_sexe</td><td align=center>dos_adresse</td><td align=center>dos_insurranceMedicale</td><td align=center>dos_vaccine</td><td align=center>dos_numInsurrance</td><td align=center>dos_medicaleHistorique</td><td align=center>dos_surgicaleHistorique</td><td align=center>dos_chroniqueMedicale</td><td align=center>dos_alergie</td><td align=center>dos_devlpNaissance</td></font></tr>");
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

                    
      out.write(" \n");
      out.write("                               <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                    <tr>  \n");
      out.write("                        <td width=\"64%\">\n");
      out.write("                           <button class=\"btn waves-effect waves-light  cyan darken-2\" type=\"button\"id=\"Modifier\" name=\"Modifier\" onClick=\"javascript:modifier_matiere(");
out.print(i);
      out.write(")\"/>Sauvegarder\n");
      out.write("                           <i class=\"material-icons\">edit</i>\n");
      out.write("                           </button>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <button class=\"btn waves-effect waves-light red darken-2\" type=\"button\" id=\"Supprimer\" name=\"Supprimer\" onClick=\"javascript:supprimer_matiere(");
out.print(i);
      out.write(")\"/>Supprimer\n");
      out.write("                                <i class=\"material-icons\">delete</i>\n");
      out.write("                            </button>\n");
      out.write("                            \n");
      out.write("                        </td>\n");
      out.write("                    </tr>  \n");
      out.write("                </table>\n");
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
