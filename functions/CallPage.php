<?php
function callpage()
{
    if (isset($_GET['page']) && $_GET['page'] != "") {
        $page = $_GET['page'];
    }
    elseif ($_SERVER['PHP_SELF'] === "/NFactoryBlog/index.php"){
        $page = "accueil";
    }

    else {
        $page = "default";
    }

    $page = "./include/" . $page . ".inc.php";

    $incFiles = glob("./include/*.inc.php");

    if (in_array($page, $incFiles)) {
        include($page);
    } else {
        include("./include/default.inc.php");
    }
}

