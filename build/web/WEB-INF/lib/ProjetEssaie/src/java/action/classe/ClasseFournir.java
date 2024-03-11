/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;

import org.apache.struts.action.ActionForm;


public class ClasseFournir extends ActionForm{
    String idfourn;
    String numconsom;
    String date_livr;
    String qte_livr;
    
    public ClasseFournir(){
   
    }

    public ClasseFournir(String idfourn, String numconsom, String date_livr, String qte_livr) {
        this.idfourn = idfourn;
        this.numconsom = numconsom;
        this.date_livr = date_livr;
        this.qte_livr = qte_livr;
        
    }

    public String getIdfourn() {
        return idfourn;
    }

    public void setIdfourn(String idfourn) {
        this.idfourn = idfourn;
    }

    public String getNumconsom() {
        return numconsom;
    }

    public void setNumconsom(String numconsom) {
        this.numconsom = numconsom;
    }

    public String getQte_livr() {
        return qte_livr;
    }

    public void setQte_livr(String qte_livr) {
        this.qte_livr = qte_livr;
    }

    public String getDate_livr() {
        return date_livr;
    }

    public void setDate_livr(String date_livr) {
        this.date_livr = date_livr;
    }
    
}
