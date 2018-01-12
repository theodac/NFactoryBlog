<?php
session_start();
include_once ("./functions/callPage.php");
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