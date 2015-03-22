# Paypal Shopping Cart

Basic website that allows a user to purchase a product using PayPal’s Express Checkout (on the sandbox environment)

<img src="http://www.instantcart.com/images/payments/paypal.png" width='600'>

<img src="https://teammatesv4.appspot.com/images/raised-edge.png" width='600'>

## Paypal Express Checkout

* Firstly I created a paypal sandbox account [**Sandbox Account**](https://developer.paypal.com/developer/login)
* [**Express checkout Documentation**](https://developer.paypal.com/docs/classic/express-checkout/integration-guide/ECGettingStarted/) : Followed up on the documentation to understand the checkout flow and the request response model.
* express-checkout includes process.php and pay.class.php - performin express checkout API operations
* [**pay.class.php**] --> collection of functions, PPHttpPost() function is to be used in process.php for sending HTTP POST request and getting response from the server
* Followed on the paypal name-value pair API basics --> execute a PayPal NVP API operation using cURL to submit request to paypal server --> and obtain the http response and obtain the key value pair from respose to obtain token and acknowledgement
* process.php - obtains the post request from the cart and process the payment --> obtain the product data and urlencode() the data for request to server
* Then I got the product data to set up the Express checkout parameters --> 
  to execute mainly three Paypal methods SetExpressCheckout, DoExpressCheckout & GetExpressCheckoutDetails
* Firstly Executed the "SetExpressCheckOut" method to obtain Paypal token --> retrieve the token and verify the paypal data
On receiving PayPal token, we need to set some session variable (itemprice, totalamount, itemName, itemNo, itemQTY) for later use. And then we redirect buyer to PayPal order summary page, where buyer pays in secure PayPal environment --> money is still to be transferred by paypal.
* Paypal token and PayerID values along with paypal data is sent back to PayPal using DoExpressCheckoutPayment method, where PayPal verifies these values, only then the money is transferred to Seller’s account.
* GetExpressCheckoutDetails - Obtainsed information about the order using SetExpressCheckOut token

## Shopping Cart

* config file stores various information neede for script - database details and PayPal API credentials
* index.php - display the product and shopping cart - get the product details from the database
* displayed small shopping cart box to keep track of user items. The main task of the shopping-cart is to look for session variable called $_SESSION[“products”], which holds the collection of user items in an array, and then retrieve and display its content in the box
* Cart_update.php is to add and remove items in the shopping cart --> create or update $_SESSION[“products”] with new array variables.
* view cart -  final page where user can view their products and proceed to payment --> submit post request to process.php by clicking checkout button