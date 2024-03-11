package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreationPatient_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body class=\"no-skin\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "contenuConsultation.jsp", out, false);
      out.write("\n");
      out.write("        <h4 class=\"white-opaque\">\n");
      out.write("        <i class=\"ace-icon fa fa-hand-o-right icon-animated-hand-pointer\"></i>\n");
      out.write("        <a href=\"#modal-table\" role=\"button\"  data-toggle=\"modal\">Cliquez Ici!</a>\n");
      out.write("        </h4>                   \n");
      out.write("      <div id=\"modal-table\" class=\"modal fade\" tabindex=\"-1\">\n");
      out.write("\t    <div class=\"modal-dialog\">\n");
      out.write("\t\t  <div class=\"modal-content\">\n");
      out.write("\t\t        <div class=\"modal-header no-padding\">\n");
      out.write("\t\t\t\t<div class=\"table-header\">\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">\n");
      out.write("\t\t\t\t\t<span class=\"white\">&times;</span>\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\tPANNEAU D'ENREGISTREMENT DES PATIENTS\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t        </div>\n");
      out.write("\t                <div  class=\"modal-body no-padding\">\n");
      out.write("\t\t             <div class=\"widget-body\">\n");
      out.write("                                  <div class=\"widget-main\">\n");
      out.write("                                      <div style=\"position:relative;top:20px;\">\n");
      out.write("                                          <form action=\"serveletPatient.jsp\" method=\"POST\">\n");
      out.write("                                              <input type=\"text\" name=\"pat_numero\" placeholder='Numero de CIN ou Contacte du patient' value=\"\" required/>\n");
      out.write("                                              <input type=\"text\" name=\"pat_nomPrenom\" placeholder='Nom et Prenom de tels patients' value=\"\" required/>\n");
      out.write("                                              \n");
      out.write("                                              <div class=\"input-field col s6\" style=\"position:relative !important;left:100px !important;width:210px !important;\">\n");
      out.write("                                                   <i class=\"material-icons prefix\">face</i>\n");
      out.write("                                                   <label for=\"last_name\"></label>\n");
      out.write("                                                   <input type=\"date\" name=\"pat_dateNaissance\" placeholder='Date de Naissance' class=\"datepicker\" size=\"42\" required/>\n");
      out.write("                                              </div>\n");
      out.write("                                              \n");
      out.write("                                              <div class=\"input-field col s6\" style=\"position:relative !important;left:125px !important;width:210px !important;\">\n");
      out.write("                                               <select name=\"pat_sexe\" class=\"form-control\" id=\"form-field-select-1\">\n");
      out.write("\t\t\t\t\t\t\t<option value=\"\">SEX</option>\n");
      out.write("\t\t\t\t\t\t\t<option value=\"Femme\">Femme</option>\n");
      out.write("\t\t\t\t\t\t        <option value=\"Homme\">Homme</option>\n");
      out.write("\t\t\t\t\t        </select>\n");
      out.write("                                                </div>\n");
      out.write("                                             \n");
      out.write("                                              <input type=\"text\" name=\"pat_domicile\" placeholder='Adresse du patient' value=\"\" required/>\n");
      out.write("                                              \n");
      out.write("                                              <div class=\"input-field col s6\" style=\"position:relative !important;left:-10px !important;width:550px !important;\">\n");
      out.write("                                                <select name=\"pat_nationalite\" class=\"form-control\" id=\"form-field-select-1\">\n");
      out.write("\t\t\t\t\t\t\t<option value=\"\">NATIONALITE:</option>\n");
      out.write("\t\t\t\t\t\t\t<option value=\"Malagasy\">Malagasy</option>\n");
      out.write("\t\t\t\t\t\t        <option value=\"Français\">Français</option>\n");
      out.write("                                                        <option value=\"Malagasy\">Anglais</option>\n");
      out.write("\t\t\t\t\t\t        <option value=\"Français\">Italien</option>\n");
      out.write("\t\t\t\t\t        </select>\n");
      out.write("                                                </div>\n");
      out.write("                                              </BR></BR></BR>\n");
      out.write("                                              <input type=\"text\" name=\"pat_contact\" placeholder='Numéro de son télephone' value=\"\" required/>\n");
      out.write("                                                <button class=\"btn waves-effect waves-light pull-right\" type=\"submit\" >ENREGISTRER\n");
      out.write("                                                <i class=\"material-icons right\">send</i>\n");
      out.write("                                              </button>\n");
      out.write("                                              \n");
      out.write("                                          </form>                                       \n");
      out.write("                                      </div>\n");
      out.write("                             </div>\n");
      out.write("\t                </div>\n");
      out.write("           </div>\n");
      out.write("\n");
      out.write("           <div class=\"modal-footer no-margin-top\">\n");
      out.write("           <button class=\"btn btn-sm btn-danger pull-left\" data-dismiss=\"modal\">\n");
      out.write("\t\t<i class=\"ace-icon fa fa-times\"></i>\n");
      out.write("\t\t\tFermer\n");
      out.write("\t   </button>\n");
      out.write("\t</div>\n");
      out.write("      </div><!-- /.modal-content -->\n");
      out.write("    </div><!-- /.modal-dialog -->\n");
      out.write("    </div><!-- PAGE CONTENT ENDS --> \n");
      out.write("        \n");
      out.write("        \n");
      out.write("                                    <br />\n");
      out.write("                                    <br />\n");
      out.write("                                    <br />\n");
      out.write("                                    <br />\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("    <!-- PAGE CONTENT ENDS -->\n");
      out.write("    </div><!-- /.col -->\n");
      out.write("    </div><!-- /.row -->\n");
      out.write("    </div><!-- /.page-content -->\n");
      out.write("    </div>\n");
      out.write("    </div><!-- /.main-content -->\n");
      out.write("<div class=\"fixed-action-btn vertocal\">\n");
      out.write("    <a class=\"btn-floating btn-large blue darken-3\">\n");
      out.write("        <i class=\"large material-icons\">group</i>\n");
      out.write("    </a>\n");
      out.write("    <ul>\n");
      out.write("        <li><a class=\"btn-floating green tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de recherche multi option\" href=\"Vue_listePatient.jsp\"><i class=\"material-icons\">search</i></a></li>\n");
      out.write("        <li><a class=\"btn-floating green tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste d'import et export d'option\" href=\"Vue_listePatient.jsp\"><i class=\"material-icons\">import_export</i></a></li>\n");
      out.write("        <li><a class=\"btn-floating green tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de medecin version imprimmable\" href=\"Vue_listePatient.jsp\"><i class=\"material-icons\">print</i></a></li>\n");
      out.write("        <li><a class=\"btn-floating blue tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de mis à jour et sauvegarde\" href=\"Vue_listePatient1.jsp\"><i class=\"material-icons\">update</i></a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
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