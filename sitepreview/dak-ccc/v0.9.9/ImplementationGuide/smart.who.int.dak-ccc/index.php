<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://smart.who.int/dak-ccc/v0.9.9/ImplementationGuide-smart.who.int.dak-ccc.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://smart.who.int/dak-ccc/v0.9.9/ImplementationGuide-smart.who.int.dak-ccc.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://smart.who.int/dak-ccc/v0.9.9/ImplementationGuide-smart.who.int.dak-ccc.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://smart.who.int/dak-ccc/v0.9.9/ImplementationGuide-smart.who.int.dak-ccc.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://smart.who.int/dak-ccc/v0.9.9/ImplementationGuide-smart.who.int.dak-ccc.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://smart.who.int/dak-ccc/v0.9.9/index.html');
else 
  Redirect('http://smart.who.int/dak-ccc/v0.9.9/ImplementationGuide-smart.who.int.dak-ccc.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
