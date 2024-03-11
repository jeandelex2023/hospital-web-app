/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import action.classe.ClasseMedecin;
import action.classe.connexionbase;
import java.sql.ResultSet;
/**
 *
 * @author Delex
 */
public class GestionMedecin {
    public connexionbase connexion;
    
    public GestionMedecin() throws Exception {
        connexion = new connexionbase();
    }
     public void insert(ClasseMedecin obj) throws Exception {
        String query = "INSERT INTO tb_medecin(med_matricule,med_nomPrenom,med_sexe,med_nationalite,med_indice,med_datebutEmbauche,med_datefinEmbauche,med_contact,med_domicile) values ('" + obj.getMed_matricule() + "','" + obj.getMed_nomPrenom() + "','" + obj.getMed_sexe() + "','" + obj.getMed_nationalite() + "','" + obj.getMed_indice() + "','" + obj.getMed_datebutEmbauche() + "','" + obj.getMed_datefinEmbauche() + "','" + obj.getMed_contact() + "','" + obj.getMed_domicile() + "')";
        connexion.executeUpdate(query);
    }
    public void update(String id, ClasseMedecin obj) throws Exception {
        String query = "UPDATE tb_medecin SET med_matricule='" + obj.getMed_matricule() + "',med_nomPrenom='" + obj.getMed_nomPrenom() + "',med_sexe='" + obj.getMed_sexe() + "',med_nationalite='" + obj.getMed_nationalite() + "',med_indice='" + obj.getMed_indice() + "',med_datebutEmbauche='" + obj.getMed_datebutEmbauche() + "',med_datefinEmbauche='" + obj.getMed_datefinEmbauche() + "',med_contact='" + obj.getMed_contact() + "',med_domicile='" + obj.getMed_domicile() + "' where med_matricule='" + id + "'";
        connexion.executeUpdate(query);
    }
    public void delete(String id) throws Exception {
        String query = "DELETE FROM  tb_medecin WHERE med_matricule='" + id + "'";
        connexion.executeUpdate(query);
    }
    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tb_medecin order by med_matricule asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM tb_medecin where med_matricule='"+ id+ "'";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
