<?php 

class form  
{
    private $_prenom;
    private $_nom;
    private $_email;
    private $_pass;
    private $_adresse;
    private $_ville;
    private $_cp;
    

    public function __construct($_prenom, $_nom, $_email, $_pass,$_adresse, $_ville, $_cp){

    $this->_prenom = $_prenom;
    $this->_nom = $_nom;
    $this->_email = $_email;
    $this->_pass = $_pass;
    $this->_adresse = $_adresse;
    $this->_ville = $_ville;
    $this->_cp = $_cp;    
    
 
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
     * Get the value of _pass
     */ 
    public function get_pass()
    {
        return $this->_pass;
    }

    /**
     * Set the value of _pass
     *
     * @return  self
     */ 
    public function set_pass($_pass)
    {
        $this->_pass = $_pass;

        return $this;
    
    }

    /**
     * Get the value of _adresse
     */ 
    public function get_adresse()
    {
        return $this->_adresse;
    }

    /**
     * Set the value of _adresse
     *
     * @return  self
     */ 
    public function set_adresse($_adresse)
    {
        $this->_adresse = $_adresse;

        return $this;
    }



    /**
     * Get the value of _ville
     */ 
    public function get_ville()
    {
        return $this->_ville;
    }

    /**
     * Set the value of _ville
     *
     * @return  self
     */ 
    public function set_ville($_ville)
    {
        $this->_ville = $_ville;

        return $this;
    }

    /**
     * Get the value of _cp
     */ 
    public function get_cp()
    {
        return $this->_cp;
    }

    /**
     * Set the value of _cp
     *
     * @return  self
     */ 
    public function set_cp($_cp)
    {
        $this->_cp = $_cp;

        return $this;
    }
}

?>