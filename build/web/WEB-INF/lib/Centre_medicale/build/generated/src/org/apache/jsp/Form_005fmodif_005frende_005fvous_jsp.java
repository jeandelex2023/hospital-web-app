package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Form_005fmodif_005frende_005fvous_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        function annuler_traitement(){\n");
      out.write("            document.location('Vue_listeRendeVous1.jsp');\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    ");
      gestion.GestionConsultation gestionRende_vous = null;
      synchronized (session) {
        gestionRende_vous = (gestion.GestionConsultation) _jspx_page_context.getAttribute("gestionRende_vous", PageContext.SESSION_SCOPE);
        if (gestionRende_vous == null){
          gestionRende_vous = new gestion.GestionConsultation();
          _jspx_page_context.setAttribute("gestionRende_vous", gestionRende_vous, PageContext.SESSION_SCOPE);
        }
      }
      out.write("                  \n");
      out.write("    ");

        String ide = request.getParameter("code");
        ResultSet resultats = gestionRende_vous.getAll(ide);// eto no mi-beg getAll(ide)
        resultats.next();
    
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "contenu.jsp", out, false);
      out.write("\n");
      out.write("        <div  style=\"position:relative;width:550px !important;margin-left:300px !important;\" class=\"card-panel\">\n");
      out.write("        <div class=\"progress\">\n");
      out.write("        <span>Mise à jour des dossiers de la liste sélectionnée......en attente de votre modification sur les chmps concernées........</span>\n");
      out.write("        <div class=\"indeterminate\"></div>\n");
      out.write("        </div>\n");
      out.write("        <span class=\"card-title grey-text text-darken-4\"><a class=\"btn-floating halfway-fab waves-effect waves-light teal\"><i class=\"material-icons\">edit</i></a></span>\n");
      out.write("        <form action=\"Update_consultation.jsp\" method=\"POST\">\n");
      out.write("            <input type=\"text\" name=\"com_identifiant\" value=\"");
      out.print(resultats.getString("automatique"));
      out.write("\" />\n");
      out.write("            <input type=\"text\" name=\"cons_nomPatient\" value=\"");
      out.print(resultats.getString("rend_date"));
      out.write("\" />\n");
      out.write("            <input type=\"text\" name=\"cons_nomMedecin\" value=\"");
      out.print(resultats.getString("rend_docConcerne"));
      out.write("\" />\n");
      out.write("            <input type=\"text\" name=\"cons_montant\" value=\"");
      out.print(resultats.getString("rend_patNumero"));
      out.write("\" />\n");
      out.write("            \n");
      out.write("            <a class=\"waves-effect waves-light btn\"><input type=\"submit\" value=\"Mettre à jour ce champs\" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ou &nbsp;&nbsp;\n");
      out.write("            <a class=\"waves-effect waves-light btn\"><input type=\"submit\" value=\"Annuler ce traitment..\" onClick='annuler_traitement()'/></a>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    ");
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
