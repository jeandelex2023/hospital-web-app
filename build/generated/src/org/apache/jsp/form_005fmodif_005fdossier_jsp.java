package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class form_005fmodif_005fdossier_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      gestion.GestionDossier getfour = null;
      synchronized (session) {
        getfour = (gestion.GestionDossier) _jspx_page_context.getAttribute("getfour", PageContext.SESSION_SCOPE);
        if (getfour == null){
          getfour = new gestion.GestionDossier();
          _jspx_page_context.setAttribute("getfour", getfour, PageContext.SESSION_SCOPE);
        }
      }
      out.write("                  \n");
      out.write("    ");

        String ide = request.getParameter("code");
        ResultSet resultats = getfour.getAll();// eto no mi-beg getAll(ide)
        resultats.next();
    
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    <body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "contenu.jsp", out, false);
      out.write("\n");
      out.write("    <div  style=\"position:relative;width:550px !important;margin-left:300px !important;\" class=\"card-panel\">\n");
      out.write("    <div class=\"progress\">\n");
      out.write("      <span>Mise à jour des dossiers de la liste sélectionnée......en attente de modification........</span>\n");
      out.write("      <div class=\"indeterminate\"></div>\n");
      out.write("    </div>\n");
      out.write("    <span class=\"card-title grey-text text-darken-4\"><a class=\"btn-floating halfway-fab waves-effect waves-light teal\"><i class=\"material-icons\">edit</i></a></span>\n");
      out.write("    <form name=\"form1\" method=\"post\" action=\"update_dossier.jsp\">\n");
      out.write("             <div class=\"row\">\n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <i class=\"material-icons prefix\">number</i>\n");
      out.write("                       <input  name=\"automatique\" type=\"text\" value=\"");
      out.print(resultats.getString("automatique"));
      out.write("\"/>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <i class=\"material-icons prefix\">call</i>\n");
      out.write("                       <label for=\"last_name\">CELL NO: +261</label>\n");
      out.write("                       <input  name=\"dos_numeroPhone\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_numeroPhone"));
      out.write("\"/>\n");
      out.write("                  </div>\n");
      out.write("                 <div class=\"input-field col s6\">\n");
      out.write("                      <i class=\"material-icons prefix\">group</i>\n");
      out.write("                      <label for=\"last_name\">SURNAME & NAME CHILD</label>\n");
      out.write("                      <input  name=\"dos_nomPrenom\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_nomPrenom"));
      out.write("\"/> \n");
      out.write("                 </div>\n");
      out.write("      \n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <i class=\"material-icons prefix\">person</i>\n");
      out.write("                       <label for=\"last_name\">MOTHER:</label>\n");
      out.write("                       <input  name=\"dos_mere\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_mere"));
      out.write("\"/>  \n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <i class=\"material-icons prefix\">person</i>\n");
      out.write("                       <label for=\"last_name\">FATHER:</label>\n");
      out.write("                       <input  name=\"dos_pere\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_pere"));
      out.write("\"/>\n");
      out.write("                 </div>\n");
      out.write("   \n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <label for=\"last_name\">:</label>\n");
      out.write("                       <i class=\"material-icons prefix\">face</i>\n");
      out.write("                       <input  name=\"dos_dateNaissance\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_dateNaissance"));
      out.write("\"/> \n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <label for=\"last_name\">Nationality:</label>\n");
      out.write("                       <i class=\"material-icons prefix\">flag</i>\n");
      out.write("                       <input  name=\"dos_nationalite\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_nationalite"));
      out.write("\"/>\n");
      out.write("                  </div>                 \n");
      out.write("            \n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <label for=\"last_name\">Sex:</label>\n");
      out.write("                       <i class=\"material-icons prefix\">home</i>\n");
      out.write("                       <input  name=\"dos_sexe\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_sexe"));
      out.write("\"/>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <label for=\"last_name\">ADRESS:</label>\n");
      out.write("                       <i class=\"material-icons prefix\">home</i>\n");
      out.write("                       <input  name=\"dos_adresse\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_adresse"));
      out.write("\"/>\n");
      out.write("                  </div>\n");
      out.write("        \n");
      out.write("                  <div class=\"input-field col s6\">\n");
      out.write("                       <i class=\"material-icons prefix\">local_hospital</i>\n");
      out.write("                       <label for=\"last_name\">MEDICAL INSURANCE:</label>\n");
      out.write("                       <input  name=\"dos_insurranceMedicale\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_insurranceMedicale"));
      out.write("\"/> \n");
      out.write("                   </div>\n");
      out.write("                   <div class=\"input-field col s6\">\n");
      out.write("                       <i class=\"material-icons prefix\">local_hospital</i>\n");
      out.write("                       <label for=\"last_name\">VACCINATIONS:</label>\n");
      out.write("                       <input  name=\"dos_vaccine\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_vaccine"));
      out.write("\"/>  \n");
      out.write("                  </div>                  \n");
      out.write("    \n");
      out.write("                 <div class=\"input-field col s6\">\n");
      out.write("                      <i class=\"material-icons prefix\">local_hospital</i>\n");
      out.write("                      <label for=\"last_name\">MED.INSURANCE NO:</label>\n");
      out.write("                      <input  name=\"dos_numInsurrance\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_numInsurrance"));
      out.write("\"/>\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"input-field col s6\">\n");
      out.write("                      <i class=\"material-icons prefix\">local_pharmacy</i>\n");
      out.write("                      <label for=\"last_name\">PAST MEDICAL HISTORY:</label>\n");
      out.write("                      <input  name=\"dos_medicaleHistorique\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_medicaleHistorique"));
      out.write("\"/>\n");
      out.write("                 </div>\n");
      out.write("  \n");
      out.write("                 <div class=\"input-field col s6\">\n");
      out.write("                      <i class=\"material-icons prefix\">local_pharmacy</i>\n");
      out.write("                      <label for=\"last_name\">PAST SURGICAL HISTORY:</label>\n");
      out.write("                      <input  name=\"dos_surgicaleHistorique\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_surgicaleHistorique"));
      out.write("\"/>\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"input-field col s6\">\n");
      out.write("                      <i class=\"material-icons prefix\">local_pharmacy</i>\n");
      out.write("                      <label for=\"last_name\">CHRONIC MEDICATION:</label>\n");
      out.write("                      <input  name=\"dos_chroniqueMedicale\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_chroniqueMedicale"));
      out.write("\"/>\n");
      out.write("                 </div>\n");
      out.write("\n");
      out.write("                <div class=\"input-field col s6\">\n");
      out.write("                     <i class=\"material-icons prefix\">local_pharmacy</i>\n");
      out.write("                     <label for=\"last_name\">ALERGIE:</label>\n");
      out.write("                     <input  name=\"dos_alergie\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_alergie"));
      out.write("\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"input-field col s12\">\n");
      out.write("                     <i class=\"material-icons prefix\">local_hospital</i>\n");
      out.write("                     <label for=\"last_name\">DEVELOPPEMENTAL</label>\n");
      out.write("                     <input  name=\"dos_devlpNaissance\" type=\"text\" value=\"");
      out.print(resultats.getString("dos_devlpNaissance"));
      out.write("\"/>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\" style=\"position:relative; margin-left:90px! important;\">\n");
      out.write("                 <div class=\"input-field col s6\">\n");
      out.write("                      <label>\n");
      out.write("                            <button class=\"btn waves-effect waves-light  cyan darken-2\" type=\"submit\">Créer\n");
      out.write("                            <i class=\"material-icons right\"></i>\n");
      out.write("                            </button>\n");
      out.write("                      </label>\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"input-field col 6\">\n");
      out.write("                      <label>\n");
      out.write("                             <button class=\"btn waves-effect waves-light red lighten-3\" type=\"reset\" onClick=\"maj_fourn()\">Annuler\n");
      out.write("                             <i class=\"material-icons right\"></i>\n");
      out.write("                             </button>\n");
      out.write("                      </label> \n");
      out.write("                 </div>\n");
      out.write("            </div>                \n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write(" </body>\n");
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
