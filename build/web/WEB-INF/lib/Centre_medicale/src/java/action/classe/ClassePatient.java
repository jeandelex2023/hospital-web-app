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
public class ClassePatient extends ActionForm{
    private String pat_numero;/** Si possible son certe d'identite nationnale pour facilite la recherche */
    private String pat_nomPrenom;
    private String pat_dateNaissance;
    private String pat_sexe;
    private String pat_domicile;
    private String pat_nationalite;
    private String pat_contact;

    public ClassePatient() {
    }

    public ClassePatient(String pat_numero, String pat_nomPrenom, String pat_dateNaissance, String pat_sexe, String pat_domicile, String pat_nationalite, String pat_contact) {
        this.pat_numero = pat_numero;
        this.pat_nomPrenom = pat_nomPrenom;
        this.pat_dateNaissance = pat_dateNaissance;
        this.pat_sexe = pat_sexe;
        this.pat_domicile = pat_domicile;
        this.pat_nationalite = pat_nationalite;
        this.pat_contact = pat_contact;
    }

    public String getPat_numero() {
        return pat_numero;
    }

    public String getPat_nomPrenom() {
        return pat_nomPrenom;
    }

    public String getPat_dateNaissance() {
        return pat_dateNaissance;
    }

    public String getPat_sexe() {
        return pat_sexe;
    }

    public String getPat_domicile() {
        return pat_domicile;
    }

    public String getPat_nationalite() {
        return pat_nationalite;
    }

    public String getPat_contact() {
        return pat_contact;
    }

    public void setPat_numero(String pat_numero) {
        this.pat_numero = pat_numero;
    }

    public void setPat_nomPrenom(String pat_nomPrenom) {
        this.pat_nomPrenom = pat_nomPrenom;
    }

    public void setPat_dateNaissance(String pat_dateNaissance) {
        this.pat_dateNaissance = pat_dateNaissance;
    }

    public void setPat_sexe(String pat_sexe) {
        this.pat_sexe = pat_sexe;
    }

    public void setPat_domicile(String pat_domicile) {
        this.pat_domicile = pat_domicile;
    }

    public void setPat_nationalite(String pat_nationalite) {
        this.pat_nationalite = pat_nationalite;
    }

    public void setPat_contact(String pat_contact) {
        this.pat_contact = pat_contact;
    }

    
}
