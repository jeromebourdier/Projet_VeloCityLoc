<?php 

class Forfaits 
{
    private $_idForfaits;
    private $_heure;
    private $_jours;
    private $_semaine;
    private $_mois;
    private $_tva;
    private $_prix;

 
public function __construct($_idForfaits, $_heure, $_jours, $_semaine,$_mois,$_tva,$_prix){

    $this->_idForfaits = $_idForfaits;
    $this->_heure = $_heure;
    $this->_jours = $_jours;
    $this->_semaine = $_semaine;
    $this->_mois = $_mois;
    $this->_tva = $_tva;
    $this->_prix = $_prix;
    
}      
  


    /**
     * Get the value of _idForfaits
     */ 
    public function get_idForfaits()
    {
        return $this->_idForfaits;
    }

    /**
     * Set the value of _idForfaits
     *
     * @return  self
     */ 
    public function set_idForfaits($_idForfaits)
    {
        $this->_idForfaits = $_idForfaits;

        return $this;
    }

    /**
     * Get the value of _heure
     */ 
    public function get_heure()
    {
        return $this->_heure;
    }

    /**
     * Set the value of _heure
     *
     * @return  self
     */ 
    public function set_heure($_heure)
    {
        $this->_heure = $_heure;

        return $this;
    }

    /**
     * Get the value of _jours
     */ 
    public function get_jours()
    {
        return $this->_jours;
    }

    /**
     * Set the value of _jours
     *
     * @return  self
     */ 
    public function set_jours($_jours)
    {
        $this->_jours = $_jours;

        return $this;
    }

    /**
     * Get the value of _semaine
     */ 
    public function get_semaine()
    {
        return $this->_semaine;
    }

    /**
     * Set the value of _semaine
     *
     * @return  self
     */ 
    public function set_semaine($_semaine)
    {
        $this->_semaine = $_semaine;

        return $this;
    }

    /**
     * Get the value of _mois
     */ 
    public function get_mois()
    {
        return $this->_mois;
    }

    /**
     * Set the value of _mois
     *
     * @return  self
     */ 
    public function set_mois($_mois)
    {
        $this->_mois = $_mois;

        return $this;
    }

    /**
     * Get the value of _tva
     */ 
    public function get_tva()
    {
        return $this->_tva;
    }

    /**
     * Set the value of _tva
     *
     * @return  self
     */ 
    public function set_tva($_tva)
    {
        $this->_tva = $_tva;

        return $this;
    }

    /**
     * Get the value of _prix
     */ 
    public function get_prix()
    {
        return $this->_prix;
    }

    /**
     * Set the value of _prix
     *
     * @return  self
     */ 
    public function set_prix($_prix)
    {
        $this->_prix = $_prix;

        return $this;
    }
}


?>