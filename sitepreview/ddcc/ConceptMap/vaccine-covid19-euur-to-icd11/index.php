<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/ConceptMap-vaccine-covid19-euur-to-icd11.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/ConceptMap-vaccine-covid19-euur-to-icd11.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/ConceptMap-vaccine-covid19-euur-to-icd11.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/ConceptMap-vaccine-covid19-euur-to-icd11.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/ConceptMap-vaccine-covid19-euur-to-icd11.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://smart.who.int/ddcc/1.0.0/ConceptMap-vaccine-covid19-euur-to-icd11.html');
else 
  Redirect('http://smart.who.int/ddcc/1.0.0/ConceptMap-vaccine-covid19-euur-to-icd11.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
