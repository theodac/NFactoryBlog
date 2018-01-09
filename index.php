<?php
include_once("./features/function.php"); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./assets/css/normalize.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Blog</title>
</head>
<body>
<div id="container">
<?php include_once("./include/header.php");?>
<main>

<?php
callback();
?>
</main>
<?php include_once("./include/footer.php");
?>
</div>
</body>
</html>