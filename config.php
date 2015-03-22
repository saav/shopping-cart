<?php
$currency = '$'; 

//db settings
$db_username = 'root';
$db_password = '';
$db_name = 'mysql';
$db_host = 'localhost';
$mysqli = new mysqli($db_host, $db_username, $db_password,$db_name);

//paypal settings
$PayPalMode 			= 'sandbox'; // sandbox
$PayPalApiUsername 		= 'savin.varshney-facilitator_api1.gmail.com'; //PayPal API Username
$PayPalApiPassword 		= 'HPKD7T5EQAAECAAK'; //Paypal API password
$PayPalApiSignature 	= 'AcjexRqBNcnazUBNHvL0YhhUylhsAvoR7izplEhWJYStOaGZrDpxgiHi'; //Paypal API Signature
$PayPalCurrencyCode 	= 'SGD'; //Paypal Currency Code
$PayPalReturnURL 		= 'http://localhost/shopping-cart/express-checkout/process.php'; //Point to process.php page
$PayPalCancelURL 		= 'http://localhost/shopping-cart/express-checkout/cancel_url.html'; //Cancel URL
?>