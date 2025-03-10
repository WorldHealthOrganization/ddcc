library ModernaOrPfizerPass version '1.0.0'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers

context Patient

define "Completed Immunization":
  ModernaProtocol or PfizerProtocol

define "ModernaProtocol":
  Count(GetAllModerna) > 1

define "PfizerProtocol":
  Count(GetAllPfizer) > 1

define "GetAllModerna":
  [Immunization] I
    where I.vaccineCode.coding.code.value contains '207'

define "GetAllPfizer":
  [Immunization] I
    where I.vaccineCode.coding.code.value contains '208'