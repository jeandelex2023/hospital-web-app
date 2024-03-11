/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import action.classe.classeFournisseur;
import action.classe.connexionbase;
import java.sql.ResultSet;
public class GestionFournisseur {

    public connexionbase connexion;

    public GestionFournisseur() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(classeFournisseur obj) throws Exception {
        String query = "INSERT INTO fournisseur(idfourn,nomfourn, adrs_fourn, cont_fourn) values ('" + obj.getIdfourn() + "','" + obj.getNomfourn() + "','" + obj.getAdrs_fourn() + "','" + obj.getCont_fourn() + "')";
        connexion.executeUpdate(query);
    }

    public void update(String id, classeFournisseur obj) throws Exception {
        String query = "UPDATE fournisseur SET idfourn='" + obj.getIdfourn() + "',nomfourn='" + obj.getNomfourn() + "',adrs_fourn='" + obj.getAdrs_fourn() + "',cont_fourn='" + obj.getCont_fourn() + "' where idfourn='" + id + "'";
        connexion.executeUpdate(query);
    }

    public void delete(String id) throws Exception {
        String query = "DELETE FROM  fournisseur WHERE idfourn='" + id + "'";
        connexion.executeUpdate(query);
    }

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM fournisseur order by idfourn asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM fournisseur where idfourn='"+ id+ "' order by idfourn asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
