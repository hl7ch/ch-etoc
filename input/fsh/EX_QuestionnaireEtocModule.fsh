Instance: QuestionnaireEtoc-modular
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Etoc (Modular version)"
Description: "Example for Questionnaire"

* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-root

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[0].url = "name"
* extension[=].extension[0].valueId = "Bundle"
* extension[=].extension[1].url = "type"
* extension[=].extension[1].valueCode = #Bundle
* extension[=].extension[2].url = "description"
* extension[=].extension[2].valueString = "The Bundle that is to be used to pre-populate the form"

* url = "http://fhir.ch/ig/ch-orf/Questionnaire/QuestionnaireEtoc-modular"
* name = "QuestionnaireEtoc-modular"
* title = "QuestionnaireEtoc-modular"
* status = #active
* subjectType = #Patient
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|2.0.0"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"
* item[=].item.type = #display

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|2.0.0"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|2.0.0"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display

// ---------- Encounter Class (Ambulant / Satinär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|2.0.0"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedencounter' sub-questionnaire"
* item[=].item.type = #display


// ---------- Coverage (Kostenträger) ----------
// Design as agreed with eHealth Suisse and Cistec 09.06.2021

* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|2.0.0"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item.type = #display

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|2.0.0"
* item[=].item.linkId = "sender.1"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|2.0.0"
* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receivercopy' sub-questionnaire"
* item[=].item.type = #display

/*------ Appointment ------------------------------ */
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display

* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosen und Befunde"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-diagnosis|2.0.0"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item.type = #display

// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "note.text"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].type = #string
* item[=].item[=].required = true







/*Module Diagnosen und Befunde
*/

Instance: ch-etoc-module-diagnosis
InstanceOf: Questionnaire
Title: "Module Questionnaire Diagnosis"
Description: "Subquestionnaire Diagnosis"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-diagnosis"
* name = "ModuleQuestionnaireEtocDiagnosis"
* title = "Module Questionnaire Order Diagnosis"
* status = #active
* date = "2022-05-23"
* publisher = "HL7 Switzerland"

* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"
* item[=].type = #group
* item[=].repeats = false

* item[=].item[+].linkId = "diagnosisList.primarydiagnosis"
* item[=].item[=].text = "Hauptdiagnosen / Probleme"
* item[=].item[=].type = #group
* item[=].repeats = false

* item[=].item[=].item[+].linkId = "diagnosisList.primaryDiagnosis.item"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].item[=].text = "Hauptdiagnose / Problem"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "diagnosisList.secondarydiagnosis"
* item[=].item[=].text = "Nebendiagnosen / Probleme"
* item[=].item[=].type = #group
* item[=].repeats = false

* item[=].item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis.item"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:diagnosis"
* item[=].item[=].item[=].text = "Nebendiagnose / Problem"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyHeight"
* item[=].item[=].text = "Grösse (cm)"   
* item[=].item[=].type = #quantity
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyWeight"
* item[=].item[=].text = "Gewicht (kg)"   
* item[=].item[=].type = #quantity
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "diagnosisList.pregnancy"
* item[=].item[=].text = "Schwangerschaft"   
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "diagnosisList.pregnancy.present"
* item[=].item[=].item[=].text = "Schwanger"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].repeats = false

* item[=].item[=].item[+].linkId = "diagnosisList.pregnancy.expectedDeliveryDate"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].item[=].text = "Erwarteter Geburtstermin"   
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].repeats = false


/*Module Anamnesis
*/
