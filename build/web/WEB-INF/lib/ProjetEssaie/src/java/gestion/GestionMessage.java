package gestion;


import action.connexionBaseOzeki;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP-Ularion
 */
public class GestionMessage {
    connexionBaseOzeki cn;
    
    public GestionMessage(){
        try{
            cn=new connexionBaseOzeki();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    public void envoyer(String destinataire,String message)throws Exception{
        String requete="INSERT INTO ozekimessageout(sender,receiver,msg,status) values('delex','"+destinataire+"','"+message+"','send')";
        cn.executeUpdate(requete);
    }
}