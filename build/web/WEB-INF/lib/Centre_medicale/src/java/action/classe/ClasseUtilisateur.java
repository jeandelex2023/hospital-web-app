/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;// package classe fotsiny no teto

import org.apache.struts.action.ActionForm;

public class ClasseUtilisateur extends ActionForm{
    private String login;
    private String mdp;
    
    public ClasseUtilisateur(){
    }

    public ClasseUtilisateur( String login, String mdp) {
        
        this.login = login;
        this.mdp = mdp;
    }


    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }
    
}
