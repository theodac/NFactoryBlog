
<table>
    <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Mail</th>
        <th>Roles</th>
    </tr>
    <?php
    // Requete permettant de me connecter a ma BDD

    $db = connectionPDO();
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