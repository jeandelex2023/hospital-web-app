/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionclasses;

/**
 *
 * @author Delex
 */
public class Dossiermedicale {
   private String dos_numeroPhone;
   private String dos_nomPrenom;
   private String dos_mere;
   private String dos_pere;
   private String dos_dateNaissance;
   private String dos_nationalite;
   private String dos_sexe;
   private String dos_adresse;
   private String dos_insurranceMedicale;
   private String dos_vaccine;
   private String dos_numInsurrance;
   private String dos_medicaleHistorique;
   private String dos_surgicaleHistorique;
   private String dos_chroniqueMedicale;
   private String dos_alergie;
   private String dos_devlpNaissance;

    public Dossiermedicale(String dos_numeroPhone, String dos_nomPrenom, String dos_mere, String dos_pere, String dos_dateNaissance, String dos_nationalite, String dos_sexe, String dos_adresse, String dos_insurranceMedicale, String dos_vaccine, String dos_numInsurrance, String dos_medicaleHistorique, String dos_surgicaleHistorique, String dos_chroniqueMedicale, String dos_alergie, String dos_devlpNaissance) {
        this.dos_numeroPhone = dos_numeroPhone;
        this.dos_nomPrenom = dos_nomPrenom;
        this.dos_mere = dos_mere;
        this.dos_pere = dos_pere;
        this.dos_dateNaissance = dos_dateNaissance;
        this.dos_nationalite = dos_nationalite;
        this.dos_sexe = dos_sexe;
        this.dos_adresse = dos_adresse;
        this.dos_insurranceMedicale = dos_insurranceMedicale;
        this.dos_vaccine = dos_vaccine;
        this.dos_numInsurrance = dos_numInsurrance;
        this.dos_medicaleHistorique = dos_medicaleHistorique;
        this.dos_surgicaleHistorique = dos_surgicaleHistorique;
        this.dos_chroniqueMedicale = dos_chroniqueMedicale;
        this.dos_alergie = dos_alergie;
        this.dos_devlpNaissance = dos_devlpNaissance;
    }

    public String getDos_numeroPhone() {
        return dos_numeroPhone;
    }

    public String getDos_nomPrenom() {
        return dos_nomPrenom;
    }

    public String getDos_mere() {
        return dos_mere;
    }

    public String getDos_pere() {
        return dos_pere;
    }

    public String getDos_dateNaissance() {
        return dos_dateNaissance;
    }

    public String getDos_nationalite() {
        return dos_nationalite;
    }

    public String getDos_sexe() {
        return dos_sexe;
    }

    public String getDos_adresse() {
        return dos_adresse;
    }

    public String getDos_insurranceMedicale() {
        return dos_insurranceMedicale;
    }

    public String getDos_vaccine() {
        return dos_vaccine;
    }

    public String getDos_numInsurrance() {
        return dos_numInsurrance;
    }

    public String getDos_medicaleHistorique() {
        return dos_medicaleHistorique;
    }

    public String getDos_surgicaleHistorique() {
        return dos_surgicaleHistorique;
    }

    public String getDos_chroniqueMedicale() {
        return dos_chroniqueMedicale;
    }

    public String getDos_alergie() {
        return dos_alergie;
    }

    public String getDos_devlpNaissance() {
        return dos_devlpNaissance;
    }

    public void setDos_numeroPhone(String dos_numeroPhone) {
        this.dos_numeroPhone = dos_numeroPhone;
    }

    public void setDos_nomPrenom(String dos_nomPrenom) {
        this.dos_nomPrenom = dos_nomPrenom;
    }

    public void setDos_mere(String dos_mere) {
        this.dos_mere = dos_mere;
    }

    public void setDos_pere(String dos_pere) {
        this.dos_pere = dos_pere;
    }

    public void setDos_dateNaissance(String dos_dateNaissance) {
        this.dos_dateNaissance = dos_dateNaissance;
    }

    public void setDos_nationalite(String dos_nationalite) {
        this.dos_nationalite = dos_nationalite;
    }

    public void setDos_sexe(String dos_sexe) {
        this.dos_sexe = dos_sexe;
    }

    public void setDos_adresse(String dos_adresse) {
        this.dos_adresse = dos_adresse;
    }

    public void setDos_insurranceMedicale(String dos_insurranceMedicale) {
        this.dos_insurranceMedicale = dos_insurranceMedicale;
    }

    public void setDos_vaccine(String dos_vaccine) {
        this.dos_vaccine = dos_vaccine;
    }

    public void setDos_numInsurrance(String dos_numInsurrance) {
        this.dos_numInsurrance = dos_numInsurrance;
    }

    public void setDos_medicaleHistorique(String dos_medicaleHistorique) {
        this.dos_medicaleHistorique = dos_medicaleHistorique;
    }

    public void setDos_surgicaleHistorique(String dos_surgicaleHistorique) {
        this.dos_surgicaleHistorique = dos_surgicaleHistorique;
    }

    public void setDos_chroniqueMedicale(String dos_chroniqueMedicale) {
        this.dos_chroniqueMedicale = dos_chroniqueMedicale;
    }

    public void setDos_alergie(String dos_alergie) {
        this.dos_alergie = dos_alergie;
    }

    public void setDos_devlpNaissance(String dos_devlpNaissance) {
        this.dos_devlpNaissance = dos_devlpNaissance;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Dossiermedicale other = (Dossiermedicale) obj;
        if ((this.dos_numeroPhone == null) ? (other.dos_numeroPhone != null) : !this.dos_numeroPhone.equals(other.dos_numeroPhone)) {
            return false;
        }
        if ((this.dos_nomPrenom == null) ? (other.dos_nomPrenom != null) : !this.dos_nomPrenom.equals(other.dos_nomPrenom)) {
            return false;
        }
        if ((this.dos_mere == null) ? (other.dos_mere != null) : !this.dos_mere.equals(other.dos_mere)) {
            return false;
        }
        if ((this.dos_pere == null) ? (other.dos_pere != null) : !this.dos_pere.equals(other.dos_pere)) {
            return false;
        }
        if ((this.dos_dateNaissance == null) ? (other.dos_dateNaissance != null) : !this.dos_dateNaissance.equals(other.dos_dateNaissance)) {
            return false;
        }
        if ((this.dos_nationalite == null) ? (other.dos_nationalite != null) : !this.dos_nationalite.equals(other.dos_nationalite)) {
            return false;
        }
        if ((this.dos_sexe == null) ? (other.dos_sexe != null) : !this.dos_sexe.equals(other.dos_sexe)) {
            return false;
        }
        if ((this.dos_adresse == null) ? (other.dos_adresse != null) : !this.dos_adresse.equals(other.dos_adresse)) {
            return false;
        }
        if ((this.dos_insurranceMedicale == null) ? (other.dos_insurranceMedicale != null) : !this.dos_insurranceMedicale.equals(other.dos_insurranceMedicale)) {
            return false;
        }
        if ((this.dos_vaccine == null) ? (other.dos_vaccine != null) : !this.dos_vaccine.equals(other.dos_vaccine)) {
            return false;
        }
        if ((this.dos_numInsurrance == null) ? (other.dos_numInsurrance != null) : !this.dos_numInsurrance.equals(other.dos_numInsurrance)) {
            return false;
        }
        if ((this.dos_medicaleHistorique == null) ? (other.dos_medicaleHistorique != null) : !this.dos_medicaleHistorique.equals(other.dos_medicaleHistorique)) {
            return false;
        }
        if ((this.dos_surgicaleHistorique == null) ? (other.dos_surgicaleHistorique != null) : !this.dos_surgicaleHistorique.equals(other.dos_surgicaleHistorique)) {
            return false;
        }
        if ((this.dos_chroniqueMedicale == null) ? (other.dos_chroniqueMedicale != null) : !this.dos_chroniqueMedicale.equals(other.dos_chroniqueMedicale)) {
            return false;
        }
        if ((this.dos_alergie == null) ? (other.dos_alergie != null) : !this.dos_alergie.equals(other.dos_alergie)) {
            return false;
        }
        if ((this.dos_devlpNaissance == null) ? (other.dos_devlpNaissance != null) : !this.dos_devlpNaissance.equals(other.dos_devlpNaissance)) {
            return false;
        }
        return true;
    }
   
   
}
