<%@ page import ="java.sql.*" %>
<%
        String username = request.getParameter("login");
        String pwd = request.getParameter("password");
        
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/basecafet";
        String user = "postgres";
        String pass = "rekolety";
        
        Connection con = (Connection) DriverManager.getConnection(url, user, pass);
        Statement st = con.createStatement();
        ResultSet rs;
        
        rs = st.executeQuery("select * from utilisateur where login='" + username + "' and mdp='" + pwd + "'");
        if (rs.next()) {
            session.setAttribute("login", username);
            //out.println("welcome " + userid);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("MenuPPALE.jsp");
        } else {
            out.println("<center><br><br><br><table width='380px' border='0' align='center'><tr bgcolor='#FFEFE8'><td>"
                    + "<b>"
                    + "<center><img src='warningpd3.png' width='50' height='50'></center><center><font color='red' size='4px'><h6> Nom d'utilisateur ou mot de passe invalide, veuillez ressayer svp</h6></font></center></b></td></tr></table></center>");

        }
    %>
    <jsp:include page="index.jsp"></jsp:include>