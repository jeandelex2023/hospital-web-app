
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
request.getParameter("search");
    Class.forName("org.postgresql.Driver").newInstance();  
    java.sql.Connection conn = java.sql.DriverManager.getConnection("jdbc:postgresql://localhost:5432/basecafet", "postgres", "andrinirina");  
    java.sql.Statement stmt = conn.createStatement();  
    java.sql.ResultSet RS = stmt.executeQuery("select numconsom,libelle,prix_unit,qte_init from consommation where numconsom = '%" + request.getParameter("search") + "%' group by numconsom,libelle,prix_unit,qte_init");  
    out.print("<TABLE Border=1 bordercolor=\"#000000\" CellSpacing=0>");
    out.print("<TR>");
    out.print("<TD><B>NumCons</B></TD>");
    out.print("<TD><B>Libelle</B></TD>");
    out.print("<TD><B>PU</B></TD>");
    out.print("<TD><B>QQTE</B></TD>");
    out.print("</TR>");
    while(RS.next()) {  
        out.print("<TR>");
        out.print("<TD>" +RS.getString("numconsom") +"</TD>");
        out.print("<TD>" +RS.getString("libelle") +"</TD>");
        out.print("<TD>" +RS.getString("prix_unit") +"</TD>");
        out.print("<TD>" +RS.getString("qte_init") +"</TD>");
        out.print("</TR>"); 
    }  
    out.print("</TABLE>");
    RS.close();  
    stmt.close();  
    conn.close();  

%>
    </body>
</html>
