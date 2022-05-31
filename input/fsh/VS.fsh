ValueSet: ChEtocConditionCategory
Id: ch-etoc-conditioncategory
Title: "Condition Category"
Description: "Definition for Codition Category in the context of electronic transition of care."

* include codes from valueset HL7ConditionCategory
* include codes from system http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory


// ServiceRequest.category (Q: requestedService.service)
ValueSet: ChEtocRequestedService
Id: ch-rad-order-vs-requested-service
Title: "Requested Service"
Description: "Definition for Requested Service Value Set in the context of CH RAD-Order."
* include codes from system ChRadOrderRequestedService