package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Vue_005flisteDossier_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <script>\n");
      out.write("        if (!confirm(\"Es-tu certain de vouloir accéder à cette page ? Clique sur OK pour continuer ou Annuler pour retourner à la page précédente\"))\n");
      out.write("            history.go(-1);\n");
      out.write("    </script>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header_liste.jsp", out, false);
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
      out.write("                    alert('Veuillez selectionner au plus une seule enregistrement de la liste souhaitez-vous à supprimer!!');\n");
      out.write("                else if (exist >= 1)\n");
      out.write("                    if (confirm('Si vous allez supprimer cet élement, vous risque de perdre son contenu!!\\n \\n \\f NB: Effectuer pour\\t [ OK ou ANNULER ]:\\n \\n \\f -OK :: Pour éliminer cet élement! \\n \\n \\f - Annuler :: Pour garder encore cet élement!'))\n");
      out.write("                        document.location = \"Supprimer_listeDossier.jsp?nbsuppr=\" + exist + ident;\n");
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
      out.write("                    alert('Veuillez selectionner au plus une seule enregistrement de la liste souhaitez-vous à modifier!');\n");
      out.write("                else\n");
      out.write("                if (exist > 1)\n");
      out.write("                    alert('Veuillez selectionner un seul enregistrement !');\n");
      out.write("                else if (exist == 1) {\n");
      out.write("                    if (confirm('Vous êtes entrain de mêtre à jour une liste qui vient d/être sélectionner!! \\n \\n \\f NB: Apuiez sur \\t [ OK ou ANNULER ]:\\n \\n \\f -OK :: Pour effectuer le changement ! \\n \\n \\f - Annuler :: Pour ne pas changer !'))\n");
      out.write("                        document.location = \"form_modif_dossier.jsp?code=\" + ident;\n");
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
      out.write("\n");
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
      out.write("                                    <th>D.Naissance</th>\n");
      out.write("                                    <th class=\"center\">\n");
      out.write("                                        <label class=\"pos-rel\">\n");
      out.write("                                            <input type=\"checkbox\" class=\"ace\" />\n");
      out.write("                                            <span class=\"lbl\"></span>\n");
      out.write("                                        </label>\n");
      out.write("                                    </th>\n");
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
      out.write("                                <td>\n");
      out.write("                                    <label>\n");
      out.write("                                        <input type=\"checkbox\" name=\"checkbox");
      out.print(i);
      out.write("\" />\n");
      out.write("                                    </label>\n");
      out.write("                                </td>\n");
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
      out.write("                    <button class=\"btn waves-effect waves-light\" type=\"button\" name=\"Modifier\" onclick=\"javascript:modifier_matie(");
out.print(i);
      out.write(");\">Modification\n");
      out.write("                        <i class=\"material-icons right\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    &nbsp;\n");
      out.write("                    <button class=\"btn waves-effect waves-light\" type=\"button\" name=\"Submit2\" onclick=\"javascript:supprimer_mati(");
out.print(i);
      out.write(");\">Suppression\n");
      out.write("                        <i class=\"material-icons right\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    &nbsp;\n");
      out.write("                    <button class=\"btn waves-effect waves-light\" type=\"button\" disabled=\"\" onclick='excel()'>Exporter......\n");
      out.write("                        <i class=\"material-icons right\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <label> &nbsp;\n");
      out.write("                        <button class=\"btn waves-effect waves-light\" type=\"button\" disabled=\"\" onclick=\"selectElementContents('dynamic-table');\"/>Copier..... \n");
      out.write("                        <i class=\"material-icons left\"></i>\n");
      out.write("                    </label>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    \n");
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer_liste.jsp", out, false);
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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