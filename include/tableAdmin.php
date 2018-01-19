
<table>
    <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Mail</th>
        <th>Roles</th>
    </tr>
    <?php
     $connexion = mysqli_connect("localhost", "root", "", "nfactoryblog");
     $requete = "SELECT * FROM t_users ";

    if($result = mysqli_query($connexion, $requete)) {
        if (mysqli_num_rows($result) > 0) {

            while ($donnees = mysqli_fetch_array($result)) {
                echo("<tr><td>" . $donnees['USERNAME'] . "</td>" . "<td>" . $donnees['USERFNAME'] . "</td>" . "<td>" . $donnees['USERMAIL'] . "</td>" . "<td>" . $donnees['T_ROLES_ID_ROLE'] . "</td>" . "</tr>");
            }


        } else
            //$_SESSION['login'] = 0;
            echo("Votre e-mail ou mot de passe est érronné");

    }
    ?>

</table>