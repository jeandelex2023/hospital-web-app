/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;
import org.apache.struts.action.ActionForm;
/**
 *
 * @author Delex
 */
public class ClasseAuthentification extends ActionForm{
    int com_identifiant;
    String com_nomPrenom;
    String com_motPasse;
    String com_apparenant;
    String com_contact;

    public ClasseAuthentification() {
    }

    public int getCom_identifiant() {
        return com_identifiant;
    }

    public String getCom_nomPrenom() {
        return com_nomPrenom;
    }

    public String getCom_motPasse() {
        return com_motPasse;
    }

    public String getCom_apparenant() {
        return com_apparenant;
    }

    public String getCom_contact() {
        return com_contact;
    }

    public void setCom_identifiant(int com_identifiant) {
        this.com_identifiant = com_identifiant;
    }

    public void setCom_nomPrenom(String com_nomPrenom) {
        this.com_nomPrenom = com_nomPrenom;
    }

    public void setCom_motPasse(String com_motPasse) {
        this.com_motPasse = com_motPasse;
    }

    public void setCom_apparenant(String com_apparenant) {
        this.com_apparenant = com_apparenant;
    }

    public void setCom_contact(String com_contact) {
        this.com_contact = com_contact;
    }
    
}
