<?php 

class Stock 
{
    private $_idStock;
    private $_velos;
    private $_nb_velos;
    private $_date_entree;
    private $_date_sortie;
    private $_articles_idVelos;
    
public function __construct($_idStock, $_velos, $_nb_velos, $_date_entree, $_date_sortie, $_articles_idVelos){

    $this->_idStock = $_idStock;
    $this->_velos = $_velos;   
    $this->_nb_velos = $_nb_velos;
    $this->_date_entree = $_date_entree;
    $this->_date_sortie = $_date_sortie;
    $this->_articles_idVelos = $_articles_idVelos;   
}
    

    /**
     * Get the value of _idStock
     */ 
    public function get_idStock()
    {
        return $this->_idStock;
    }

    /**
     * Set the value of _idStock
     *
     * @return  self
     */ 
    public function set_idStock($_idStock)
    {
        $this->_idStock = $_idStock;

        return $this;
    }

    /**
     * Get the value of _velos
     */ 
    public function get_velos()
    {
        return $this->_velos;
    }

    /**
     * Set the value of _velos
     *
     * @return  self
     */ 
    public function set_velos($_velos)
    {
        $this->_velos = $_velos;

        return $this;
    }

    /**
     * Get the value of _nb_velos
     */ 
    public function get_nb_velos()
    {
        return $this->_nb_velos;
    }

    /**
     * Set the value of _nb_velos
     *
     * @return  self
     */ 
    public function set_nb_velos($_nb_velos)
    {
        $this->_nb_velos = $_nb_velos;

        return $this;
    }

    /**
     * Get the value of _date_entree
     */ 
    public function get_date_entree()
    {
        return $this->_date_entree;
    }

    /**
     * Set the value of _date_entree
     *
     * @return  self
     */ 
    public function set_date_entree($_date_entree)
    {
        $this->_date_entree = $_date_entree;

        return $this;
    }

    /**
     * Get the value of _date_sortie
     */ 
    public function get_date_sortie()
    {
        return $this->_date_sortie;
    }

    /**
     * Set the value of _date_sortie
     *
     * @return  self
     */ 
    public function set_date_sortie($_date_sortie)
    {
        $this->_date_sortie = $_date_sortie;

        return $this;
    }

   

    /**
     * Get the value of _articles_idVelos
     */ 
    public function get_articles_idVelos()
    {
        return $this->_articles_idVelos;
    }

    /**
     * Set the value of _articles_idVelos
     *
     * @return  self
     */ 
    public function set_articles_idVelos($_articles_idVelos)
    {
        $this->_articles_idVelos = $_articles_idVelos;

        return $this;
    }
}


?>