<?php
// Requete permettant de me connecter a ma BDD

$dsn = "mysql:dbname=nfactoryBlog;
        host=localhost;
        charset=utf8";
// Login de votre BDD
$username = "root";
// MDP de votre BDD
$password = "";
// Creation d'un
//$db = new PDO($dsn,$username,$password);
try{
    $db = new PDO($dsn,$username,$password);
    var_dump($db);
}
catch (PDOException $e){
    echo ($e -> getMessage());
}



$sql = "SELECT * FROM T_ARTICLES";
$resultat = $db -> query($sql);
while (($article = $resultat -> fetch())){
    echo html_entity_decode($article['ARTCONTENU']);
}

//Requete d'insertion

$sql = "INSERT INTO T_ARTICLES...";
$nbrLignes = $db -> exec($sql);
echo $nbrLignes;
unset($db);
///////////////////////////////////////////////////////////
$db = $db = new PDO($dsn,$username,$password);

// Formatage par defaut
$db -> setAttribute(
    PDO::ATTR_DEFAULT_FETCH_MODE,
    PDO::FETCH_ASSOC);
// Formatage pour un jeu de résultats

$resultat  = $db -> query("SELECT *...");
$resultat -> setFetchMode(PDO::FETCH_ASSOC);
while (($article = $resultat -> fetch())){
    var_dump($article);
}

// A chaque appel

$resultat = $db -> query("SELECT * ...");
while (($article = $resultat->fetch(PDO::FETCH_ASSOC))){
    var_dump($article);
}