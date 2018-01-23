<?php
if (isset($_SESSION['admin']) == 1){

if($_SESSION['admin']==1) {
    $db = connectionPDO();
    $requete = "SELECT * FROM t_users";
    $result=$db->query($requete);
    echo"<table>";
    while ($donnees=$result->fetch(PDO::FETCH_ASSOC)){
        echo("<tr>
                <td>".$donnees['ID_USER']."</td>"
            ."<td>".$donnees['USERNAME']."</td>"
            ."<td>".$donnees['USERFNAME']."</td>"
            ."<td>".$donnees['USERMAIL']."</td>"
            ."<td>".$donnees['T_ROLES_ID_ROLE']."</td>"
            ."<td>"."<form method='post' action='#'>"
            ."<select name='select'>
                <option value='1'>1</option>
            <option value='2'>2</option>
            <option value='3'>3</option>
            <option value='4'>4</option>
            <option value='5'>5</option>
            </select> "."</td>"
            ."<td>"."<input type='text' name='id'>".
            "<input type='submit' value='Mettre a jour' name='formulaire'>"."</form>"."</td>"."</tr>");

    }
    echo("</table>");
    if(isset($_POST['formulaire'])){
        $id=$_POST['id'];
        $choix=$_POST['select'];
        $requete2= "UPDATE t_users SET T_ROLES_ID_ROLE='$choix' WHERE ID_USER='$id'";
        $result2 = $db->query($requete2);
    }
} else {
    echo "erreur";
}
}