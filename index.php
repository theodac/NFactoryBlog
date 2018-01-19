<?php
session_start();
include_once ("./functions/callPage.php");
?>
<?php
if (isset($_COOKIE['visite'])) {
    setCookie('visite', $_COOKIE['visite'] + 1 ,time() + 365*24*3600);

} else {
    setCookie('visite', 1 ,time() + 365*24*3600);

}
?>
<?php

echo ( "Ceci est votre ". $_COOKIE['visite'] ." visite !");

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="./assets/css/styles.css" type="text/css" rel="stylesheet" />

    <title>Blog</title>

    <script src="./assets/js/function.js"></script>
    <script type="text/javascript" src="./assets/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: 'textarea'
        });
    </script>
</head>
<body>
<div id="container">
    <?php include_once("./include/header.php");?>
    <main>
        <?php
        callPage();
        ?>
    </main>
    <?php include_once("./include/footer.php");?>
</div>
</body>
</html>