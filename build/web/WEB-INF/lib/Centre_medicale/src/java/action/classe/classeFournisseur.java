/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;

import org.apache.struts.action.ActionForm;

public class classeFournisseur extends ActionForm{
    String idfourn;
    String nomfourn;
    String adrs_fourn;
    String cont_fourn;
    public classeFournisseur(){
        
    }

    public classeFournisseur(String idfourn, String nomfourn, String adrs_fourn, String cont_fourn) {
        this.idfourn = idfourn;
        this.nomfourn = nomfourn;
        this.adrs_fourn = adrs_fourn;
        this.cont_fourn = cont_fourn;
    }

    public String getIdfourn() {
        return idfourn;
    }

    public void setIdfourn(String idfourn) {
        this.idfourn = idfourn;
    }

    public String getNomfourn() {
        return nomfourn;
    }

    public void setNomfourn(String nomfourn) {
        this.nomfourn = nomfourn;
    }

    public String getAdrs_fourn() {
        return adrs_fourn;
    }

    public void setAdrs_fourn(String adrs_fourn) {
        this.adrs_fourn = adrs_fourn;
    }

    public String getCont_fourn() {
        return cont_fourn;
    }

    public void setCont_fourn(String cont_fourn) {
        this.cont_fourn = cont_fourn;
    }
    
}
