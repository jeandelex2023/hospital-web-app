/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import action.classe.ClasseRende_vous;
import action.classe.connexionbase;
import java.sql.ResultSet;
/**
 *
 * @author Delex
 */
public class GestionRende_vous {
    public connexionbase connexion;
    
    public GestionRende_vous() throws Exception {
        connexion = new connexionbase();
    }
    public void insert(ClasseRende_vous obj) throws Exception {
        String query = "INSERT INTO tb_rendevous(automatique,rend_date,rend_docConcerne,rend_patNumero) values ('" + obj.getAutomatique() + "','" + obj.getRend_date() + "','" + obj.getRend_docConcerne() + "','" + obj.getRend_patNumero() + "')";
        connexion.executeUpdate(query);
    }
    public void update(String id, ClasseRende_vous obj) throws Exception {
        String query = "UPDATE tb_rendevous SET automatique='" + obj.getAutomatique() + "',rend_date='"+obj.getRend_date()+"', rend_docConcerne='" + obj.getRend_docConcerne() + "',rend_patNumero='" + obj.getRend_patNumero() + "' where automatique='" + id + "'";
        connexion.executeUpdate(query);
    }
    public void delete(String id) throws Exception {
        String query = "DELETE FROM  tb_rendevous WHERE automatique='" + id + "'";
        connexion.executeUpdate(query);
    }
    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM tb_rendevous order by automatique asc";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getAll(String id) throws Exception {
        String query = "SELECT * FROM tb_rendevous where automatique='"+ id+ "'";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
}
