/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import action.classe.ClasseFournir;
import action.classe.connexionbase;
import java.sql.ResultSet;

public class GestionFournir {

    public connexionbase connexion;

    public GestionFournir() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(ClasseFournir obj) throws Exception {
        String query = "INSERT INTO fournisser(idfourn,numconsom, qte_livr, date_livr) values ('" + obj.getIdfourn() + "','" + obj.getNumconsom() + "','" + obj.getQte_livr() + "','" + obj.getDate_livr() + "')";
        connexion.executeUpdate(query);
    }

    public void update(String id, ClasseFournir obj) throws Exception {
        String query = "UPDATE fournisser SET idfourn='" + obj.getIdfourn() + "',numconsom='" + obj.getNumconsom() + "',qte_livr='" + obj.getQte_livr() + "',date_livr='" + obj.getDate_livr() + "' where idfour='" + id + "'";
        connexion.executeUpdate(query);
    }

    public void delete(String id) throws Exception {
        String query = "DELETE FROM  fournisser WHERE idfourn='" + id + "'";
        connexion.executeUpdate(query);
    }

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM fournisser";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
