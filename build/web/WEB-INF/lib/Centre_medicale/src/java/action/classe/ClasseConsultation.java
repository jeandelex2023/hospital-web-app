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
public class ClasseConsultation extends ActionForm {
    private String com_identifiant;
    private String cons_nomPatient;
    private String cons_nomMedecin;
    private String cons_montant;

    public ClasseConsultation() {
    }

    public ClasseConsultation(String com_identifiant, String cons_nomPatient, String cons_nomMedecin, String cons_montant) {
        this.com_identifiant = com_identifiant;
        this.cons_nomPatient = cons_nomPatient;
        this.cons_nomMedecin = cons_nomMedecin;
        this.cons_montant = cons_montant;
    }

    public String getCom_identifiant() {
        return com_identifiant;
    }

    public String getCons_nomPatient() {
        return cons_nomPatient;
    }

    public String getCons_nomMedecin() {
        return cons_nomMedecin;
    }

    public String getCons_montant() {
        return cons_montant;
    }

    public void setCom_identifiant(String com_identifiant) {
        this.com_identifiant = com_identifiant;
    }

    public void setCons_nomPatient(String cons_nomPatient) {
        this.cons_nomPatient = cons_nomPatient;
    }

    public void setCons_nomMedecin(String cons_nomMedecin) {
        this.cons_nomMedecin = cons_nomMedecin;
    }

    public void setCons_montant(String cons_montant) {
        this.cons_montant = cons_montant;
    }

    
    
}
