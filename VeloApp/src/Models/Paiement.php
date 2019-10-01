<?php 

class Paiement 
{
    private $_idPaiement;
    private $_numero_carte;
    private $_date_expiration;
    private $_cvv_carte;
    private $_name_carte;
    

    public function __construct($_idPaiement, $_numero_carte, $_date_expiration, $_cvv_carte,$_name_carte){

    $this->_idPaiement = $_idPaiement;
    $this->_numero_carte = $_numero_carte;
    $this->_date_expiration = $_date_expiration;
    $this->_cvv_carte = $_cvv_carte;
    $this->_name_carte = $_name_carte;
 
    }
  


    /**
     * Get the value of _idPaiement
     */ 
    public function get_idPaiement()
    {
        return $this->_idPaiement;
    }

    /**
     * Set the value of _idPaiement
     *
     * @return  self
     */ 
    public function set_idPaiement($_idPaiement)
    {
        $this->_idPaiement = $_idPaiement;

        return $this;
    }

    /**
     * Get the value of _numero_carte
     */ 
    public function get_numero_carte()
    {
        return $this->_numero_carte;
    }

    /**
     * Set the value of _numero_carte
     *
     * @return  self
     */ 
    public function set_numero_carte($_numero_carte)
    {
        $this->_numero_carte = $_numero_carte;

        return $this;
    }

    /**
     * Get the value of _date_expiration
     */ 
    public function get_date_expiration()
    {
        return $this->_date_expiration;
    }

    /**
     * Set the value of _date_expiration
     *
     * @return  self
     */ 
    public function set_date_expiration($_date_expiration)
    {
        $this->_date_expiration = $_date_expiration;

        return $this;
    }

    /**
     * Get the value of _cvv_carte
     */ 
    public function get_cvv_carte()
    {
        return $this->_cvv_carte;
    }

    /**
     * Set the value of _cvv_carte
     *
     * @return  self
     */ 
    public function set_cvv_carte($_cvv_carte)
    {
        $this->_cvv_carte = $_cvv_carte;

        return $this;
    }

    /**
     * Get the value of _name_carte
     */ 
    public function get_name_carte()
    {
        return $this->_name_carte;
    }

    /**
     * Set the value of _name_carte
     *
     * @return  self
     */ 
    public function set_name_carte($_name_carte)
    {
        $this->_name_carte = $_name_carte;

        return $this;
    }
}


?>