Instance: RadiologyOrder
InstanceOf: ChOrfQuestionnaire
Title: "Questionniaire Radiology Order"
Description: "Example for Questionnaire"
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/RadiologyOrder"
* subjectType = #Patient
* status = #active
* item[0].linkId = "order"
* item[0].text = "Auftrag"
* item[0].type = #group
* item[0].item[0].linkId = "order.number"
* item[0].item[0].text = "Auftragsnummer"
* item[0].item[0].type = #string
* item[0].item[0].required = true
