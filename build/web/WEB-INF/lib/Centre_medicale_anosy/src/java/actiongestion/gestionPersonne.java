/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actiongestion;

import actionclasses.classePersonne;
import actionclasses.Connexion_base;
import java.sql.ResultSet;

public class gestionPersonne {

    public Connexion_base connexion;

    public gestionPersonne() throws Exception {
        connexion = new Connexion_base();
    }

    public void insert(classePersonne obj) throws Exception {
        String query = "INSERT INTO ndaty (anarana, fanampiny) values ('" + obj.getAnarana() + "','" + obj.getFanampiny() + "')";
        connexion.executeUpdate(query);
    }
    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM ndaty";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}

