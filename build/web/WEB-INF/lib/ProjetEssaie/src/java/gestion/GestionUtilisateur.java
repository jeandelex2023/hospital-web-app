/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import action.classe.ClasseUtilisateur;
import action.classe.connexionbase;
import java.sql.ResultSet;

public class GestionUtilisateur {
    public connexionbase connexion;

    public GestionUtilisateur() throws Exception {
        connexion = new connexionbase();
    }

    public void insert(ClasseUtilisateur obj) throws Exception {
        String query = "INSERT INTO utilisateur(login,mdp) values ('" + obj.getLogin()+ "','" + obj.getMdp()+ "')";
        connexion.executeUpdate(query);
    }

    public void update(String id, ClasseUtilisateur obj) throws Exception {
        String query = "UPDATE utilisateur SET login='" + obj.getLogin()+ "',mdp='" + obj.getMdp()+ "' where login='" + id + "'";
        connexion.executeUpdate(query);
    }

    public void delete(String id) throws Exception {
        String query = "DELETE FROM  utilisateur WHERE login='" + id + "'";
        connexion.executeUpdate(query);
    }

    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM utilisateur order by login asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
