<?php
require('../captcha/autoload.php');
if (isset($_POST['submitpost'])){
if (isset($_POST['g-recaptcha-response'])){
$recaptcha = new \ReCaptcha\ReCaptcha('6LeGgkIUAAAAAOJrdVI6GeXw1qQxeVvsmxQ98v7h');
$resp = $recaptcha->verify($_POST['g-recaptcha-response']);
if ($resp->isSuccess()) {
    var_dump('Captcha Valide');
    // if Domain Name Validation turned off don't forget to check hostname field
    // if($resp->getHostName() === $_SERVER['SERVER_NAME']) {  }
} else {
    $errors = $resp->getErrorCodes();
    var_dump('Captcha Invalide');
    var_dump($errors);
}
}else {
    var_dump('Captcha Non remplie');
}
}
?>
<html>
<head>
    <title>reCAPTCHA demo: Simple page</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
<form  method="POST">
    <div class="g-recaptcha" data-sitekey="6LeGgkIUAAAAAGgOMXF13A4yM8gSsPfI70bWTKiR"></div>
    <br/>
    <input type="submit" value="Submit" name="submitpost">
</form>
</body>
</html>