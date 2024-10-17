<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/OperationDefinition-PutKeys.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/OperationDefinition-PutKeys.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/OperationDefinition-PutKeys.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/OperationDefinition-PutKeys.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/OperationDefinition-PutKeys.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/OperationDefinition-PutKeys.html');
else 
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/OperationDefinition-PutKeys.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
