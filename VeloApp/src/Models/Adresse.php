<?php 

class Adresse 
{
    private $_idVilles;
    private $_nom_rue;
    private $_numero_rue;
    private $_Ville_idVilles;

    
public function __construct($_idVilles, $_nom_rue, $_numero_rue, $_Ville_idVilles){

    $this->_idVilles = $_idVilles;
    $this->_nom_rue = $_nom_rue;
    $this->_numero_rue = $_numero_rue;
    $this->_Ville_idVilles = $_Ville_idVilles;
}



    /**
     * Get the value of _idVilles
     */ 
    public function get_idVilles()
    {
        return $this->_idVilles;
    }

    /**
     * Set the value of _idVilles
     *
     * @return  self
     */ 
    public function set_idVilles($_idVilles)
    {
        $this->_idVilles = $_idVilles;

        return $this;
    }

    /**
     * Get the value of _nom_rue
     */ 
    public function get_nom_rue()
    {
        return $this->_nom_rue;
    }

    /**
     * Set the value of _nom_rue
     *
     * @return  self
     */ 
    public function set_nom_rue($_nom_rue)
    {
        $this->_nom_rue = $_nom_rue;

        return $this;
    }

    /**
     * Get the value of _numero_rue
     */ 
    public function get_numero_rue()
    {
        return $this->_numero_rue;
    }

    /**
     * Set the value of _numero_rue
     *
     * @return  self
     */ 
    public function set_numero_rue($_numero_rue)
    {
        $this->_numero_rue = $_numero_rue;

        return $this;
    }

    /**
     * Get the value of _Ville_idVilles
     */ 
    public function get_Ville_idVilles()
    {
        return $this->_Ville_idVilles;
    }

    /**
     * Set the value of _Ville_idVilles
     *
     * @return  self
     */ 
    public function set_Ville_idVilles($_Ville_idVilles)
    {
        $this->_Ville_idVilles = $_Ville_idVilles;

        return $this;
    }
}


?>