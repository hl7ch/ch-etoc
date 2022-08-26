Instance: QuestionnaireEtoc-modular
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire eTOC (Modular version)"
Description: "Example for Questionnaire"
* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-root

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
//----------
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueId = "Bundle"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Bundle
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The Bundle that is to be used to pre-populate the form"

* url = "http://fhir.ch/ig/ch-orf/Questionnaire/QuestionnaireEtoc-modular"
* name = "QuestionnaireEtoc-modular"
* title = "QuestionnaireEtoc-modular"
* status = #active
* subjectType = #Patient
* date = "2022-08-24"
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

/* ----------- not depicted in questionnaire; fix values are defined in composition resource

* item[=].item[+].linkId = "order.title"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-composition#Composition.title"
* item[=].item[=].text = "Titel"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueString = "Zuweisungsschreiben"

* item[=].item[+].linkId = "order.type"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-composition#Composition.type"
* item[=].item[=].text = "Typ"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = DocumentEntryTypeCode
* item[=].item[=].initial.valueCoding = DocumentEntryTypeCode#419891008 // Nicht näher bezeichnetes Dokument

* item[=].item[+].linkId = "order.category"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-composition#Composition.category"
* item[=].item[=].text = "Kategorie"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = DocumentEntryClassCode
* item[=].item[=].initial.valueCoding = DocumentEntryClassCode#721927009 // Zuweisungsschreiben
-----------*/

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

// ----------Initiator: Person/organization who initated this order / application ; e.g. spitex, retirement home etc. ----------
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initiator"
* item[=].text = "Initiant dieser Anmeldung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator|2.0.0"
* item[=].item.linkId = "initiator.1"
* item[=].item.text = "Unable to resolve 'intitiator' sub-questionnaire"
* item[=].item.type = #display

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[0].valueExpression.name = "linkIdPrefix"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "address"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.address"
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
* item[=].item.text = "Unable to resolve 'requestedEncounter' sub-questionnaire"
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
* item[=].item.text = "Unable to resolve 'receiverCopy' sub-questionnaire"
* item[=].item.type = #display


/*------ Antecedent Episode of Care ------------------------------ */

* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"
* item[=].type = #group

* item[=].item[+].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Von"
* item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "antecedentEpisodeOfCare.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.organization"
* item[=].item[=].text = "Spital /Heim"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'antecedentEpisodeOfCare.organization.'"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

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

/*------ Consent ------------------------------ */
* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:patientConsent"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent|2.0.0"
* item[=].item.linkId = "consent.1"
* item[=].item.text = "Unable to resolve 'consent' sub-questionnaire"
* item[=].item.type = #display

//_____
/*------------------------------------------------------------------------
Wozu wird der Patient zugewiesen
*/
* item[+].linkId = "purpose"
* item[=].text = "Wozu wird der Patient zugewiesen?"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-purpose|2.0.0"
* item[=].item.linkId = "purpose.1"
* item[=].item.text = "Unable to resolve 'anamnesis' sub-questionnaire"
* item[=].item.type = #display

/*------ Diagnosis and Clinical Findings ------------------------------ */
* item[+].linkId = "diagnosislist"
* item[=].text = "Diagnosen und Befunde"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-diagnosislist"
* item[=].item.linkId = "diagnosislist.1"
* item[=].item.text = "Unable to resolve 'diagnosislist' sub-questionnaire"
* item[=].item.type = #display

/*------ Anamnesis ------------------------------ */
* item[+].linkId = "anamnesis"
* item[=].text = "Anamnese"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-anamnesis|2.0.0"
* item[=].item.linkId = "anamnesis.1"
* item[=].item.text = "Unable to resolve 'anamnesis' sub-questionnaire"
* item[=].item.type = #display

/*------ Medication ------------------------------ */
* item[+].linkId = "medication"
* item[=].text = "Medikation"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-medication|2.0.0"
* item[=].item.linkId = "medication.1"
* item[=].item.text = "Unable to resolve 'medication' sub-questionnaire"
* item[=].item.type = #display

/*------ Allergies and Intolerances ------------------------------ */
* item[+].linkId = "allergyIntolerance"
* item[=].text = "Allergien und Intoleranzen"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-allergyIntolerance|2.0.0"
* item[=].item.linkId = "allergyIntolerance.1"
* item[=].item.text = "Unable to resolve 'allergyIntolerance' sub-questionnaire"
* item[=].item.type = #display

/*------ immunization ------------------------------ */
* item[+].linkId = "immunization"
* item[=].text = "Allergien und Intoleranzen"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-immunization|2.0.0"
* item[=].item.linkId = "immunization.1"
* item[=].item.text = "Unable to resolve 'immunization' sub-questionnaire"
* item[=].item.type = #display

/*------ Lab ------------------------------ */
* item[+].linkId = "lab"
* item[=].text = "Labor"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-lab|2.0.0"
* item[=].item.linkId = "lab.1"
* item[=].item.text = "Unable to resolve 'lab' sub-questionnaire"
* item[=].item.type = #display

/*------ Pathology ------------------------------ */
* item[+].linkId = "pathology"
* item[=].text = "Pathologie"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-pathology|2.0.0"
* item[=].item.linkId = "pathology.1"
* item[=].item.text = "Unable to resolve 'pathology' sub-questionnaire"
* item[=].item.type = #display

/*------ Imaging ------------------------------ */
* item[+].linkId = "imaging"
* item[=].text = "Bildgebung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-imaging|2.0.0"
* item[=].item.linkId = "imaging.1"
* item[=].item.text = "Unable to resolve 'lab' sub-questionnaire"
* item[=].item.type = #display

/*------ Cardiology ------------------------------ */
* item[+].linkId = "cardiology"
* item[=].text = "cardiology"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-cardiology|2.0.0"
* item[=].item.linkId = "cardiology.1"
* item[=].item.text = "Unable to resolve 'cardiology' sub-questionnaire"
* item[=].item.type = #display

/*------ careplan ------------------------------ */
* item[+].linkId = "careplan"
* item[=].text = "Therapie / Pflegeplanung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-careplan|2.0.0"
* item[=].item.linkId = "careplan.1"
* item[=].item.text = "Unable to resolve 'careplan' sub-questionnaire"
* item[=].item.type = #display

/*------ attachment ------------------------------ */
* item[+].linkId = "attachment"
* item[=].text = "Anhang"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-attachment|2.0.0"
* item[=].item.linkId = "attachment.1"
* item[=].item.text = "Unable to resolve 'attachment' sub-questionnaire"
* item[=].item.type = #display

// -------- Service Request Note ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group

* item[=].item[+].linkId = "note.text"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].type = #string


//============ Module defintions =================================

/*Module Purpose*/
Instance: ch-etoc-module-purpose
InstanceOf: Questionnaire
Title: "Module Questionnaire Purpose"
Description: "Subquestionnaire Purpose"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-purpose"
* name = "ModuleQuestionnaireEtocPurpose"
* title = "Module Questionnaire Order Purpose"
* status = #active
* date = "2022-08-24"
* publisher = "HL7 Switzerland"

* item[+].linkId = "purpose.aim"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.code.text"
* item[=].text = "Ziel"
* item[=].type = #string
* item[=].repeats = true

* item[+].linkId = "reason.statement"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonCode.text"
* item[=].text = "Begründung"                
* item[=].type = #string
* item[=].repeats = true



/*Module Diagnosis and Findings*/
Instance: ch-etoc-module-diagnosislist
InstanceOf: Questionnaire
Title: "Module Questionnaire Diagnosis"
Description: "Subquestionnaire Diagnosis"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-diagnosislist"
* name = "ModuleQuestionnaireEtocDiagnosis"
* title = "Module Questionnaire Order Diagnosis"
* status = #active
* date = "2022-05-23"
* publisher = "HL7 Switzerland"

* item[+].linkId = "diagnosisList.primarydiagnosis"
* item[=].text = "Hauptdiagnosen / Probleme"
* item[=].type = #group

* item[=].item[+].linkId = "diagnosisList.primaryDiagnosis.item"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].text = "Hauptdiagnose / Problem"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[+].linkId = "diagnosisList.secondarydiagnosis"
* item[=].text = "Nebendiagnosen / Probleme"
* item[=].type = #group

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis.item"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:diagnosis"
* item[=].item[=].text = "Nebendiagnose / Problem"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[+].linkId = "diagnosisList.bodyHeight"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyHeight"
* item[=].text = "Grösse (cm)"   
* item[=].type = #quantity

* item[+].linkId = "diagnosisList.bodyWeight"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyWeight"
* item[=].text = "Gewicht (kg)"   
* item[=].type = #quantity

* item[+].linkId = "diagnosisList.pregnancy"
* item[=].text = "Schwangerschaft"   
* item[=].type = #group

* item[=].item[+].linkId = "diagnosisList.pregnancy.present"
* item[=].item[=].text = "Schwanger"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].type = #boolean


* item[=].item[+].linkId = "diagnosisList.pregnancy.expectedDeliveryDate"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].text = "Erwarteter Geburtstermin"   
* item[=].item[=].type = #dateTime


/*Module Anamnesis*/
Instance: ch-etoc-module-anamnesis
InstanceOf: Questionnaire
Title: "Module Questionnaire Anamnesis"
Description: "Subquestionnaire Anamnesis"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-anamnesis"
* name = "ModuleQuestionnaireEtocAnamnesis"
* title = "Module Questionnaire Order Anamnesis"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "anamnesis.historyofillnesses"   
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:historyofIllnesses"  
* item[=].text = "Bisherige Krankheiten und Unfälle"   
* item[=].type = #text
 // For convenience: History of illnesses in one paragraph 

* item[+].linkId = "anamnesis.historyofprocedures"   
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:historyofProcedures"  
* item[=].text = "Bisherige Abklärungen und Eingriffe"   
* item[=].type = #text
 // For convenience: History of procedures in one paragraph 

* item[+].linkId = "anamnesis.device"   
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:devices"  
* item[=].text = "Implantate, Schrittmacher, Neurostimulatoren etc."   
* item[=].type = #text
 // For convenience: All Devices in one paragraph (seldom numerous items)

* item[+].linkId = "anamnesis.socialhistory"   
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:socialHistory"  
* item[=].text = "Sozialanamnese"  
* item[=].type = #text
 // For convenience: Social History in one paragraph (is in general narrative)

* item[+].linkId = "anamnesis.functionalStatus"   
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:functionalStatus"  
* item[=].text = "Funktion, Behinderungen"   
* item[=].type = #text
 // For convenience: Functional status in one paragraph (is in general narrative)


/*Module Medication*/
Instance: ch-etoc-module-medication
InstanceOf: Questionnaire
Title: "Module Questionnaire Medication"
Description: "Subquestionnaire Medication"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-medication"
* name = "ModuleQuestionnaireEtocMedication"
* title = "Module Questionnaire Order Medication"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "medication.medicationstatement"
* item[=].definition = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medicationstatement#MedicationStatement"
* item[=].text = "Medikation"
* item[=].type = #group
* item[=].repeats = true // Systems might provide medication as multiple entries 

* item[=].item[+].linkId = "medication.medicationstatement.medication"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medication#Medication.code.text"
* item[=].item[=].text = "Medikament"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "medication.medicationstatement.dosage"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medicationstatement#MedicationStatement.dosage:nonstructured"
* item[=].item[=].text = "Dosierung"
* item[=].item[=].type = #string


/*Module AllergyIntolerlance*/
Instance: ch-etoc-module-allergyIntolerance
InstanceOf: Questionnaire
Title: "Module Questionnaire AllergyIntolerlance"
Description: "Subquestionnaire AllergyIntolerlance"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-allergyIntolerance"
* name = "ModuleQuestionnaireallergyIntolerance"
* title = "Module Questionnaire Allergy and Intolerance"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "allergyIntolerance.status"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:allergiesIntolerances"
* item[=].text = "Allergien / Intoleranzen"
* item[=].type = #text
// For convenience: Allergies in one paragraph


/*Module Immunization*/
Instance: ch-etoc-module-immunization
InstanceOf: Questionnaire
Title: "Module Questionnaire Immunization"
Description: "Subquestionnaire Immunization"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-immunization"
* name = "ModuleQuestionnaireImmunization"
* title = "Module Questionnaire Immunization"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "immunization.status"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:immunizations"
* item[=].text = "Bisherige Impfungen"
* item[=].type = #text
 // For convenience: Immunizations in one paragraph


/*Module Lab*/
Instance: ch-etoc-module-lab
InstanceOf: Questionnaire
Title: "Module Questionnaire Lab"
Description: "Subquestionnaire Lab"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-lab"
* name = "ModuleQuestionnaireEtocLab"
* title = "Module Questionnaire Lab"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "lab.result"
* item[=].text = "Laborresultat"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:labresults"
* item[=].type = #string
* item[=].repeats = true // Systems might provide lab results as multiple entries


/*Module Pathology*/
Instance: ch-etoc-module-pathology
InstanceOf: Questionnaire
Title: "Module Questionnaire Pathologyg"
Description: "Subquestionnaire Pathology"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-pathology"
* name = "ModuleQuestionnaireEtocPathology"
* title = "Module Questionnaire Pathology"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "pathology.result"
* item[=].text = "Pathologiebefunde"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pathologyresults"
* item[=].type = #text
 // For convenience: Pathology results in one paragraph (is often narrative)


/*Module Imaging*/
Instance: ch-etoc-module-imaging
InstanceOf: Questionnaire
Title: "Module Questionnaire Imaging"
Description: "Subquestionnaire Imaging"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-imaging"
* name = "ModuleQuestionnaireEtocImaging"
* title = "Module Questionnaire Imaging"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "imaging.result"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:imagingresults"
* item[=].text = "Befunde aus der Bildgebung"
* item[=].type = #text
 // For convenience: Radiology results in one paragraph (is often narrative)


/*Module Cardiology*/
Instance: ch-etoc-module-cardiology
InstanceOf: Questionnaire
Title: "Module Questionnaire Cardiology"
Description: "Subquestionnaire Cardiology"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-cardiology"
* name = "ModuleQuestionnaireallergyIntolerance"
* title = "Module Questionnaire Order immunization"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "cardiology.result"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:cardiologyresults"
* item[=].text = "EKG / Kardiologische Befunde"
* item[=].type = #text
 // For convenience: Cardiology results in one paragraph (is often narrative)


/*Module Careplan*/
Instance: ch-etoc-module-careplan
InstanceOf: Questionnaire
Title: "Module Questionnaire Care plan"
Description: "Subquestionnaire careplan"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-careplan"
* name = "ModuleQuestionnaireCareplan"
* title = "Module Questionnaire careplan"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "careplan.title"  
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-careplan#Media.content.title"
* item[=].text = "Dateiname und -endung der angehängten Datei (z.B. \"Pflegeplan_12032022.pdf\")"
* item[=].type = #string
* item[=].repeats = true

* item[=].item[+].linkId = "careplan.note"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-careplan#Media.content.annotation"
* item[=].item[=].text = "Anmerkung"
* item[=].item[=].type = #text

* item[=].item[+].linkId = "careplan.data"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-careplan#Media.content.data"
* item[=].item[=].text = "Daten"
* item[=].item[=].type = #string


/*Module Attachment*/
Instance: ch-etoc-module-attachment
InstanceOf: Questionnaire
Title: "Module Questionnaire Attachment"
Description: "Subquestionnaire Attachment"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-attachment"
* name = "ModuleQuestionnaireAttachment"
* title = "Module Questionnaire Attachment"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "attachtment.title"  
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-attachment#Media.content.title"
* item[=].text = "Dateiname und -endung der angehängten Datei (z.B. \"shoulder_re_F_Muster_12021988.pdf\")"
* item[=].type = #string
* item[=].repeats = true

* item[=].item[+].linkId = "attachment.note"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-attachment#Media.content.annotation"
* item[=].item[=].text = "Anmerkung"
* item[=].item[=].type = #text

* item[=].item[+].linkId = "attachment.data"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-attachment#Media.content.data"
* item[=].item[=].text = "Daten"
* item[=].item[=].type = #string


/*Module Note*/
Instance: ch-etoc-module-note
InstanceOf: Questionnaire
Title: "Module Questionnaire Note"
Description: "Subquestionnaire Note"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-note"
* name = "ModuleQuestionnaireNote"
* title = "Module Questionnaire Note"
* status = #active
* date = "2022-05-25"
* publisher = "HL7 Switzerland"

* item[+].linkId = "note.text"
* item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.note.text"
* item[=].text = "Text" 
* item[=].type = #text
* item[=].required = false 

/*Module Service Request Category         
* item[+].linkId = "requestedService"
* item[=].text = "Angeforderte Leistung"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "requestedService.service"
// item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.category.coding"
* item[=].item[=].text = "Leistung"                 
* item[=].item[=].required = true
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-etoc-vs-requested-service-level-1"

* item[=].item[=].item[+].linkId = "requestedService.service"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.category.coding"
* item[=].item[=].item[=].text = "Leistung"                 
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-etoc-vs-requested-service-level-2"
*/
