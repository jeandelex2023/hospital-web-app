/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import action.classe.ClasseDossier;
import action.classe.connexionbase;
import java.sql.ResultSet;
/**
 *
 * @author Delex
 */
public class GestionDossier {
    
    public connexionbase connexion;

    public GestionDossier() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(ClasseDossier obj) throws Exception {
        String query = "INSERT INTO tb_dossiermedicale(automatique,dos_numeroPhone,dos_nomPrenom,dos_mere,dos_pere,dos_dateNaissance,dos_nationalite,dos_sexe,dos_adresse,dos_insurranceMedicale,dos_vaccine,dos_numInsurrance,dos_medicaleHistorique,dos_surgicaleHistorique,dos_chroniqueMedicale,dos_alergie,dos_devlpNaissance) values ('" + obj.getAutomatique() + "','" + obj.getDos_numeroPhone() + "','" + obj.getDos_nomPrenom() + "','" + obj.getDos_mere() + "','" + obj.getDos_pere() + "','" + obj.getDos_dateNaissance() + "','" + obj.getDos_nationalite() + "','" + obj.getDos_sexe() + "','" + obj.getDos_adresse() + "','" + obj.getDos_insurranceMedicale() + "','" + obj.getDos_vaccine() + "','" + obj.getDos_numInsurrance() + "','" + obj.getDos_medicaleHistorique() + "','" + obj.getDos_surgicaleHistorique() + "','" + obj.getDos_chroniqueMedicale() + "','" + obj.getDos_alergie() + "','" + obj.getDos_devlpNaissance() + "')";
        connexion.executeUpdate(query);
    }
    
    public void delete(String id) throws Exception {
        String query = "DELETE FROM  tb_dossiermedicale WHERE automatique='" + id + "'";
        connexion.executeUpdate(query);
    }
   public void update(String id, ClasseDossier obj) throws Exception {
        String query = "UPDATE tb_dossiermedicale SET dos_numeroPhone='" + obj.getDos_numeroPhone() + "',dos_nomPrenom='" + obj.getDos_nomPrenom() + "',dos_mere='" + obj.getDos_mere() + "',dos_pere='" + obj.getDos_pere() + "',dos_dateNaissance='" + obj.getDos_dateNaissance() + "',dos_nationalite='" + obj.getDos_nationalite() + "',dos_sexe='" + obj.getDos_sexe() + "',dos_adresse='" + obj.getDos_adresse() + "',dos_insurranceMedicale='" + obj.getDos_insurranceMedicale() + "',dos_vaccine='" + obj.getDos_vaccine() + "',dos_numInsurrance='" + obj.getDos_numInsurrance() + "',dos_medicaleHistorique='" + obj.getDos_medicaleHistorique() + "',dos_surgicaleHistorique='" + obj.getDos_surgicaleHistorique() + "',dos_chroniqueMedicale='" + obj.getDos_chroniqueMedicale() + "',dos_alergie='" + obj.getDos_alergie() + "',dos_devlpNaissance='" + obj.getDos_devlpNaissance() + "' where automatique='" + id + "'";
        connexion.executeUpdate(query);
    }
    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tb_dossiermedicale";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }

}
