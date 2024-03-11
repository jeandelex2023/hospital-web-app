/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import action.classe.ClasseUtilisateur;// classe.ClasseUtilisateur no tokony ho eto
import action.classe.connexionbase;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Jean delex
 */
public final class LoginAction {
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) throws Exception {
        connexionbase con = new connexionbase();
        String resultat = null;
        String login = ((ClasseUtilisateur) form).getLogin();
        String mdp = ((ClasseUtilisateur) form).getMdp();
        String requete = "SELECT * FROM utilisateur WHERE login='" + login + "'";
        ResultSet rs = con.executeQuery(requete);

        while (rs.next()) {
            if (login.equals(rs.getString("login")) && mdp.equals(rs.getString("mdp"))) {
                resultat = "succes";
            } else {
                resultat = "echec";
            }
        }
        return mapping.findForward(resultat);

    }
}
