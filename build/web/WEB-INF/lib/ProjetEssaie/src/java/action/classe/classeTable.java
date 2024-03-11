/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;

import org.apache.struts.action.ActionForm;
public class classeTable extends ActionForm{
    String numtable;
    
    public classeTable(){
        
    }

    public classeTable(String numtable) {
        this.numtable = numtable;
    }

    public String getNumtable() {
        return numtable;
    }

    public void setNumtable(String numtable) {
        this.numtable = numtable;
    }
    
}
