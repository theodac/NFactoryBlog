<h1>Inscription</h1>
<?php
if(isset($_POST["formulaire"])) {
    $tabErreur = array();
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $mail = trim($_POST['mail']);
    $mdp = trim($_POST['password']);

    if($_POST["nom"] == ""){
        array_push($tabErreur, "Veuillez saisir votre nom");
    }
    if($_POST["prenom"] == "" ){
        array_push($tabErreur, "Veuillez saisir votre prénom");
    }elseif ($nom !== filter_var($nom , FILTER_SANITIZE_STRING)){
        array_push($tabErreur , "Caracteres non autorisées");
    }

    if($_POST["mail"] == "" || !filter_var($mail, FILTER_VALIDATE_EMAIL)){
        array_push($tabErreur, "Veuillez saisir votre e-mail valide");
    }
    if($_POST["password"] == "")
        array_push($tabErreur, "Veuillez saisir un mot de passe");

    if(count($tabErreur) != 0) {
        $message = "<ul>";
        for($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo($message);
        include("./include/formInscription.php");
    }
    else {
        // Requete permettant de me connecter a ma BDD

       $db = connectionPDO();

        $requeteLogin = ("SELECT * FROM `t_users` WHERE `USERMAIL` = '$mail'");

        if ($result = $db->query($requeteLogin)){

            if (($ligne= $result->rowCount()) != 0){
                echo "Votre e-mail est deja utilisé ";
            }else{


                $mdp = sha1($mdp);


                $requete = "INSERT INTO t_users (ID_USER, USERNAME, USERFNAME,
                            USERMAIL, USERPASSWORD, USERDATEINS, T_ROLES_ID_ROLE)
                            VALUES (NULL, '$nom', '$prenom', '$mail', '$mdp', NULL, 5);";

                $result2=$db->query($requete);


                unset($db);
            }

        }else{
            die($requeteLogin);
        }

    }
}
else {

    include("./include/formInscription.php");
}


