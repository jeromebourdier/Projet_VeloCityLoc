<?php 

class Articles 
{
    private $_idArticle;
    private $_nom_article;
    private $_description_article;
    private $_couleur_article;
    private $_reference_article;
    
    public function __construct($_idArticle, $_nom_article, $_description_article, $_couleur_article, $_reference_article){

        $this->_idArticle = $_idArticle;
        $this->_nom_article = $_nom_article;
        $this->_description_article = $_description_article;
        $this->_couleur_article = $_couleur_article;
        $this->_reference_article = $_reference_article;
    
    }
    public function getAllarArticles($sql){
        $allArticles = DataBaseManager::selectSQL($sql);
        return $allArticles;
    }
    public function getAllArticle($sql)  
    {             
    $connect=Connect::connect('velocityloc',);        
    $req=$connect->prepare($sql);       
    $req->execute();
    $response=$connect->fetchObject();        
    return $response;
    }    
    
    public function getArticleById($sql,$id)    
    {         
    $connect=Connect::connect('velocityloc'); 
    $req=$connect->prepare($sql);         
    $req->bindPARAM(":id",$id,PDO::PARAM_INT);         
    $req->execute();
    $response=$connect->fetchObject();         
    return $response; 
    }
        


    /**
     * Get the value of _idArticle
     */ 
    public function get_idArticle()
    {
        return $this->_idArticle;
    }

    /**
     * Set the value of _idArticle
     *
     * @return  self
     */ 
    public function set_idArticle($_idArticle)
    {
        $this->_idArticle = $_idArticle;

        return $this;
    }

    /**
     * Get the value of _nom_article
     */ 
    public function get_nom_article()
    {
        return $this->_nom_article;
    }

    /**
     * Set the value of _nom_article
     *
     * @return  self
     */ 
    public function set_nom_article($_nom_article)
    {
        $this->_nom_article = $_nom_article;

        return $this;
    }

    /**
     * Get the value of _description_article
     */ 
    public function get_description_article()
    {
        return $this->_description_article;
    }

    /**
     * Set the value of _description_article
     *
     * @return  self
     */ 
    public function set_description_article($_description_article)
    {
        $this->_description_article = $_description_article;

        return $this;
    }

    /**
     * Get the value of _couleur_article
     */ 
    public function get_couleur_article()
    {
        return $this->_couleur_article;
    }

    /**
     * Set the value of _couleur_article
     *
     * @return  self
     */ 
    public function set_couleur_article($_couleur_article)
    {
        $this->_couleur_article = $_couleur_article;

        return $this;
    }

    /**
     * Get the value of _reference_article
     */ 
    public function get_reference_article()
    {
        return $this->_reference_article;
    }

    /**
     * Set the value of _reference_article
     *
     * @return  self
     */ 
    public function set_reference_article($_reference_article)
    {
        $this->_reference_article = $_reference_article;

        return $this;
    }
}


?>