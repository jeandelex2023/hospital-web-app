/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import action.classe.ClasseAnalyse;
import action.classe.connexionbase;
import java.sql.ResultSet;
/**
 *
 * @author Delex
 */
public class GestionAnalyse {
    public connexionbase connexion;
    
    public GestionAnalyse() throws Exception {
        connexion = new connexionbase();
    }
    
     public void insert(ClasseAnalyse obj) throws Exception {
        String query = "INSERT INTO tb_analyse(anal_numFacture,anal_idLaboratoire,anal_nomPrenom,anal_rc,anal_date,anal_priseCharge,anal_numTelpatient,anal_agePatient,anal_moisCor,anal_sexe,res_parametres,res_unite,res_resultatObtenir) values ('" + obj.getAnal_numFacture() + "','" + obj.getAnal_idLaboratoire() + "','" + obj.getAnal_nomPrenom() + "','" + obj.getAnal_rc() + "','" + obj.getAnal_date() + "','" + obj.getAnal_priseCharge() + "','" + obj.getAnal_numTelpatient() + "','" + obj.getAnal_agePatient() + "','" + obj.getAnal_moisCor() + "','" + obj.getAnal_sexe() + "','" + obj.getRes_parametres() + "','" + obj.getRes_unite() + "','" + obj.getRes_resultatObtenir() + "')";
        connexion.executeUpdate(query);
    }
     public void update(String id, ClasseAnalyse obj) throws Exception {
        String query = "UPDATE tb_analyse SET anal_numFacture='" + obj.getAnal_numFacture() + "',anal_idLaboratoire='" + obj.getAnal_idLaboratoire() + "',anal_nomPrenom='" + obj.getAnal_nomPrenom() + "',anal_rc='" + obj.getAnal_rc() + "',anal_date='" + obj.getAnal_date() + "',anal_priseCharge='" + obj.getAnal_priseCharge() + "',anal_numTelpatient='" + obj.getAnal_numTelpatient() + "',anal_agePatient='" + obj.getAnal_agePatient() + "',anal_moisCor='" + obj.getAnal_moisCor() + "',anal_sexe='" + obj.getAnal_sexe() + "',res_parametres='" + obj.getRes_parametres() + "',res_unite='" + obj.getRes_unite() + "',res_resultatObtenir='" + obj.getRes_resultatObtenir() + "' where anal_numFacture='" + id + "'";
        connexion.executeUpdate(query);
    }
    public void delete(String id) throws Exception {
        String query = "DELETE FROM  tb_analyse WHERE anal_numFacture='" + id + "'";
        connexion.executeUpdate(query);
    }
    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tb_analyse order by anal_numFacture asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM tb_analyse where anal_numFacture='"+ id+ "'";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
