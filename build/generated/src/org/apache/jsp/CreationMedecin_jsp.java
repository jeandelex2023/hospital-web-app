package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreationMedecin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("    <!--\n");
      out.write("            function ouvrir() {\n");
      out.write("                fenetre = window.open(\"Vue_listeMedecin.jsp\", \"fenetre\",\n");
      out.write("                        \"resizable=no,scrollbars=yes,location=no,width=450,height=300,top=0,left=50\")\n");
      out.write("            }\n");
      out.write("    // -->\n");
      out.write("        </script>\n");
      out.write("        <body class=\"no-skin\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "contenuConsultation.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"fixed-action-btn toolbar\" style=\"position:relative;top:-175px;left:-50px;\">\n");
      out.write("    <a class=\"btn-floating btn-large blue darken-3\">\n");
      out.write("      <i class=\"large material-icons\">menu</i>\n");
      out.write("    </a>\n");
      out.write("    <ul>\n");
      out.write("      <li class=\"waves-effect waves-light\"><a href=\"#!\" onclick=\"ouvrir();\"><i class=\"material-icons\">insert_chart</i></a></li>\n");
      out.write("      <li class=\"waves-effect waves-light\"><a href=\"#!\"><i class=\"material-icons\">format_quote</i></a></li>\n");
      out.write("      <li class=\"waves-effect waves-light\"><a href=\"#!\"><i class=\"material-icons\">publish</i></a></li>\n");
      out.write("      <li class=\"waves-effect waves-light\"><a href=\"#!\"><i class=\"material-icons\">attach_file</i></a></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("            <h4 class=\"white-opaque\">\n");
      out.write("                <i class=\"ace-icon fa fa-hand-o-right icon-animated-hand-pointer\"></i>\n");
      out.write("                <a href=\"#modal-table\" role=\"button\"  data-toggle=\"modal\">Cliquez Ici!</a>\n");
      out.write("            </h4>                   \n");
      out.write("            <div id=\"modal-table\" class=\"modal fade\" tabindex=\"-1\">\n");
      out.write("                <div class=\"modal-dialog\">\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("                        <div class=\"modal-header no-padding\">\n");
      out.write("                            <div class=\"table-header\">\n");
      out.write("                                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">\n");
      out.write("                                    <span class=\"white\">&times;</span>\n");
      out.write("                                </button>\n");
      out.write("                                PANNEAU D'ENREGISTREMENT DES MEDECIN\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div  class=\"modal-body no-padding\">\n");
      out.write("                            <div class=\"widget-body\">\n");
      out.write("                                <div class=\"widget-main\">\n");
      out.write("                                    <div style=\"position:relative;top:20px;\">\n");
      out.write("                                        <form action=\"serveletMedecin.jsp\" method=\"POST\">\n");
      out.write("                                            <input type=\"text\" name=\"med_matricule\" placeholder=\"Numéro matricule\" required/>\n");
      out.write("                                            <input type=\"text\" name=\"med_nomPrenom\" placeholder=\"Nom et Prenom\" required/>\n");
      out.write("\n");
      out.write("                                            <div class=\"input-field col s6\" style=\"position:relative !important;left:335px !important;width:210px !important;\">\n");
      out.write("                                                <select name=\"med_sexe\" class=\"form-control\" id=\"form-field-select-1\">\n");
      out.write("                                                    <option value=\"\">SEX</option>\n");
      out.write("                                                    <option value=\"Femme\">Femme</option>\n");
      out.write("                                                    <option value=\"Homme\">Homme</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"input-field col s6\" style=\"position:relative !important;left:-10px !important;width:555px !important;\">\n");
      out.write("                                                <select name=\"med_nationalite\" class=\"form-control\" id=\"form-field-select-1\">\n");
      out.write("                                                    <option value=\"\">NATIONALITE:</option>\n");
      out.write("                                                    <option value=\"Malagasy\">Malagasy</option>\n");
      out.write("                                                    <option value=\"Français\">Français</option>\n");
      out.write("                                                    <option value=\"Malagasy\">Anglais</option>\n");
      out.write("                                                    <option value=\"Français\">Italien</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"input-field col s6\" style=\"position:relative !important;left:-10px !important;width:555px !important;\">\n");
      out.write("                                                <select name=\"med_indice\" class=\"form-control\" id=\"form-field-select-1\">\n");
      out.write("                                                    <option value=\"\">INDICE:</option>\n");
      out.write("                                                    <option value=\"Specialiste\">Specialiste</option>\n");
      out.write("                                                    <option value=\"Débutant\">Débutant</option>\n");
      out.write("                                                    <option value=\"Malagasy\">Anglais</option>\n");
      out.write("                                                    <option value=\"Français\">Italien</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"input-field col s6\" style=\"position:relative !important;left:100px !important;width:210px !important;\">\n");
      out.write("                                                <i class=\"material-icons prefix\">face</i>\n");
      out.write("                                                <label for=\"last_name\"></label>\n");
      out.write("                                                <input type=\"date\" name=\"med_datebutEmbauche\" class=\"datepicker\" size=\"50\" placeholder=\"Date de début d'Ambauche\" required/>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"input-field col s6\" style=\"position:relative !important;left:110px !important;width:210px !important;\">\n");
      out.write("                                                <i class=\"material-icons prefix\">face</i>\n");
      out.write("                                                <label for=\"last_name\"></label>\n");
      out.write("                                                <input type=\"date\" name=\"med_datefinEmbauche\" class=\"datepicker\" size=\"50\" placeholder=\"Date de fin d'Ambauche\" required/>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <input type=\"text\" name=\"med_contact\" placeholder='Contacte du nouveau médecin' required />\n");
      out.write("                                            </BR>\n");
      out.write("                                            <input type=\"text\" name=\"med_domicile\" placeholder=\"Domicile\" required/>\n");
      out.write("                                            <button class=\"btn waves-effect waves-light pull-right\" type=\"submit\" >ENREGISTRER\n");
      out.write("                                                <i class=\"material-icons right\">send</i>\n");
      out.write("                                            </button>\n");
      out.write("\n");
      out.write("                                        </form>                                       \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"modal-footer no-margin-top\">\n");
      out.write("                            <button class=\"btn btn-sm btn-danger pull-left\" data-dismiss=\"modal\">\n");
      out.write("                                <i class=\"ace-icon fa fa-times\"></i>\n");
      out.write("                                Fermer\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                    </div><!-- /.modal-content -->\n");
      out.write("                </div><!-- /.modal-dialog -->\n");
      out.write("            </div><!-- PAGE CONTENT ENDS --> \n");
      out.write("\n");
      out.write("\n");
      out.write("            <br />\n");
      out.write("            <br />\n");
      out.write("            <br />\n");
      out.write("            <br />\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- PAGE CONTENT ENDS -->\n");
      out.write("    </div><!-- /.col -->\n");
      out.write("</div><!-- /.row -->\n");
      out.write("</div><!-- /.page-content -->\n");
      out.write("</div>\n");
      out.write("</div><!-- /.main-content -->\n");
      out.write("<div class=\"fixed-action-btn vertocal\">\n");
      out.write("    <a class=\"btn-floating btn-large blue darken-3\">\n");
      out.write("        <i class=\"large material-icons\">group</i>\n");
      out.write("    </a>\n");
      out.write("    <ul>\n");
      out.write("       \n");
      out.write("        <li><a class=\"btn-floating green tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de recherche multi option\" href=\"Vue_listeMedecin.jsp\"><i class=\"material-icons\">search</i></a></li>\n");
      out.write("        <li><a class=\"btn-floating green tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste d'import et export d'option\" href=\"Vue_listeMedecin.jsp\"><i class=\"material-icons\">import_export</i></a></li>\n");
      out.write("        <li><a class=\"btn-floating green tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de medecin version imprimmable\" href=\"Vue_listeMedecin.jsp\"><i class=\"material-icons\">print</i></a></li>\n");
      out.write("        <li><a class=\"btn-floating blue tooltipped\" data-position=\"left\" data-delay=\"50\" data-tooltip=\"Liste de mis à jour et sauvegarde\" href=\"Vue_listeMedecin1.jsp\"><i class=\"material-icons\">update</i></a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("</body>\n");
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
