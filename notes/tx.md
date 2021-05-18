# Submit Health Event

## Submit Parameters to $generateHealthCertificate operation

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

## Submit QuestionnaireResponse as PUT followed by $generateHealthCertificate operation

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

## Submit QuestionnaireResponse as POST followed by $generateHealthCertificate operation

I'm not sure if this would work in a base FHIR server, but a mediator
could process them separately instead of having FHIR do it.  It's probably
not worth doing it this way unless FHIR would handle it.

```
POST /fhir/
{
  "resourceType": "Bundle",
  "type": "batch",
  "entry": [
    { 
      "fullUrl": "urn:uuid:ABCDEFG"
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "urn:uuid:ABCDEFG",
        "item": {
          // ANSWERS GO HERE
        }
      },
      "request": {
        "method": "POST",
        "url": "QuestionnaireResponse"
      }
    },
    {
      "request": {
        "method": "POST",
        "url": "QuestionnaireReponse/unr:uuid:ABCDEFG/$generateHealthCertificate"
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
      "fullUrl": "http://REGISTRY/fhir/QuestionnaireResponse/123",
      "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "123",
        //QResp resource from above
      },
      "response": {
        "status": "200",
        "location": "http://REGISTRY/fhir/QuestionnaireResponse/123",
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

## Bundle of transactions

This probably isn't ideal either as it starts to get complicated, but
just including it to show more options. PUT vs. POST on the 
QuestionnaireResponse would still be an option.

```
POST /fhir/
{
  "resourceType": "Bundle",
  "type": "batch",
  "entry": [
    {
      "resource": {
        "resourceType": "Bundle",
        "type": "transaction",
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
      },
      "request": {
        "method": "POST",
        "url": "/fhir"
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
    "resource": 
      {
        "resourceType": "Bundle",
        "type": "transaction-response",
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
    }
  ]
}
```


