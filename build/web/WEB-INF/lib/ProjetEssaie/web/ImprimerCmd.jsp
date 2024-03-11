
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Impression commande</title>
        <link rel="shortcut icon" href="images/logo_cafet.jpg" type="image/x-icon" />
    </head>
    <body>
<h2>&nbsp;</h2>
        <%
            Connection conn = null;
            try {
                Class.forName("org.gjt.mm.mysql.Driver");//org.postgresql.Driver
                conn = DriverManager.getConnection("jdbc:MySQL://localhost:3306/basecafet", "root", "");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("repport/ListeCmd.jasper"));
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);
            response.setContentType("");
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
        %>
    </body>
</html>