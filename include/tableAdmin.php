
<table>
    <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Mail</th>
        <th>Roles</th>
    </tr>
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

    }
    catch (PDOException $e){
        echo ($e -> getMessage());
    }
     $requete = "SELECT * FROM t_users ";

    if($result =$db->query($requete)) {
        if ($lignes=$result->rowCount() > 0) {

            while ($donnees = $result->fetch(PDO::FETCH_ASSOC)) {
                echo("<tr><td>" . $donnees['USERNAME'] . "</td>" . "<td>" . $donnees['USERFNAME'] . "</td>" . "<td>" . $donnees['USERMAIL'] . "</td>" . "<td>" . $donnees['T_ROLES_ID_ROLE'] . "</td>" . "</tr>");
            }


        } else
            //$_SESSION['login'] = 0;
            echo("Votre e-mail ou mot de passe est érronné");

    }
    ?>

</table>