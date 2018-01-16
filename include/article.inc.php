<?php
if(isset($_SESSION['login']) == 1 ){
if(isset($_POST["article"])) {
    $tabErreur = array();
    $titre = $_POST['titre'];
    $chapo = $_POST['chapo'];
    $message = $_POST['message'];

    if($_POST["titre"] == "")
        array_push($tabErreur, "Veuillez renseigné un titre");
    if($_POST["chapo"] == "")
        array_push($tabErreur, "Veuillez renseigné un sous-titre");
    if($_POST["message"] == ""){
        array_push($tabErreur, "Veuillez renseigné votre message");
}else{

    }

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
            $message = addslashes(htmlentities($message , ENT_HTML5 , 'UTF-8'));
            $chapo=addslashes(utf8_decode($chapo));
            $titre=addslashes(utf8_decode($titre));
            $requete = "INSERT INTO t_articles (ID_ARTICLE, ARTTITRE, ARTCHAPO,
                        ARTCONTENU, ARTDATE)
                        VALUES (NULL, '$titre', '$chapo', '$message', NOW());";
            if($result = mysqli_query($connexion, $requete)) {
                if (@mysqli_num_rows($result) > 0) {
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
    echo "vous n'avez pas accès a cette page ";
}