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

            }
            catch (PDOException $e){
                echo ($e -> getMessage());
            }

            if (!$db) {
                echo "Erreur de connexion";
            }
            else {
                $message = addslashes(htmlentities($message , ENT_HTML5 , 'UTF-8'));
                $chapo=addslashes(htmlentities($chapo));
                $titre=addslashes(htmlentities($titre));
                $requete = "INSERT INTO t_articles (ID_ARTICLE, ARTTITRE, ARTCHAPO,
                        ARTCONTENU, ARTDATE)
                        VALUES (NULL, '$titre', '$chapo', '$message', NOW());";
                if($result = $db->query($requete)) {
                    if ($ligne = $result->rowCount() > 0) {
                        $_SESSION['login'] = 1;

                    }
                    else
                        $_SESSION['login'] = 0;

                }
                unset($db);
            }
        }

    }else{
        include ("./include/FormArticle.php");
    }
}else {
    echo "vous n'avez pas accès a cette page ";
}