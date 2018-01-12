<?php
if($_SESSION['login'] == 1){
if(isset($_POST["article"])) {
    $tabErreur = array();
    $titre = $_POST['titre'];
    $chapo = $_POST['chapo'];
    $message = $_POST['message'];
    $date = $_POST['date'];
    if($_POST["titre"] == "")
        array_push($tabErreur, "Veuillez renseigné un titre");
    if($_POST["chapo"] == "")
        array_push($tabErreur, "Veuillez renseigné un sous-titre");
    if($_POST["message"] == "")
        array_push($tabErreur, "Veuillez renseigné votre message");
    if($_POST["date"] == "")
        array_push($tabErreur, "Veuillez renseigné une date");
    if(count($tabErreur) != 0) {
        $message = "<ul>";
        for($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo($message);
        include("./include/FormArticle.php");
    } else {
        $connexion = mysqli_connect("localhost", "root", "", "nfactoryblog");
        if (!$connexion) {
            die("Erreur MySQL " . mysqli_connect_errno() . " : " . mysqli_connect_error());
        }
        else {

            $requete = "INSERT INTO t_articles (ID_ARTICLE, ARTTITRE, ARTCHAPO,
                        ARTCONTENU, ARTDATE)
                        VALUES (NULL, '$titre', '$chapo', '$message', '$date');";
            if($result = mysqli_query($connexion, $requete)) {
                if (mysqli_num_rows($result) > 0) {
                    $_SESSION['login'] = 1;

                }
                else
                    $_SESSION['login'] = 0;
            }
            mysqli_close($connexion);
        }
    }

}else{
    include ("./include/FormArticle.php");
}
}else {
    echo("Vous n'avez pas accès a cette page !");
}