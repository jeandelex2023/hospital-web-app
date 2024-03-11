/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;

import org.apache.struts.action.ActionForm;
public class classeConsommation extends ActionForm {
    String numconsom;
    String libelle;
    int qte_init;
    int prix_unit;
    
    public classeConsommation(){
        
    }

    public classeConsommation(String numconsom, String libelle, int qte_init, int prix_unit) {
        this.numconsom = numconsom;
        this.libelle = libelle;
        this.qte_init = qte_init;
        this.prix_unit = prix_unit;
        
    }

    public String getNumconsom() {
        return numconsom;
    }

    public void setNumconsom(String numconsom) {
        this.numconsom = numconsom;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public int getPrix_unit() {
        return prix_unit;
    }

    public void setPrix_unit(int prix_unit) {
        this.prix_unit = prix_unit;
    }

    public int getQte_init() {
        return qte_init;
    }

    public void setQte_init(int qte_init) {
        this.qte_init = qte_init;
    }    
}
