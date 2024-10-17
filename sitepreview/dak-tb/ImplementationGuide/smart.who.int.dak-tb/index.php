<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://smart.who.int/dak-tb/v1.0.1/ImplementationGuide-smart.who.int.dak-tb.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://smart.who.int/dak-tb/v1.0.1/ImplementationGuide-smart.who.int.dak-tb.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://smart.who.int/dak-tb/v1.0.1/ImplementationGuide-smart.who.int.dak-tb.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://smart.who.int/dak-tb/v1.0.1/ImplementationGuide-smart.who.int.dak-tb.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://smart.who.int/dak-tb/v1.0.1/ImplementationGuide-smart.who.int.dak-tb.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://smart.who.int/dak-tb/v1.0.1/index.html');
else 
  Redirect('http://smart.who.int/dak-tb/v1.0.1/ImplementationGuide-smart.who.int.dak-tb.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
