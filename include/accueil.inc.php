<?php
$dsn = "mysql:dbname=nfactoryBlog;
        host=localhost;
        charset=utf8";
// Login de votre BDD
$username = "root";
// MDP de votre BDD
$password = "";
try{
    $db = new PDO($dsn,$username,$password);

}
catch (PDOException $e){
    echo ($e -> getMessage());
}

$sql ="SELECT * FROM t_articles LEFT JOIN t_categories_has_t_articles
 ON t_articles.ID_ARTICLE=t_categories_has_t_articles.T_ARTICLES_ID_ARTICLE LEFT JOIN t_categories ON t_categories_has_t_articles.T_CATEGORIES_ID_CATEGORIE=t_categories.ID_CATEGORIE";


$reponse = $db ->query($sql);


while ($donnees= $reponse->fetch(PDO::FETCH_ASSOC)){

    echo (html_entity_decode( "<div>"."<br/>" . "<h2>".$donnees['ARTTITRE'] . "</h2>". "<br/>"
        . "<h3>".  $donnees['ARTCHAPO'] ."</h3>". "<br/>"
        . "<div>". $donnees['ARTCONTENU'] ."</div>" . "<br/>"
        . "</div>" . $donnees['CATLIBELLE']."<hr/>"));

}
