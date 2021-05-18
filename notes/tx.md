# Submit Health Event

```
POST /fhir/
{
  "resourceType": "Bundle",
  "type": "batch",
  "entry": [
    { 
      "resource": {
        "resourceType": "Parameters",
        "parameter": [
          "name": "response",
          "resource": {
            "resourceType": "QuestionnaireResponse",
            "item": {
              // ANSWERS GO HERE
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "QuestionnaireResponse/$generateHealthCertificate"
      }
    }
  ]
}
```

Results are:
```
{
  "resourceType": "Bundle",
  "type": "batch-response",
  "entry": [
    {
      "fullUrl": "http://REGISTRY/fhir/Bundle/123"
      "resource": {
        "resourceType": "Bundle",
        "type": "document",
        "entry": [
          {
            "resourceType": "Composition",
            "id": "abc",
            "section": [
              // SECTIONS
            ],
          },
          {
            "resourceType": "Immunization",
            "id": "def",
            // ETC.
          },
          {
            "resourceType": "DocumentReference",
            "id": "ghi",
            "content": [
              {
                "format": "image", // not exact
                "attachment": {
                  "data": "BASE64",
                  "contentType": "image/png"
                }
              },
              {
                "format": "serialized", // not exact
                "attachment": {
                  "data": "BASE64",
                  "contentType": "application/json"
                }
              }
            ]
          }
        ]
      },
      "response": {
        "status": "200",
        "location": "http://REGISTRY/fhir/Bundle/123"
      }
    }
  ]
}
```
