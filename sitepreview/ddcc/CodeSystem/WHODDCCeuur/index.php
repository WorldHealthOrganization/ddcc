<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/CodeSystem-WHODDCCeuur.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/CodeSystem-WHODDCCeuur.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/CodeSystem-WHODDCCeuur.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/CodeSystem-WHODDCCeuur.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/CodeSystem-WHODDCCeuur.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/CodeSystem-WHODDCCeuur.html');
else 
  Redirect('http://smart.who.int/ddcc/1.0.0/CodeSystem-WHODDCCeuur.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
