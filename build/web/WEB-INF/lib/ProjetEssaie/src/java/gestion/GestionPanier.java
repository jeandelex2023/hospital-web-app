/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import action.classe.ClassePanier;
import action.classe.connexionbase;
import java.sql.ResultSet;

public class GestionPanier {
     public connexionbase connexion;

    public GestionPanier() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(ClassePanier obj) throws Exception {
        String query = "INSERT INTO paniers(numtable,numconsom, qte_pan, date_pan) values ('" + obj.getNumtable()+ "','" + obj.getNumconsom() + "','" + obj.getQte_pan()+ "','" + obj.getDate_pan()+ "')";
        connexion.executeUpdate(query);
    }

    public void update(String id, ClassePanier obj) throws Exception {
        String query = "UPDATE paniers SET numtable='" + obj.getNumtable() + "',numconsom='" + obj.getNumconsom() + "',qte_pan='" + obj.getQte_pan() + "',date_pan='" + obj.getDate_pan() + "' where numtable='" + id + "'";
        connexion.executeUpdate(query);
    }

    public void delete(String id) throws Exception {
        String query = "DELETE FROM  paniers WHERE numtable='" + id + "'";
        connexion.executeUpdate(query);
    }

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM paniers";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
