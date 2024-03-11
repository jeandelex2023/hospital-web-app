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
public class ClasseAnalyse extends ActionForm {
    public String anal_numFacture;
    public String anal_idLaboratoire;
    public String anal_nomPrenom;
    public String anal_rc;
    public String anal_date;
    public String anal_priseCharge;
    public String anal_numTelpatient;
    public String anal_agePatient;
    public String anal_moisCor;
    public String anal_sexe;
    public String res_parametres;
    public String res_unite;
    public String res_resultatObtenir;

    public ClasseAnalyse() {
    }

    public ClasseAnalyse(String anal_numFacture, String anal_idLaboratoire, String anal_nomPrenom, String anal_rc, String anal_date, String anal_priseCharge, String anal_numTelpatient, String anal_agePatient, String anal_moisCor, String anal_sexe, String res_parametres, String res_unite, String res_resultatObtenir) {
        this.anal_numFacture = anal_numFacture;
        this.anal_idLaboratoire = anal_idLaboratoire;
        this.anal_nomPrenom = anal_nomPrenom;
        this.anal_rc = anal_rc;
        this.anal_date = anal_date;
        this.anal_priseCharge = anal_priseCharge;
        this.anal_numTelpatient = anal_numTelpatient;
        this.anal_agePatient = anal_agePatient;
        this.anal_moisCor = anal_moisCor;
        this.anal_sexe = anal_sexe;
        this.res_parametres = res_parametres;
        this.res_unite = res_unite;
        this.res_resultatObtenir = res_resultatObtenir;

    }

    public String getAnal_numFacture() {
        return anal_numFacture;
    }

    public String getAnal_idLaboratoire() {
        return anal_idLaboratoire;
    }

    public String getAnal_nomPrenom() {
        return anal_nomPrenom;
    }

    public String getAnal_rc() {
        return anal_rc;
    }

    public String getAnal_date() {
        return anal_date;
    }

    public String getAnal_priseCharge() {
        return anal_priseCharge;
    }

    public String getAnal_numTelpatient() {
        return anal_numTelpatient;
    }

    public String getAnal_agePatient() {
        return anal_agePatient;
    }

    public String getAnal_moisCor() {
        return anal_moisCor;
    }

    public String getAnal_sexe() {
        return anal_sexe;
    }

    public String getRes_parametres() {
        return res_parametres;
    }

    public String getRes_unite() {
        return res_unite;
    }

    public String getRes_resultatObtenir() {
        return res_resultatObtenir;
    }


    public void setAnal_numFacture(String anal_numFacture) {
        this.anal_numFacture = anal_numFacture;
    }

    public void setAnal_idLaboratoire(String anal_idLaboratoire) {
        this.anal_idLaboratoire = anal_idLaboratoire;
    }

    public void setAnal_nomPrenom(String anal_nomPrenom) {
        this.anal_nomPrenom = anal_nomPrenom;
    }

    public void setAnal_rc(String anal_rc) {
        this.anal_rc = anal_rc;
    }

    public void setAnal_date(String anal_date) {
        this.anal_date = anal_date;
    }

    public void setAnal_priseCharge(String anal_priseCharge) {
        this.anal_priseCharge = anal_priseCharge;
    }

    public void setAnal_numTelpatient(String anal_numTelpatient) {
        this.anal_numTelpatient = anal_numTelpatient;
    }

    public void setAnal_agePatient(String anal_agePatient) {
        this.anal_agePatient = anal_agePatient;
    }

    public void setAnal_moisCor(String anal_moisCor) {
        this.anal_moisCor = anal_moisCor;
    }

    public void setAnal_sexe(String anal_sexe) {
        this.anal_sexe = anal_sexe;
    }

    public void setRes_parametres(String res_parametres) {
        this.res_parametres = res_parametres;
    }

    public void setRes_unite(String res_unite) {
        this.res_unite = res_unite;
    }

    public void setRes_resultatObtenir(String res_resultatObtenir) {
        this.res_resultatObtenir = res_resultatObtenir;
    }

    
}
