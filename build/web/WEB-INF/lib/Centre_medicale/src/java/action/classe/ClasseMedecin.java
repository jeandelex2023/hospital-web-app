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
public class ClasseMedecin extends ActionForm{
    private String med_matricule;
    private String med_nomPrenom;
    private String med_sexe;
    private String med_nationalite;
    private String med_indice;
    private String med_datebutEmbauche;
    private String med_datefinEmbauche;
    private String med_contact;
    private String med_domicile;

    public ClasseMedecin() {
    }

    public ClasseMedecin(String med_matricule, String med_nomPrenom, String med_sexe, String med_nationalite, String med_indice, String med_datebutEmbauche, String med_datefinEmbauche, String med_contact, String med_domicile) {
        this.med_matricule = med_matricule;
        this.med_nomPrenom = med_nomPrenom;
        this.med_sexe = med_sexe;
        this.med_nationalite = med_nationalite;
        this.med_indice = med_indice;
        this.med_datebutEmbauche = med_datebutEmbauche;
        this.med_datefinEmbauche = med_datefinEmbauche;
        this.med_contact = med_contact;
        this.med_domicile = med_domicile;
    }

    public String getMed_matricule() {
        return med_matricule;
    }

    public String getMed_nomPrenom() {
        return med_nomPrenom;
    }

    public String getMed_sexe() {
        return med_sexe;
    }

    public String getMed_nationalite() {
        return med_nationalite;
    }

    public String getMed_indice() {
        return med_indice;
    }

    public String getMed_datebutEmbauche() {
        return med_datebutEmbauche;
    }

    public String getMed_datefinEmbauche() {
        return med_datefinEmbauche;
    }

    public String getMed_contact() {
        return med_contact;
    }

    public String getMed_domicile() {
        return med_domicile;
    }

    public void setMed_matricule(String med_matricule) {
        this.med_matricule = med_matricule;
    }

    public void setMed_nomPrenom(String med_nomPrenom) {
        this.med_nomPrenom = med_nomPrenom;
    }

    public void setMed_sexe(String med_sexe) {
        this.med_sexe = med_sexe;
    }

    public void setMed_nationalite(String med_nationalite) {
        this.med_nationalite = med_nationalite;
    }

    public void setMed_indice(String med_indice) {
        this.med_indice = med_indice;
    }

    public void setMed_datebutEmbauche(String med_datebutEmbauche) {
        this.med_datebutEmbauche = med_datebutEmbauche;
    }

    public void setMed_datefinEmbauche(String med_datefinEmbauche) {
        this.med_datefinEmbauche = med_datefinEmbauche;
    }

    public void setMed_contact(String med_contact) {
        this.med_contact = med_contact;
    }

    public void setMed_domicile(String med_domicile) {
        this.med_domicile = med_domicile;
    }
    
    
}
