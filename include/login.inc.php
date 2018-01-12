<h1>Login</h1>
<?php
if (isset($_POST['login'])) {
    $tabErreur = array();
    $mail = $_POST['mail'];
    $password = $_POST['password'];
    if ($mail == "")
        array_push($tabErreur, "Veuillez saisir une adresse");
    if ($password == "")
        array_push($tabErreur, "Veuillez saisir un mot de passe");
    if (count($tabErreur) > 0) {
        $message = "<ul>";
        for ($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo ($message);
        include ("./include/formLogin.php");
    }
    else {
        $connexion = mysqli_connect("localhost", "root", "", "nfactoryblog");
        if (!$connexion) {
            die("Erreur MySQL " . mysqli_connect_errno() . " : " . mysqli_connect_error());
        }
        else {
            $password = sha1($password);
            $requete = "SELECT * FROM t_users WHERE USERMAIL='$mail' AND USERPASSWORD='$password'";
            if($result = mysqli_query($connexion, $requete)) {
                if (mysqli_num_rows($result) > 0) {
                    $_SESSION['login'] = 1;
                    echo ("<script>redirection(\"index.php?page=accueil\");</script>
                    <a href=\"index.php?page=accueil\">Vous êtes authentifié, viendez à la page d'accueil</a>");
                }
                else
                    $_SESSION['login'] = 0;
            }
        }
        mysqli_close($connexion);
    }
}
else {
    include ("./include/formLogin.php");
}