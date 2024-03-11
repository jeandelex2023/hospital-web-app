/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionclasses;

/**
 *
 * @author Delex
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Connexion_base {

    public Connection con;
    public Statement stat;

    public Connexion_base() throws Exception {
        Class.forName("org.gjt.mm.mysql.Driver");
        con = DriverManager.getConnection(Constantes.URL, Constantes.USER, Constantes.PASSWD);
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
