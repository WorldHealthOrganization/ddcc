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
        "id": "123",
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

Alternative POST batch:
```
POST /fhir/
{
  "resourceType": "Bundle",
  "type": "batch",
  "entry": [
    { 
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "UUID1",
        "item": {
          // ANSWERS GO HERE
        }
      },
      "request": {
        "method": "PUT",
        "url": "QuestionnaireResponse/UUID1"
      }
    },
    {
      "request": {
        "method": "POST",
        "url": "QuestionnaireReponse/UUID1/$generateHealthCertificate"
      }
    }
  ]
}
```

Alternate results are:
```
{
  "resourceType": "Bundle",
  "type": "batch-response",
  "entry": [
    {
      "fullUrl": "http://REGISTRY/fhir/QuestionnaireResponse/UUID1",
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "UUID1",
        //QResp resource from above
      },
      "response": {
        "status": "200",
        "location": "http://REGISTRY/fhir/QuestionnaireResponse/UUID1",
      }
    },
    {
      "fullUrl": "http://REGISTRY/fhir/Bundle/123"
      "resource": {
        "resourceType": "Bundle",
        "id": "123",
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


