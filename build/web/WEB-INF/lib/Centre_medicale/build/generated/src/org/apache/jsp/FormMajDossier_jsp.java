package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class FormMajDossier_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--Erreur inconnnue pour l'importation du java sql resultatSET-->\n");
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <script lang=\"javascript\">\n");
      out.write("            function supprimer_mati(nbmax) {\n");
      out.write("                exist = 0;\n");
      out.write("                ident = \"\";\n");
      out.write("                for (i = 0; i < nbmax; i++) {\n");
      out.write("                    if (document.forms[0].elements['checkbox' + i].checked) {\n");
      out.write("                        ident += \"&code\" + exist + \"=\" + document.forms[0].elements['id' + i].value;\n");
      out.write("                        exist += 1;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                if (exist == 0)\n");
      out.write("                    alert('Veuillez selectionner au moins un enregistrement');\n");
      out.write("                else if (exist >= 1)\n");
      out.write("                    if (confirm('Voullez vous supprimer vraiement ces enregistrements?'))\n");
      out.write("                        document.location = \"delete_dossier.jsp?nbsuppr=\" + exist + ident;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function modifier_matie(nbmax) {\n");
      out.write("                exist = 0;\n");
      out.write("                for (i = 0; i < nbmax; i++) {\n");
      out.write("                    if (document.forms[0].elements['checkbox' + i].checked == true) {\n");
      out.write("                        exist += 1;\n");
      out.write("                        ident = document.forms[0].elements['id' + i].value;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                if (exist == 0)\n");
      out.write("                    alert('Veuillez selectionner un enregistrement');\n");
      out.write("                else\n");
      out.write("                if (exist > 1)\n");
      out.write("                    alert('Veuillez selectionner un seul enregistrement');\n");
      out.write("                else if (exist == 1) {\n");
      out.write("                    document.location = \"form_modif_dossier.jsp?code=\" + ident;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            //    misy karazana roa ny fanaovana impression, ray le code comment io de ray le lavai o       \n");
      out.write("            function excel() {\n");
      out.write("                //            var htmltable= document.getElementById('clips_table');\n");
      out.write("                //            var html = htmltable.outerHTML;\n");
      out.write("                //            window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));\n");
      out.write("\n");
      out.write("                var tab_text = \"<table border='2px'><tr bgcolor='#87AFC6'>\";\n");
      out.write("                var textRange;\n");
      out.write("                var j = 0;\n");
      out.write("                tab = document.getElementById('dynamic-table'); // id of table\n");
      out.write("\n");
      out.write("                for (j = 0; j < tab.rows.length; j++)\n");
      out.write("                {\n");
      out.write("                    tab_text = tab_text + tab.rows[j].innerHTML + \"</tr>\";\n");
      out.write("                    //tab_text=tab_text+\"</tr>\";\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                tab_text = tab_text + \"</table>\";\n");
      out.write("                tab_text = tab_text.replace(/<A[^>]*>|<\\/A>/g, \"\");//remove if u want links in your table\n");
      out.write("                tab_text = tab_text.replace(/<img[^>]*>/gi, \"\"); // remove if u want images in your table\n");
      out.write("                tab_text = tab_text.replace(/<input[^>]*>|<\\/input>/gi, \"\"); // reomves input params\n");
      out.write("\n");
      out.write("                var ua = window.navigator.userAgent;\n");
      out.write("                var msie = ua.indexOf(\"MSIE \");\n");
      out.write("\n");
      out.write("                if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\\:11\\./))      // If Internet Explorer\n");
      out.write("                {\n");
      out.write("                    txtArea1.document.open(\"txt/html\", \"replace\");\n");
      out.write("                    txtArea1.document.write(tab_text);\n");
      out.write("                    txtArea1.document.close();\n");
      out.write("                    txtArea1.focus();\n");
      out.write("                    sa = txtArea1.document.execCommand(\"SaveAs\", true, \"Say Thanks to Sumit.xls\");\n");
      out.write("                }\n");
      out.write("                else                 //other browser not tested on IE 11\n");
      out.write("                    sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));\n");
      out.write("\n");
      out.write("                return (sa);\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function selectElementContents(el) {\n");
      out.write("                var body = document.body, range, sel;\n");
      out.write("                if (document.createRange && window.getSelection) {\n");
      out.write("                    range = document.createRange();\n");
      out.write("                    sel = window.getSelection();\n");
      out.write("                    sel.removeAllRanges();\n");
      out.write("                    try {\n");
      out.write("                        range.selectNodeContents(el);\n");
      out.write("                        sel.addRange(range);\n");
      out.write("                    } catch (e) {\n");
      out.write("                        range.selectNode(document.getElementById(el));\n");
      out.write("                        sel.addRange(range);\n");
      out.write("                    }\n");
      out.write("                } else if (body.createTextRange) {\n");
      out.write("                    range = body.createTextRange();\n");
      out.write("                    range.moveToElementText(el);\n");
      out.write("                    range.select();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    ");
      gestion.GestionDossier gestionDossier = null;
      synchronized (session) {
        gestionDossier = (gestion.GestionDossier) _jspx_page_context.getAttribute("gestionDossier", PageContext.SESSION_SCOPE);
        if (gestionDossier == null){
          gestionDossier = new gestion.GestionDossier();
          _jspx_page_context.setAttribute("gestionDossier", gestionDossier, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("    ");

        ResultSet res = gestionDossier.getAll();
        int i = 0;
    
      out.write("\n");
      out.write("    <body class=\"no-skin\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "contenu.jsp", out, false);
      out.write("\n");
      out.write("<BR><BR><BR><BR>\n");
      out.write("            <h4 class=\"white-opaque\">\n");
      out.write("                <i class=\"ace-icon fa fa-hand-o-right icon-animated-hand-pointer\"></i>\n");
      out.write("                <a href=\"#modal-table\" role=\"button\"  data-toggle=\"modal\"> Voire les dérnières enrégistrements des listes</a>\n");
      out.write("            </h4>\n");
      out.write("\n");
      out.write("            <div class=\"hr hr-18 dotted hr-double\"></div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-xs-12\">\n");
      out.write("                    <form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\n");
      out.write("                        <table id=\"dynamic-table\" class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Ordre</th>\n");
      out.write("                                    <th>Phone</th>\n");
      out.write("                                    <th>Nome</th>\n");
      out.write("                                    <th>Mother</th>\n");
      out.write("                                    <th>Father</th>\n");
      out.write("                                    <th>Birth</th>\n");
      out.write("                                    <th>Nationality</th>\n");
      out.write("                                    <th>Sex</th>\n");
      out.write("                                    <th>Adresse</th>\n");
      out.write("                                    <th>H.Medicale</th>\n");
      out.write("                                    <th>Vaccin</th>\n");
      out.write("                                    <th>N.Insurrance</th>\n");
      out.write("                                    <th>M.History</th>\n");
      out.write("                                    <th>S.History</th>\n");
      out.write("                                    <th>C.Medicale</th>\n");
      out.write("                                    <th>Alergie</th>\n");
      out.write("                                    <th>D.Naissance</th>                                               \n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                            ");
 while (res.next()) {
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
      out.print(res.getString("automatique"));
      out.write("\n");
      out.write("                                    <input type=\"hidden\" name=\"id");
      out.print(i);
      out.write("\" value=\"");
      out.print(res.getString("automatique"));
      out.write("\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_numeroPhone"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_nomPrenom"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_mere"));
      out.write(" </td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_pere"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_dateNaissance"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_nationalite"));
      out.write(" </td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_sexe"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_adresse"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_insurranceMedicale"));
      out.write(" </td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_vaccine"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_numInsurrance"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_medicaleHistorique"));
      out.write(" </td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_surgicaleHistorique"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_chroniqueMedicale"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_alergie"));
      out.write(" </td>\n");
      out.write("                                <td>");
      out.print(res.getString("dos_devlpNaissance"));
      out.write(" </td>                                     \n");
      out.write("                            </tr>\n");
      out.write("                            ");
i++;
      out.write("\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <button disabled class=\"btn waves-effect waves-light\" type=\"button\" id=\"disabled\" name=\"Modifier\" onclick=\"javascript:modifier_matie(");
out.print(i);
      out.write(");\">Sauvegarde\n");
      out.write("                        <i class=\"material-icons right\">cloud</i>\n");
      out.write("                    </button>\n");
      out.write("                    &nbsp;\n");
      out.write("                    <button disabled class=\"btn waves-effect waves-light\" type=\"button\" id=\"disabled\" name=\"Submit2\" onclick=\"javascript:supprimer_mati(");
out.print(i);
      out.write(");\">Suppression\n");
      out.write("                        <i class=\"material-icons right\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    &nbsp;\n");
      out.write("                    <button class=\"btn waves-effect waves-light\" type=\"button\" name=\"Submit2\" onclick='excel()'>Exporter... \n");
      out.write("                        <i class=\"material-icons right\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <label> &nbsp;\n");
      out.write("                        <button class=\"btn waves-effect waves-light\" type=\"button\" name=\"Submit2\" onclick=\"selectElementContents('dynamic-table');\"/>Copier... \n");
      out.write("                        <i class=\"material-icons left\">face</i>\n");
      out.write("                    </label>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"modal-table\" class=\"modal fade\" tabindex=\"-1\">\n");
      out.write("            <div class=\"modal-dialog\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header no-padding\">\n");
      out.write("                        <div class=\"table-header\">\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">\n");
      out.write("                                <span class=\"white\">&times;</span>\n");
      out.write("                            </button>\n");
      out.write("                            Liste des dérnieres enrégistrements\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body no-padding\">\n");
      out.write("                        <table class=\"table table-striped table-bordered table-hover no-margin-bottom no-border-top\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Nom et Prenom</th>\n");
      out.write("                                    <th>Nationalité</th>\n");
      out.write("                                    <th>Contacte</th>\n");
      out.write("                                    <th>\n");
      out.write("                                        <i class=\"ace-icon fa fa-clock-o bigger-110 hidden-480\"></i>\n");
      out.write("                                        Dérniere mise a jour\n");
      out.write("                                    </th>\n");
      out.write("\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\">Jean</a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Malagasy</td>\n");
      out.write("                                    <td>0343249007</td>\n");
      out.write("                                    <td>Feb 12</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\">delex</a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Francais</td>\n");
      out.write("                                    <td>0343249007</td>\n");
      out.write("                                    <td>Feb 18</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\">Dalgo</a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Comore</td>\n");
      out.write("                                    <td>0343249007</td>\n");
      out.write("                                    <td>Mar 11</td>\n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><a href=\"#\">Didier</a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Ivorien</td>\n");
      out.write("                                    <td>0343249007</td>\n");
      out.write("                                    <td>Apr 03</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\">Alison</a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Canadien</td>\n");
      out.write("                                    <td>0343249007</td>\n");
      out.write("                                    <td>Jan 21</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"modal-footer no-margin-top\">\n");
      out.write("                        <button class=\"btn btn-sm btn-danger pull-left\" data-dismiss=\"modal\">\n");
      out.write("                            <i class=\"ace-icon fa fa-times\"></i>\n");
      out.write("                            Fermer\n");
      out.write("                        </button>\n");
      out.write("                        <ul class=\"pagination pull-right no-margin\">\n");
      out.write("                            <li class=\"prev disabled\">\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <i class=\"ace-icon fa fa-angle-double-left\"></i></li>\n");
      out.write("                            <li class=\"active\">\n");
      out.write("                                <a href=\"#\">1</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"#\">2</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"#\">3</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"next\">\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <i class=\"ace-icon fa fa-angle-double-right\"></i>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div><!-- /.modal-content -->\n");
      out.write("            </div><!-- /.modal-dialog -->\n");
      out.write("        </div><!-- PAGE CONTENT ENDS -->        \n");
      out.write("        <br />\n");
      out.write("        <br />\n");
      out.write("        <br />\n");
      out.write("        <br />\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- PAGE CONTENT ENDS -->\n");
      out.write("</div><!-- /.col -->\n");
      out.write("</div><!-- /.row -->\n");
      out.write("</div><!-- /.page-content -->\n");
      out.write("</div>\n");
      out.write("</div><!-- /.main-content -->\n");
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