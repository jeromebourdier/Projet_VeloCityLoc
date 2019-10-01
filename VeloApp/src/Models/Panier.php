<?php 

class Panier 
{
    private $_idPanier;
    private $_paiement_idPaiement;
   

    public function __construct($_idPanier,$_paiement_idPaiement)
    {
        $this->_idPanier = $_idPanier;
        $this->_paiement_idPaiement = $_paiement_idPaiement;
    }

    
    


    /**
     * Get the value of _idPanier
     */ 
    public function get_idPanier()
    {
        return $this->_idPanier;
    }

    /**
     * Set the value of _idPanier
     *
     * @return  self
     */ 
    public function set_idPanier($_idPanier)
    {
        $this->_idPanier = $_idPanier;

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
}


?>