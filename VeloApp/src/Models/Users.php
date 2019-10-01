<?php 

class Users 
{
    private $_idUsers;
    private $_nom;
    private $_prenom;
    private $_email;
    private $_particulier;
    private $_panier_idPanier;
    private $_panier_paiement_idPaiement;
    private $_paiement_idPaiement;
    private $_adresse_idVilles; 
   
public function __construct($_idUsers, $_nom, $_prenom, $_email,$_particulier,$_panier_idPanier,$_panier_paiement_idPaiement, $_paiement_idPaiement, $_adresse_idVilles){

    $this->_idUsers = $_idUsers;
    $this->_nom = $_nom;
    $this->_prenom = $_prenom;
    $this->_email = $_email;
    $this->_particulier = $_particulier;
    $this->_panier_idPanier = $_panier_idPanier;
    $this->_panier_paiement_idPaiement = $_panier_paiement_idPaiement;
    $this->_paiement_idPaiement = $_paiement_idPaiement;
    $this->_adresse_idVilles = $_adresse_idVilles;
     
}

    


    

    /**
     * Get the value of _idUsers
     */ 
    public function get_idUsers()
    {
        return $this->_idUsers;
    }

    /**
     * Set the value of _idUsers
     *
     * @return  self
     */ 
    public function set_idUsers($_idUsers)
    {
        $this->_idUsers = $_idUsers;

        return $this;
    }

    /**
     * Get the value of _nom
     */ 
    public function get_nom()
    {
        return $this->_nom;
    }

    /**
     * Set the value of _nom
     *
     * @return  self
     */ 
    public function set_nom($_nom)
    {
        $this->_nom = $_nom;

        return $this;
    }

    /**
     * Get the value of _prenom
     */ 
    public function get_prenom()
    {
        return $this->_prenom;
    }

    /**
     * Set the value of _prenom
     *
     * @return  self
     */ 
    public function set_prenom($_prenom)
    {
        $this->_prenom = $_prenom;

        return $this;
    }

    /**
     * Get the value of _email
     */ 
    public function get_email()
    {
        return $this->_email;
    }

    /**
     * Set the value of _email
     *
     * @return  self
     */ 
    public function set_email($_email)
    {
        $this->_email = $_email;

        return $this;
    }

    /**
     * Get the value of _particulier
     */ 
    public function get_particulier()
    {
        return $this->_particulier;
    }

    /**
     * Set the value of _particulier
     *
     * @return  self
     */ 
    public function set_particulier($_particulier)
    {
        $this->_particulier = $_particulier;

        return $this;
    }

    /**
     * Get the value of _panier_idPanier
     */ 
    public function get_panier_idPanier()
    {
        return $this->_panier_idPanier;
    }

    /**
     * Set the value of _panier_idPanier
     *
     * @return  self
     */ 
    public function set_panier_idPanier($_panier_idPanier)
    {
        $this->_panier_idPanier = $_panier_idPanier;

        return $this;
    }

    /**
     * Get the value of _panier_paiement_idPaiement
     */ 
    public function get_panier_paiement_idPaiement()
    {
        return $this->_panier_paiement_idPaiement;
    }

    /**
     * Set the value of _panier_paiement_idPaiement
     *
     * @return  self
     */ 
    public function set_panier_paiement_idPaiement($_panier_paiement_idPaiement)
    {
        $this->_panier_paiement_idPaiement = $_panier_paiement_idPaiement;

        return $this;
    }

    /**
     * Get the value of _paiement_idPaiement
     */ 
    public function get_paiement_idPaiement()
    {
        return $this->_paiement_idPaiement;
    }

    /**
     * Set the value of _paiement_idPaiement
     *
     * @return  self
     */ 
    public function set_paiement_idPaiement($_paiement_idPaiement)
    {
        $this->_paiement_idPaiement = $_paiement_idPaiement;

        return $this;
    }

    /**
     * Get the value of _adresse_idVilles
     */ 
    public function get_adresse_idVilles()
    {
        return $this->_adresse_idVilles;
    }

    /**
     * Set the value of _adresse_idVilles
     *
     * @return  self
     */ 
    public function set_adresse_idVilles($_adresse_idVilles)
    {
        $this->_adresse_idVilles = $_adresse_idVilles;

        return $this;
    }
}


?>