<?php

class Connexion {

    public function __construct(){}

    public function connect($database){
            try
            {
                $db = new PDO('mysql:host=localhost;dbname='.$database.';charset=utf8', 'root','');
                return $db;        
            }
            catch(Exception $e)
            {
                die('Erreur : '.$e->getMessage());
            }
    }
}

$test = new Connexion ();
var_dump($test);

?>