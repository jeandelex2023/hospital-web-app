/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;

import org.apache.struts.action.ActionForm;

public class classeCommande extends ActionForm {

    String numcmd;
    String numtable;
    String numconsom;
    String qte_cmd;
    String date_cmd;

    public classeCommande() {
    }

    public classeCommande(String numcmd, String numtable, String numconsom, String qte_cmd, String date_cmd) {
        this.numcmd = numcmd;
        this.numtable = numtable;
        this.numconsom = numconsom;
        this.qte_cmd = qte_cmd;
        this.date_cmd = date_cmd;
    }

    public String getNumcmd() {
        return numcmd;
    }

    public void setNumcmd(String numcmd) {
        this.numcmd = numcmd;
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

    public String getQte_cmd() {
        return qte_cmd;
    }

    public void setQte_cmd(String qte_cmd) {
        this.qte_cmd = qte_cmd;
    }

    public String getDate_cmd() {
        return date_cmd;
    }

    public void setDate_cmd(String date_cmd) {
        this.date_cmd = date_cmd;
    }  
}
