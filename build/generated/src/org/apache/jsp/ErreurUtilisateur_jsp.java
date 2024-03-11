package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ErreurUtilisateur_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                                PANNEAU D'ENREGISTREMENT DES PATIENTS\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"error-container\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"well\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h1 class=\"grey lighter smaller\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"blue bigger-125\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-random\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t500\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tSomething Went Wrong\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</h1>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<hr />\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h3 class=\"lighter smaller\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tBut we are working\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-wrench icon-animated-wrench bigger-125\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\ton it!\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</h3>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"space\"></div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h4 class=\"lighter smaller\">Meanwhile, try one of the following:</h4>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<ul class=\"list-unstyled spaced inline bigger-110 margin-15\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-hand-o-right blue\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tRead the faq\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-hand-o-right blue\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tGive us more info on how this specific error occurred!\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<hr />\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"space\"></div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a href=\"javascript:history.back()\" class=\"btn btn-grey\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-arrow-left\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tGo Back\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</a>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-primary\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-tachometer\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tDashboard\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
