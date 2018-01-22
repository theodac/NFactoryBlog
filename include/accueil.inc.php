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
$sql = "SELECT * FROM `t_articles` ORDER BY `ARTDATE` DESC LIMIT 0,5";
$reponse = $db ->query($sql);


while ($donnees= $reponse->fetch(PDO::FETCH_ASSOC)){

    echo (html_entity_decode( "<div>"."<br/>" . "<h2>".$donnees['ARTTITRE'] . "</h2>". "<br/>" . "<h3>".  $donnees['ARTCHAPO'] ."</h3>". "<br/>" . "<div>". $donnees['ARTCONTENU'] ."</div>" . "<br/>" . "</div>" .  "<hr/>"));

}
