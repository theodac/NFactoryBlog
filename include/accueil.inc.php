<?php
$connexion = mysqli_connect("localhost", "root", "", "NFactoryBlog");
$reponse = mysqli_query($connexion,"SELECT * FROM `t_articles` ORDER BY `ID_ARTICLE` DESC LIMIT 5");
while ($donnees= mysqli_fetch_array($reponse)){

    echo (html_entity_decode( "<div>"."<br/>" . "<h2>".$donnees['ARTTITRE'] . "</h2>". "<br/>" . "<h3>".  $donnees['ARTCHAPO'] ."</h3>". "<br/>" . "<div>". $donnees['ARTCONTENU'] ."</div>" . "<br/>" . "</div>"));

}
