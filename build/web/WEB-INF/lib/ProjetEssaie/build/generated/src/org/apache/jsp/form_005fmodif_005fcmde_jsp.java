package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class form_005fmodif_005fcmde_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<script lang=\"javascript\">\n");
      out.write("    function maj_cmd(){\n");
      out.write("        document.location = \"FormMajCmd.jsp\";\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<html>\n");
      out.write("    ");
      gestion.GestionCommande getcmd = null;
      synchronized (session) {
        getcmd = (gestion.GestionCommande) _jspx_page_context.getAttribute("getcmd", PageContext.SESSION_SCOPE);
        if (getcmd == null){
          getcmd = new gestion.GestionCommande();
          _jspx_page_context.setAttribute("getcmd", getcmd, PageContext.SESSION_SCOPE);
        }
      }
      out.write("                  \n");
      out.write("    ");

        String ide = request.getParameter("code");
        ResultSet resultats = getcmd.getAll(ide);
        resultats.next();
    
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "entete.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"menu_c\">\n");
      out.write("            <p>Vous &ecirc;tes ici : <a href=\"javascript:accueil()\">Accueil</a> > <a href=\"javascript:comd()\">Commande</a> > <a href=\"javascript:liste()\">Mis à jour</a> > Modification </p>\n");
      out.write("            <form name=\"form1\" method=\"post\" action=\"update_cmd.jsp\">\n");
      out.write("                <center><div align=\"center\" id=\"formtext\">\n");
      out.write("                        <table width=\"415\" border=\"0\" align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\" bgcolor=\"#F2F2F2\"><div align=\"center\"><span class=\"Style24 Style14\">FORMULAIRE DE MODIFICATION </span> </div></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td width=\"92\"><span class=\"Style24 Style16\">Numéro :</span></td>\n");
      out.write("                                <td width=\"290\"><span class=\"Style11\">\n");
      out.write("                                        <label>\n");
      out.write("                                            <input  name=\"numcmd\" type=\"text\" value=\"");
      out.print(resultats.getString("numcmd"));
      out.write("\"/>\n");
      out.write("                                    </label>\n");
      out.write("                                </span></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><span class=\"Style24 Style16\">Num table :</span></td>\n");
      out.write("                            <td><span class=\"Style11\">\n");
      out.write("                                    <label>\n");
      out.write("                                        <input name=\"numtable\" type=\"text\" value=\"");
      out.print(resultats.getString("numtable"));
      out.write("\"/>\n");
      out.write("                                    </label>\n");
      out.write("                                </span></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><span class=\"Style24 Style16\">Consommation :</span></td>\n");
      out.write("                            <td><span class=\"Style11\">\n");
      out.write("                                    <label>\n");
      out.write("                                        <input  name=\"numconsom\" type=\"text\" value=\"");
      out.print(resultats.getString("numconsom"));
      out.write("\"/>\n");
      out.write("                                    </label>\n");
      out.write("                                </span></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><span class=\"Style24 Style16\">Qte cmd : </span></td>\n");
      out.write("                            <td><span class=\"Style11\">\n");
      out.write("                                    <label>\n");
      out.write("                                        <input name=\"qte_cmd\" type=\"text\" value=\"");
      out.print(resultats.getString("qte_cmd"));
      out.write("\" />\n");
      out.write("                                    </label>\n");
      out.write("                                </span></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><span class=\"Style24 Style16\">Date : </span></td>\n");
      out.write("                            <td><span class=\"Style11\">\n");
      out.write("                                    <label>\n");
      out.write("                                        <input name=\"date_cmd\" type=\"text\" value=\"");
      out.print(resultats.getString("date_cmd"));
      out.write("\" />\n");
      out.write("                                    </label>\n");
      out.write("                                </span></td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>&nbsp;</td>\n");
      out.write("                            <td>&nbsp;</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td bgcolor=\"#F2F2F2\"><span class=\"Style25\"></span></td>\n");
      out.write("                            <td bgcolor=\"#F2F2F2\"><span class=\"Style26\">\n");
      out.write("                                    <div id=\"formbouton\">\n");
      out.write("                                        <label>\n");
      out.write("\n");
      out.write("                                            <input type=\"submit\" name=\"Submit2\" value=\"Valider\" />\n");
      out.write("                                        </label>\n");
      out.write("                                        <label>\n");
      out.write("                                            <button class=\"btn waves-effect waves-light red lighten-4\" type=\"button\" name=\"Submit3\" onClick=\"maj_cmd()\"/>cancel\n");
      out.write("                                            <i class=\"material-icons right\">cancel</i> \n");
      out.write("                                        </label>\n");
      out.write("                                    </div>\n");
      out.write("                                </span></td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table></div>                \n");
      out.write("            </center>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "pied.jsp", out, false);
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
