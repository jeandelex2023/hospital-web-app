/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import action.classe.classeConsommation;
import action.classe.connexionbase;
import java.sql.ResultSet;

public class GestionConsommation {
    public connexionbase connexion;

    public GestionConsommation() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(classeConsommation obj) throws Exception {
        String query = "INSERT INTO consommation(numconsom,libelle,qte_init, prix_unit) values ('" + obj.getNumconsom()+ "','" + obj.getLibelle()+ "','"+obj.getQte_init()+"', '" + obj.getPrix_unit()+ "')";
        connexion.executeUpdate(query);
    }

    public void update(String id, classeConsommation obj) throws Exception {
        String query = "UPDATE consommation SET numconsom='" + obj.getNumconsom() + "',libelle='" + obj.getLibelle() + "',qte_init='"+obj.getQte_init()+"', prix_unit='" + obj.getPrix_unit() + "' where numconsom='" + id + "'";
        connexion.executeUpdate(query);
    }

    public void delete(String id) throws Exception {
        String query = "DELETE FROM  consommation WHERE numconsom='" + id + "'";
        connexion.executeUpdate(query);
    }

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM consommation order by numconsom asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM consommation where numconsom='"+ id+ "' order by numconsom asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getDetail() throws Exception {
        String query = "SELECT CONSOMMATION.NUMCONSOM, CONSOMMATION.LIBELLE, CONSOMMATION.PRIX_UNIT, FOURNISSEUR.NOMFOURN, FOURNISSEUR.CONT_FOURN FROM FOURNISSEUR INNER JOIN (CONSOMMATION INNER JOIN FOURNIR ON CONSOMMATION.NUMCONSOM = FOURNIR.NUMCONSOM) ON FOURNISSEUR.IDFOURN = FOURNIR.IDFOURN";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
