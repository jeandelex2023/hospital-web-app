/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;

import org.apache.struts.action.ActionForm;

public class ClassePanier extends ActionForm{
    String numtable;  
    String numconsom;
    String qte_pan;
    String date_pan;
    public ClassePanier(){
        
    }

    public ClassePanier(String numtable, String numconsom, String qte_pan, String date_pan) {
        this.numtable = numtable;
        this.numconsom = numconsom;
        this.qte_pan = qte_pan;
        this.date_pan = date_pan;
    }

    public String getNumtable() {
        return numtable;
    }

    public void setNumtable(String numtable) {
        this.numtable = numtable;
    }

    public String getNumconsom() {
        return numconsom;
    }

    public void setNumconsom(String numconsom) {
        this.numconsom = numconsom;
    }

    public String getQte_pan() {
        return qte_pan;
    }

    public void setQte_pan(String qte_pan) {
        this.qte_pan = qte_pan;
    }

    public String getDate_pan() {
        return date_pan;
    }

    public void setDate_pan(String date_pan) {
        this.date_pan = date_pan;
    }

    
    
}
