/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actiongestion;

/**
 *
 * @author Delex
 */
import actionclasses.Dossiermedicale;
import actionclasses.Connexion_base;
import java.sql.ResultSet;

public class G_dossiermedicale {
        public Connexion_base connexion;

    public G_dossiermedicale() throws Exception {
        connexion = new Connexion_base();
    }

   public void insert(Dossiermedicale obj) throws Exception {
     String query = "INSERT INTO tb_dossiermedicale(dos_numeroPhone,dos_nomPrenom,dos_mere,dos_pere,dos_dateNaissance,dos_nationalite,dos_sexe,dos_adresse,dos_insurranceMedicale,dos_vaccine,dos_numInsurrance,dos_medicaleHistorique,dos_surgicaleHistorique,dos_chroniqueMedicale,dos_alergie,dos_devlpNaissance )" + " values ('" + obj.getDos_numeroPhone()+ "','"+obj.getDos_nomPrenom()+"', '" + obj.getDos_mere()+ "','" + obj.getDos_pere()+ "','" + obj.getDos_dateNaissance()+ "','" + obj.getDos_nationalite()+ "','" + obj.getDos_sexe()+ "','" + obj.getDos_adresse()+ "','" + obj.getDos_insurranceMedicale()+ "','" + obj.getDos_vaccine()+ "','" + obj.getDos_numInsurrance()+ "','" + obj.getDos_medicaleHistorique()+ "','" + obj.getDos_surgicaleHistorique()+ "','" + obj.getDos_chroniqueMedicale()+ "','" + obj.getDos_alergie()+ "','" + obj.getDos_devlpNaissance() + "')";
     connexion.executeUpdate(query);
   }

   // public void update(String id, classeCommande obj) throws Exception {
       // String query = "UPDATE commande SET numcmd='" + obj.getNumcmd() + "',numconsom='"+obj.getNumconsom()+"', numtable='" + obj.getNumtable() + "',qte_cmd='" + obj.getQte_cmd() + "',date_cmd='" + obj.getDate_cmd() + "' where numcmd='" + id + "'";
      //  connexion.executeUpdate(query);
//    }

    //public void delete(String id) throws Exception {
     //   String query = "DELETE FROM  commande WHERE numcmd='" + id + "'";
      //  connexion.executeUpdate(query);
    //}

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tb_dossiermedicale order by dos_numeroPhone asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM tb_dossiermedicale where dos_numeroPhone='"+ id+ "'";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
   // public ResultSet getCmd() throws Exception {
     //   String query = "SELECT COMMANDE.NUMCMD, COMMANDE.NUMTABLE, COMMANDE.NUMCONSOM, COMMANDE.QTE_CMD, COMMANDE.DATE_CMD, CONSOMMATION.LIBELLE FROM CONSOMMATION INNER JOIN COMMANDE ON CONSOMMATION.NUMCONSOM = COMMANDE.NUMCONSOM";
       // ResultSet rs = connexion.executeQuery(query);
        //return rs;
    //}
   // public ResultSet getDet() throws Exception {
    //    String query = "SELECT COMMANDE.NUMCMD, COMMANDE.NUMTABLE, CONSOMMATION.LIBELLE, COMMANDE.QTE_CMD, CONSOMMATION.PRIX_UNIT FROM CONSOMMATION INNER JOIN COMMANDE ON CONSOMMATION.NUMCONSOM = COMMANDE.NUMCONSOM";
       // ResultSet rs = connexion.executeQuery(query);
       // return rs;
    //}
}
