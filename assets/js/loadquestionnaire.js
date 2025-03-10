document.addEventListener("DOMContentLoaded", function () {
  var formContainer = document.getElementById("formContainer");

  if (!formContainer) {
      console.error("Error: formContainer not found!");
      return;
  }

  var type = formContainer.dataset.type;  // Read from data attribute
  var id = formContainer.dataset.id;      // Read from data attribute

  if (!type || !id) {
      console.error("Error: Missing type or id attributes in formContainer.");
      return;
  }

  // Dynamically construct the JSON filename based on type and id
  var jsonUrl = `${type}-${id}.json`;

  // Fetch the FHIR Questionnaire JSON
  fetch(jsonUrl)
      .then(response => {
          if (!response.ok) {
              throw new Error(`Error loading ${jsonUrl}: ${response.statusText}`);
          }
          return response.json();
      })
      .then(fhirQ => {
          delete fhirQ.text;
          return fetch("expansions.json").then(response => {
              if (!response.ok) {
                  throw new Error("Error loading expansions.json: " + response.statusText);
              }
              return response.json();
          }).then(exps => {
              processFHIRQuestionnaire(fhirQ, exps);
          });
      })
      .catch(error => console.error("Error in loading JSON data:", error));

  /**
   * Processes the FHIR Questionnaire by replacing contained ValueSets with expanded versions
   * and adding external ValueSets if found in expansions.json.
   */
  function processFHIRQuestionnaire(fhirQ, exps) {
      if (fhirQ.hasOwnProperty('contained')) {
          fhirQ.contained.forEach(function (contained, i) {
              if (contained.resourceType === 'ValueSet') {
                  var vset = contained;
                  if (exps.entry && exps.entry.some(e => e.resource.id === vset.id)) {
                      fhirQ.contained[i] = exps.entry.find(e => e.resource.id === vset.id).resource;
                  }
              }
          });
      }

      // Find and add missing external ValueSets
      var otherValueSets = listValueSets(fhirQ);
      if (Array.isArray(otherValueSets) && otherValueSets.length) {
          otherValueSets.forEach(function (vsURL) {
              if (exps.entry && exps.entry.some(e => e.resource.url === vsURL)) {
                  var newContainedVS = exps.entry.find(e => e.resource.url === vsURL).resource;
                  if (!fhirQ.hasOwnProperty('contained')) {
                      fhirQ.contained = [];
                  }
                  fhirQ.contained.push(newContainedVS);
              }
          });
      }

      // Add the form to the page
      LForms.Util.addFormToPage(fhirQ, 'formContainer');

      // Define the function for showing the QuestionnaireResponse
      window.showQR = function () {
          var qr = LForms.Util.getFormFHIRData('QuestionnaireResponse', 'R4');
          window.alert(JSON.stringify(qr, null, 2));
      };
  }

  /**
   * Recursively finds all ValueSet URLs referenced in a Questionnaire
   */
  function listValueSets(obj) {
      var found = [];
      if (obj.hasOwnProperty('answerValueSet')) {
          found.push(obj['answerValueSet']);
      }
      if (obj.hasOwnProperty('item')) {
          obj['item'].forEach(function (item) {
              found = found.concat(listValueSets(item));
          });
      }
      return found;
  }
});
