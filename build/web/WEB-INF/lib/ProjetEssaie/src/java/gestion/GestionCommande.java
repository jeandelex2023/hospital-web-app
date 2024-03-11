/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import action.classe.classeCommande;
import action.classe.connexionbase;
import java.sql.ResultSet;

public class GestionCommande {
    public connexionbase connexion;

    public GestionCommande() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(classeCommande obj) throws Exception {
        String query = "INSERT INTO commande(numcmd,numconsom,numtable,qte_cmd,date_cmd ) values ('" + obj.getNumcmd()+ "','"+obj.getNumconsom()+"', '" + obj.getNumtable()+ "','" + obj.getQte_cmd()+ "','" + obj.getDate_cmd()+ "')";
        connexion.executeUpdate(query);
    }

    public void update(String id, classeCommande obj) throws Exception {
        String query = "UPDATE commande SET numcmd='" + obj.getNumcmd() + "',numconsom='"+obj.getNumconsom()+"', numtable='" + obj.getNumtable() + "',qte_cmd='" + obj.getQte_cmd() + "',date_cmd='" + obj.getDate_cmd() + "' where numcmd='" + id + "'";
        connexion.executeUpdate(query);
    }

    public void delete(String id) throws Exception {
        String query = "DELETE FROM  commande WHERE numcmd='" + id + "'";
        connexion.executeUpdate(query);
    }

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM commande order by numcmd asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM commande where numcmd='"+ id+ "'";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getCmd() throws Exception {
        String query = "SELECT COMMANDE.NUMCMD, COMMANDE.NUMTABLE, COMMANDE.NUMCONSOM, COMMANDE.QTE_CMD, COMMANDE.DATE_CMD, CONSOMMATION.LIBELLE FROM CONSOMMATION INNER JOIN COMMANDE ON CONSOMMATION.NUMCONSOM = COMMANDE.NUMCONSOM";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getDet() throws Exception {
        String query = "SELECT COMMANDE.NUMCMD, COMMANDE.NUMTABLE, CONSOMMATION.LIBELLE, COMMANDE.QTE_CMD, CONSOMMATION.PRIX_UNIT FROM CONSOMMATION INNER JOIN COMMANDE ON CONSOMMATION.NUMCONSOM = COMMANDE.NUMCONSOM";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
