/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

//import action.classe.classeConsommation;
import action.classe.connexionbase;
import action.classe.modele_classeClient;
import java.sql.ResultSet;

/**
 *
 * @author HP-Ularion
 */
public class controleur_gestionClient {
    public connexionbase connexion;
    
    
    public controleur_gestionClient() throws Exception {
        connexion = new connexionbase();
    }
    public void insert(modele_classeClient obj) throws Exception {
        String query = "INSERT INTO Tb_Client(idClient,nomClient,numTableClient,commandeClient,soldeClient,telephoneClient) values ('"+ obj.getIdClient()+"','" +obj.getNomClient()+"','" +obj.getNumTableClient()+"','" +obj.getCommandeClient()+"','" +obj.getSoldeClient()+"','" +obj.getTelephoneClient()+"')";
        connexion.executeUpdate(query);
    }
    public void delete(String identifiant_an_le_client) throws Exception {
        String query = "DELETE FROM Tb_Client  WHERE idClient='" + identifiant_an_le_client + "'";
        connexion.executeUpdate(query);
    }
    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM Tb_Client order by idClient asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }

}
