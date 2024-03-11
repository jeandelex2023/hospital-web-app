/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action.classe;

/**
 *
 * @author  Jeand delex
 */
    public class modele_classeClient {
        public int idClient;
        public String nomClient;
        public String numTableClient;
        public String commandeClient;
        public int soldeClient;
        public String telephoneClient;

    public modele_classeClient(int idClient, String nomClient, String numTableClient, String commandeClient, int soldeClient, String telephoneClient) {
        this.idClient = idClient;
        this.nomClient = nomClient;
        this.numTableClient = numTableClient;
        this.commandeClient = commandeClient;
        this.soldeClient = soldeClient;
        this.telephoneClient = telephoneClient;
    }

    public int getIdClient() {
        return idClient;
    }

    public String getNomClient() {
        return nomClient;
    }

    public String getNumTableClient() {
        return numTableClient;
    }

    public String getCommandeClient() {
        return commandeClient;
    }

    public double getSoldeClient() {
        return soldeClient;
    }

    public String getTelephoneClient() {
        return telephoneClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public void setNomClient(String nomClient) {
        this.nomClient = nomClient;
    }

    public void setNumTableClient(String numTableClient) {
        this.numTableClient = numTableClient;
    }

    public void setCommandeClient(String commandeClient) {
        this.commandeClient = commandeClient;
    }

    public void setSoldeClient(int soldeClient) {
        this.soldeClient = soldeClient;
    }

    public void setTelephoneClient(String telephoneClient) {
        this.telephoneClient = telephoneClient;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + this.idClient;
        hash = 97 * hash + (this.nomClient != null ? this.nomClient.hashCode() : 0);
        hash = 97 * hash + (this.numTableClient != null ? this.numTableClient.hashCode() : 0);
        hash = 97 * hash + (this.commandeClient != null ? this.commandeClient.hashCode() : 0);
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.soldeClient) ^ (Double.doubleToLongBits(this.soldeClient) >>> 32));
        hash = 97 * hash + (this.telephoneClient != null ? this.telephoneClient.hashCode() : 0);
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
        final modele_classeClient other = (modele_classeClient) obj;
        if (this.idClient != other.idClient) {
            return false;
        }
        if ((this.nomClient == null) ? (other.nomClient != null) : !this.nomClient.equals(other.nomClient)) {
            return false;
        }
        if ((this.numTableClient == null) ? (other.numTableClient != null) : !this.numTableClient.equals(other.numTableClient)) {
            return false;
        }
        if ((this.commandeClient == null) ? (other.commandeClient != null) : !this.commandeClient.equals(other.commandeClient)) {
            return false;
        }
        if (Double.doubleToLongBits(this.soldeClient) != Double.doubleToLongBits(other.soldeClient)) {
            return false;
        }
        if ((this.telephoneClient == null) ? (other.telephoneClient != null) : !this.telephoneClient.equals(other.telephoneClient)) {
            return false;
        }
        return true;
    }
    
 }