<?php
function connectionPDO() {
    $dsn = "mysql:dbname=nfactoryBlog;
        host=localhost;
        charset=utf8";
// Login de votre BDD
    $username = "root";
// MDP de votre BDD
    $password = "";
    try{
        $db = new PDO($dsn,$username,$password);

    }
    catch (PDOException $e){
        echo ($e -> getMessage());
    }
    return $db ;

}