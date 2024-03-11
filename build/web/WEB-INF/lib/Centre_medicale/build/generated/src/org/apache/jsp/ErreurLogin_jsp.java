package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ErreurLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <body class=\"no-skin\">\n");
      out.write("            <h4 class=\"white-opaque\">\n");
      out.write("                <i class=\"ace-icon fa fa-hand-o-right icon-animated-hand-pointer\"></i>\n");
      out.write("                <a href=\"#modal-table\" role=\"button\"  data-toggle=\"modal\">Détails du probllème, clicquez ici!</a>\n");
      out.write("            </h4>                   \n");
      out.write("            <div id=\"modal-table\" class=\"modal fade\" tabindex=\"-1\">\n");
      out.write("                <div class=\"modal-dialog\">\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                        <div class=\"error-container\">\n");
      out.write("                            <div class=\"well\">\n");
      out.write("                                <h1 class=\"red-text lighter smaller\">\n");
      out.write("                                    <span class=\"red-text bigger-125\">\n");
      out.write("                                        <i class=\"ace-icon fa fa-random\"></i>\n");
      out.write("                                        404\n");
      out.write("                                    </span>\n");
      out.write("                                    Accès contrôle réfuser\n");
      out.write("                                </h1>\n");
      out.write("\n");
      out.write("                                <hr />\n");
      out.write("                                <h3 class=\"lighter smaller\">\n");
      out.write("                                    On a beaucoup de chose à régler sur votre compte\n");
      out.write("                                    <i class=\"ace-icon fa fa-wrench icon-animated-wrench bigger-125\"></i>\n");
      out.write("                                    le système ne parvient pas à votre compte, peut être vous n'avez pas le droit d'utiliser un tels compte!\n");
      out.write("                                </h3>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div>\n");
      out.write("                                    <h4 class=\"lighter smaller\">Maintenant, Essaier d'avoir un certains notions dans l'aide ci-pres:</h4>\n");
      out.write("\n");
      out.write("                                    <ul class=\"list-unstyled spaced inline bigger-110 margin-15\">\n");
      out.write("                                        <li>\n");
      out.write("                                            <i class=\"ace-icon fa fa-hand-o-right\"></i>\n");
      out.write("                                            Assurer vous que vous êtes déja inscris!\n");
      out.write("                                        </li>\n");
      out.write("\n");
      out.write("                                        <li>\n");
      out.write("                                            <i class=\"ace-icon fa fa-hand-o-right\"></i>\n");
      out.write("                                            Si vous avez de problème sur votre compte,ressaier le ou connecter vous sur facebook!\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <hr />\n");
      out.write("                                <div class=\"space\"></div>\n");
      out.write("\n");
      out.write("                                <div class=\"center\">\n");
      out.write("                                    <a href=\"javascript:history.back()\" class=\"btn btn-grey\">\n");
      out.write("                                        <i class=\"ace-icon fa fa-arrow-left\"></i>\n");
      out.write("                                        Revenu vers la page\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                    <a href=\"#\" class=\"btn btn-primary\">\n");
      out.write("                                        <i class=\"ace-icon fa fa-signal\"></i>\n");
      out.write("                                        Solution sur internet\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div><!-- /.modal-content -->\n");
      out.write("                    </div><!-- /.modal-dialog -->\n");
      out.write("                </div><!-- PAGE CONTENT ENDS --> \n");
      out.write("\n");
      out.write("\n");
      out.write("                <br />\n");
      out.write("                <br />\n");
      out.write("                <br />\n");
      out.write("                <br />\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- PAGE CONTENT ENDS -->\n");
      out.write("        </div><!-- /.col -->\n");
      out.write("    </div><!-- /.row -->\n");
      out.write("</div><!-- /.page-content -->\n");
      out.write("</div>\n");
      out.write("</div><!-- /.main-content -->\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("      \n");
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
