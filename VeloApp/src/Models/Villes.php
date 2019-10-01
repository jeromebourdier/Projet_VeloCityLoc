<?php 

class Ville 
{
    private $_idville;
    private $_cp;
    private $_nom_ville;
    public function __construct($_idville, $_cp, $_nom_ville){

    $this->_idville = $_idville;
    $this->_cp = $_cp;
    $this->_nom_ville = $_nom_ville;
    
         
    } 


    /**
     * Get the value of _idville
     */ 
    public function get_idville()
    {
        return $this->_idville;
    }

    /**
     * Set the value of _idville
     *
     * @return  self
     */ 
    public function set_idville($_idville)
    {
        $this->_idville = $_idville;

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

    /**
     * Get the value of _nom_ville
     */ 
    public function get_nom_ville()
    {
        return $this->_nom_ville;
    }

    /**
     * Set the value of _nom_ville
     *
     * @return  self
     */ 
    public function set_nom_ville($_nom_ville)
    {
        $this->_nom_ville = $_nom_ville;

        return $this;
    }
}


?>