<?php
$_SESSION['login'] = 0;
session_destroy();
echo ("<script>redirection(\"index.php?page=accueil\");</script>
<a href=\"index.php?page=accueil\">Accueil</a>");