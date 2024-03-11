/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action; // package classe no teto voalohany

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Jean delex
 */
public class connexionBaseOzeki {

    public Connection con;
    public Statement stat;
    public connexionBaseOzeki() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(constantsOzeki.URL, constantsOzeki.USER, constantsOzeki.PASSWD);
        stat = con.createStatement();
    }

    public ResultSet executeQuery(String query) throws Exception {
        ResultSet res = null;
        res = stat.executeQuery(query);
        return (res);
    }

    public int executeUpdate(String query) throws Exception {
        int res = 0;
        res = stat.executeUpdate(query);
        return (res);
    }

    public void close() throws Exception {
        stat.close();
        con.close();
    }
    
}
