package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class mise_005finserer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script lang=\"javascript\">\n");
      out.write("            function supprimer(nbmax) {\n");
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
      out.write("                        document.location = \"delete_fourn.jsp?nbsuppr=\" + exist + ident;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function modifier(nbmax) {\n");
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
      out.write("                    document.location = \"form_modif_fourn.jsp?code=\" + ident;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        ");
      gestion.GestionNdaty getmat = null;
      synchronized (session) {
        getmat = (gestion.GestionNdaty) _jspx_page_context.getAttribute("getmat", PageContext.SESSION_SCOPE);
        if (getmat == null){
          getmat = new gestion.GestionNdaty();
          _jspx_page_context.setAttribute("getmat", getmat, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("    ");

        ResultSet res = getmat.getAll();
        int i = 0;
    
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\n");
      out.write("        <table class=\"striped\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Anararana</td>\n");
      out.write("                <td>Fanampiny</td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 while (res.next()) {
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(res.getString("anarana"));
      out.write("\n");
      out.write("                    <input type=\"hidden\" name=\"id");
      out.print(i);
      out.write("\" value=\"");
      out.print(res.getString("anarana"));
      out.write("\"/>\n");
      out.write("                </td>\n");
      out.write("                <td>");
      out.print(res.getString("fanampiny"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                <td><label>\n");
      out.write("                        <input type=\"checkbox\" name=\"checkbox");
      out.print(i);
      out.write("\" />\n");
      out.write("                    </label>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");
i++;
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <div align=\"center\">\n");
      out.write("            <label>\n");
      out.write("                <button class=\"btn waves-effect waves-light  cyan darken-2\" type=\"button\"id=\"Modifier\" name=\"Modifier\" onclick=\"javascript:modifier(");
out.print(i);
      out.write(");\"/>Modifier\n");
      out.write("                <i class=\"material-icons right\">edit</i>\n");
      out.write("            </label>\n");
      out.write("            <label> &nbsp;\n");
      out.write("                <button class=\"btn waves-effect waves-light red lighten-3\" type=\"button\" name=\"Submit2\" onclick=\"javascript:supprimer(");
out.print(i);
      out.write(");\"/>Supprimer\n");
      out.write("                <i class=\"material-icons right\">delete</i>\n");
      out.write("            </label>\n");
      out.write("        </div>\n");
      out.write("    </form>\n");
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
