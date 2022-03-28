<?php
$result = array();
//The parameter after verify/ is the transaction reference to be verified
$url =  'https://api.paystack.co/transaction/verify/'. $_GET['reference'];

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt(
  $ch, CURLOPT_HTTPHEADER, [
    'sk_test_sk_test_5e97bf26bde3f560f31461dd7f6fc95417bdcaf2']
);
$request = curl_exec($ch);
if(curl_error($ch)){
 echo 'error:' . curl_error($ch);
 }
curl_close($ch);

if ($request) {
  $result = json_decode($request, true);
}

if (array_key_exists('data', $result) && array_key_exists('status', $result['data']) && ($result['data']['status'] === 'success')) {
  echo "Transaction was successful";
	//Perform necessary action
}else{
  echo "Transaction was unsuccessful";
}