<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://smart.who.int/ig-starter-kit/v1.0.0/ImplementationGuide-smart.who.int.ig-starter-kit.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://smart.who.int/ig-starter-kit/v1.0.0/ImplementationGuide-smart.who.int.ig-starter-kit.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://smart.who.int/ig-starter-kit/v1.0.0/ImplementationGuide-smart.who.int.ig-starter-kit.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://smart.who.int/ig-starter-kit/v1.0.0/ImplementationGuide-smart.who.int.ig-starter-kit.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://smart.who.int/ig-starter-kit/v1.0.0/ImplementationGuide-smart.who.int.ig-starter-kit.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://smart.who.int/ig-starter-kit/v1.0.0/index.html');
else 
  Redirect('http://smart.who.int/ig-starter-kit/v1.0.0/ImplementationGuide-smart.who.int.ig-starter-kit.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
