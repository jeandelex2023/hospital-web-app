/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import action.classe.classeTable;
import action.classe.connexionbase;
import java.sql.ResultSet;

public class GestionTable {

    public connexionbase connexion;

    public GestionTable() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(classeTable obj) throws Exception {
        String query = "INSERT INTO tables(numtable) values ('" + obj.getNumtable() + "')";
        connexion.executeUpdate(query);
    }

    public void update(String id, classeTable obj) throws Exception {
        String query = "UPDATE tables SET numtable='" + obj.getNumtable() + "'";
        connexion.executeUpdate(query);
    }

    public void delete(String id) throws Exception {
        String query = "DELETE FROM  tables WHERE numtable='" + id + "'";
        connexion.executeUpdate(query);
    }

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tables";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
