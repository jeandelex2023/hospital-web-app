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
public class ClasseRende_vous extends ActionForm {
    private String automatique;
    private String rend_date;
    private String rend_docConcerne;
    private String rend_patNumero;

    public ClasseRende_vous() {
    }

    public ClasseRende_vous(String automatique, String rend_date, String rend_docConcerne, String rend_patNumero) {
        this.automatique = automatique;
        this.rend_date = rend_date;
        this.rend_docConcerne = rend_docConcerne;
        this.rend_patNumero = rend_patNumero;
    }

    public String getAutomatique() {
        return automatique;
    }

    public String getRend_date() {
        return rend_date;
    }

    public String getRend_docConcerne() {
        return rend_docConcerne;
    }

    public String getRend_patNumero() {
        return rend_patNumero;
    }

    public void setAutomatique(String automatique) {
        this.automatique = automatique;
    }

    public void setRend_date(String rend_date) {
        this.rend_date = rend_date;
    }

    public void setRend_docConcerne(String rend_docConcerne) {
        this.rend_docConcerne = rend_docConcerne;
    }

    public void setRend_patNumero(String rend_patNumero) {
        this.rend_patNumero = rend_patNumero;
    }
            
}
