/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import action.classe.ClassePatient;
import action.classe.connexionbase;
import java.sql.ResultSet;
/**
 *
 * @author Delex
 */
public class GestionPatient {
     public connexionbase connexion;  
      
     public GestionPatient() throws Exception {
        connexion = new connexionbase();
    }
     public void insert(ClassePatient obj) throws Exception {
        String query = "INSERT INTO tb_patient(pat_numero,pat_nomPrenom,pat_dateNaissance,pat_sexe,pat_domicile,pat_nationalite,pat_contact) values ('" + obj.getPat_numero() + "','" + obj.getPat_nomPrenom() + "','" + obj.getPat_dateNaissance() + "','" + obj.getPat_sexe() + "','" + obj.getPat_domicile() + "','" + obj.getPat_nationalite() + "','" + obj.getPat_contact() + "')";
        connexion.executeUpdate(query);
    }
    public void update(String id, ClassePatient obj) throws Exception {
        String query = "UPDATE tb_patient SET pat_numero='" + obj.getPat_numero() + "',pat_nomPrenom='" + obj.getPat_nomPrenom() + "',pat_dateNaissance='" + obj.getPat_dateNaissance() + "',pat_sexe='" + obj.getPat_sexe() + "',pat_domicile='" + obj.getPat_domicile() + "',pat_nationalite='" + obj.getPat_nationalite() + "',pat_contact='" + obj.getPat_contact() + "' where pat_numero='" + id + "'";
        connexion.executeUpdate(query);
    }
   public void delete(String id) throws Exception {
        String query = "DELETE FROM  tb_patient WHERE pat_numero='" + id + "'";
        connexion.executeUpdate(query);
    }
   public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tb_patient order by pat_numero asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
   public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM tb_patient where pat_numero='"+ id+ "'";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
