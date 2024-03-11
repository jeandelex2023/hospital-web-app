/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import action.classe.ClasseConsultation;
import action.classe.connexionbase;
import java.sql.ResultSet;

/**
 *
 * @author Delex
 */
public class GestionConsultation {
      public connexionbase connexion;  
      
      public GestionConsultation() throws Exception {
        connexion = new connexionbase();
    }
      public void insert(ClasseConsultation obj) throws Exception {
        String query = "INSERT INTO tb_consultation(com_identifiant,cons_nomPatient,cons_nomMedecin,cons_montant) values ('" + obj.getCom_identifiant() + "','" + obj.getCons_nomPatient() + "','" + obj.getCons_nomMedecin() + "','" + obj.getCons_montant() + "')";
        connexion.executeUpdate(query);
    }
      public void update(String id, ClasseConsultation obj) throws Exception {
        String query = "UPDATE tb_consultation SET com_identifiant='" + obj.getCom_identifiant() + "',cons_nomPatient='"+obj.getCons_nomPatient()+"', cons_nomMedecin='" + obj.getCons_nomMedecin() + "',cons_montant='" + obj.getCons_montant() + "' where com_identifiant='" + id + "'";
        connexion.executeUpdate(query);
    }
      public void delete(String id) throws Exception {
        String query = "DELETE FROM  tb_consultation WHERE com_identifiant='" + id + "'";
        connexion.executeUpdate(query);
    }
      public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tb_consultation order by com_identifiant asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM tb_consultation where com_identifiant='"+ id+ "'";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}

