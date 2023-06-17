Instance: QuestionnaireResponseEtoc
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionniaireResponse Medical Referral"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-etoc/Questionnaire/QuestionnaireEtoc"
* status = #completed

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "123"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:2.999.1.3.4.5.6.7"

* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "456"

* item[=].item[+].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "urn:oid:2.999.7.8.9.10.11"

* item[=].item[+].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].answer.valueString = "1622f2fb-6ba3-4532-9aed-35b158def187"

// ---------- Urgent Notification Contact for this document ----------
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"

* item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Röntgen"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Hans"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 412 00 99"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "hans.roentgen@kantonsspital.ch"

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"

* item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Sabine"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "sabine.meier@praxisseeblick.ch"

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#routine

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"

* item[=].item[+].linkId = "receiver.practitioner"
* item[=].item[=].text = "Empfangende Person"

* item[=].item[=].item[+].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Röntgen"

* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Hans"

* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000201041"

* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].answer.valueString = "A123262"

* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "044 412 00 99"

* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "hans.roentgen@kantonsspital.ch"

* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"

* item[=].item[=].item[+].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Kantonsspital"

* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[0].valueString = "Kantonsstrasse 14"
* item[=].item[=].item[=].answer[1].valueString = "Postfach 14"

* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "initiator"
* item[=].text = "Initiant dieser Anmeldung"

* item[=].item[+].linkId = "initiator.legalrelation"
* item[=].item[=].text = "Juristische Beziehung zum Patienten"
* item[=].item[=].answer.valueCoding = SCT#373068000 "Nicht definiert"

* item[=].item[+].linkId = "initiator.personalrelation"
* item[=].item[=].text = "Persönliche Beziehung zum Patienten?"
// * item[=].item[=].answer.valueCoding = http://snomed.info/sct#65616008 "Sohn"
* item[=].item[=].answer.valueCoding = http://snomed.info/sct#65616008

* item[=].item[+].linkId = "initiator.relatedPerson"
* item[=].item[=].text = "Andere Person"

* item[=].item[=].item[+].linkId = "initiator.relatedPerson.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Musterfrau"

* item[=].item[=].item[+].linkId = "initiator.relatedPerson.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Fritz"


// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].text = "Patient"

* item[=].item[+].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Ufferer"

* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].answer.valueString = "Leidend"

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Susanna"

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1970-03-14"

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = AdministrativeGender#female

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "+41 79 979 79 79"

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "susanna@ufferer.ch"

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer[+].valueString = "Musterweg"
* item[=].item[=].answer[+].valueString = "6a"

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "8000"

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Zürich"

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "Schweiz"

// ---------- Encounter Class (Ambulant / Stationär / Notfall) & Zimmerkategorie ----------
* item[+].linkId = "requestedEncounter"
* item[=].text = "Patientenaufnahme"

* item[=].item[+].linkId = "requestedEncounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item[=].answer[+].valueCoding = V3ActCode#EMER "Notfall"

// ---------- Coverage (Kostenträger) ----------
* item[+].linkId = "coverage"
* item[=].text = "Kostenträger"

* item[=].item[+].linkId = "coverage.beneficiary"

// KVG
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].text = "Krankenkasse (nach KVG)"

* item[=].item[=].item[+].linkId = "coverage.kvg.name"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = "Sanitas"

* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].answer.valueString = "80756015090002647590"

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].text = "Verantwortlicher"

* item[=].item[=].item[+].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Rderplacer"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Ottilie"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = "7601000050717"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "+41 44 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "o.rderplacer@happydoctors.ch"

* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Happy Doctors"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer[+].valueString = "Kantonsstrasse 14"
* item[=].item[=].item[=].item[=].answer[+].valueString = "Postfach 14"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].text = "Erfasser"

* item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item[=].text = "Erfassende Person"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Ataenterer"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Doris"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "+41 44 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "d.ataenterer@happydoctors.ch"

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"

* item[=].item[+].linkId = "receiverCopy.patient"
* item[=].item[=].answer.valueBoolean = true

/* ============ Kerninhaltes von eTOC ==============================

/*------------------------------------------------------------------------
Wozu wird der Patient zugewiesen
*/
* item[+].linkId = "purpose"
* item[=].text = "Wozu wird der Patient zugewiesen?"

* item[=].item[+].linkId = "purpose.aim"
* item[=].item[=].text = "Procedere / Behandlung"                
* item[=].item[=].answer[+].valueString = "Abklärung akuter Thoraxschmerzen"

* item[=].item[=].answer[=].item[+].linkId = "purpose.aim.detail"
* item[=].item[=].answer[=].item[=].text = "Procedere / Behandlung im Detail"                
* item[=].item[=].answer[=].item[=].answer[+].valueString = "Abklärung kardiale Ursache?"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "Abklärung Ösophagitis?"

/* item[=].item[=].item[+].linkId = "purpose.aim.detail"
* item[=].item[=].item[=].text = "Procedere / Behandlung im Detail"                
* item[=].item[=].item[=].answer.valueString = "Abklärung Ösophagitis?"
*/

* item[=].item[+].linkId = "reason.statement"
* item[=].item[=].text = "Begründung"  
* item[=].item[=].answer.valueString = "Verdacht auf Vorderwandinfarkt"

* item[=].item[+].linkId = "reason.statement"
* item[=].item[=].text = "Begründung"  
* item[=].item[=].answer.valueString = "Reflux bekannt"

/*----------------------------------------------------------------------
Darstellung der Diagnosen und Befunde
*/
* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"

* item[=].item[+].linkId = "diagnosisList.primaryDiagnosis"
* item[=].item[=].text = "Hauptdiagnosen / Probleme"

* item[=].item[=].item[+].linkId = "diagnosisList.primaryDiagnosis.item"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].item[=].text = "Hauptdiagnose / Problem"
* item[=].item[=].item[=].answer[+].valueString = "St. nach Bypass 2007"

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"
* item[=].item[=].text = "Nebendiagnosen / Probleme"

* item[=].item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis.item"  
* item[=].item[=].item[=].text = "Nebendiagnose / Problem"
* item[=].item[=].item[=].answer[+].valueString = "Hypertonie (Syst um 180 mm HG)"
* item[=].item[=].item[=].answer[+].valueString = "Hypercholesterinämie seit Jahren"

* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyHeight"
* item[=].item[=].text = "Grösse (cm)"   

* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyWeight"
* item[=].item[=].text = "Gewicht (kg)"   

* item[=].item[+].linkId = "diagnosisList.pregnancy"
/* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].text = "Schwangerschaft"   
*/

* item[=].item[=].item[+].linkId = "diagnosisList.pregnancy.expectedDeliveryDate"
/* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].item[=].text = "Erwarteter Geburtstermin"   
*/
/*----------------------------------------------------------------------
Anamnese
 */
* item[+].linkId = "anamnesis" 
* item[=].text = "Anamnese"

* item[=].item[+].linkId = "anamnesis.historyofillnesses"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:historyofIllnesses"  
* item[=].item[=].text = "Bisherige Krankheiten und Unfälle" 
* item[=].item[=].answer[+].valueString = "Endokarditis 1999"

* item[=].item[+].linkId = "anamnesis.historyofprocedures"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:historyofProcedures"  
* item[=].item[=].text = "Bisherige Abklärungen und Eingriffe"   

* item[=].item[+].linkId = "anamnesis.devices"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:devices"  
* item[=].item[=].text = "Implantate, Schrittmacher, Neurostimulatoren etc."   

* item[=].item[+].linkId = "anamnesis.socialhistory"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:socialHistory"  
* item[=].item[=].text = "Sozialanamnese"  

* item[=].item[+].linkId = "anamnesis.functionalStatus"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:functionalStatus"  
* item[=].item[=].text = "Funktion, Behinderungen"   

/* ---------------------------------------------------------------------------
Medikation
*/
* item[+].linkId = "medication"
* item[=].text = "Medikation"

* item[=].item[+].linkId = "medication.medication"
* item[=].item[=].text = "Medikament"
* item[=].item[=].answer[+].valueString = "Erdabyclor"
* item[=].item[=].answer[=].item[+].linkId = "medication.dosage"
* item[=].item[=].answer[=].item[=].text = "Dosierung"
* item[=].item[=].answer[=].item[=].answer.valueString = "0/25 mg 1/2-0-0"

* item[=].item[+].linkId = "medication.medication"
* item[=].item[=].text = "Medikament"
* item[=].item[=].answer[+].valueString = "Nitroglycerin"
* item[=].item[=].answer[=].item[+].linkId = "medication.dosage"
* item[=].item[=].answer[=].item[=].text = "Dosierung"
* item[=].item[=].answer[=].item[=].answer.valueString = "0.8 mg s.L.; 16h15"

/* ---------------------------------------------------------------------------
Allergien und Intoleranzen
*/
* item[+].linkId = "allergyIntolerance"
* item[=].text = "Allergien und Intoleranzen"

* item[=].item[+].linkId = "allergyIntolerance.status"
* item[=].item[=].text = "Bekannte Allergien / Intoleranzen"

/* ---------------------------------------------------------------------------
Impfungen
*/
* item[+].linkId = "immunizationStatus"
* item[=].text = "Impfstatus"

* item[=].item[+].linkId = "immunizationStatus.status"
* item[=].item[=].text = "Bisherige Impfungen"

/* ---------------------------------------------------------------------------
Labor
*/
* item[+].linkId = "lab"
* item[=].text = "Labor"

* item[=].item[+].linkId = "lab.result"
* item[=].item[=].text = "Laborresultate"

/* ---------------------------------------------------------------------------
Pathologie
*/
* item[+].linkId = "pathology"
* item[=].text = "Pathologie"

* item[=].item[+].linkId = "pathology.result"
* item[=].item[=].text = "Pathologiebefunde"

/* ---------------------------------------------------------------------------
Bildgebung
*/
* item[+].linkId = "imaging"
* item[=].text = "Bildgebung"

* item[=].item[+].linkId = "imaging.result"
* item[=].item[=].text = "Befund aus der Bildgebung"

/* ---------------------------------------------------------------------------
Kardiologie
*/
* item[+].linkId = "cardiology"
* item[=].text = "Kardiologie"

* item[=].item[+].linkId = "cardiology.result"
* item[=].item[=].text = "EKG / Kardiologische Befunde"
* item[=].item[=].answer.valueString = "ST-Hebungen V1-V5"

/* ---------------------------------------------------------------------------
Verlauf und Therapie- / Pflegeplanung
*/
/* item[+].linkId = "carePlans"
* item[=].text = "Verlauf und Therapie- / Pflegeplanung"

* item[=].item.linkId = "careplan.title"
* item[=].item.text = "Dateiname und -endung der angehängten Datei (z.B. \"Verlauf.pdf\")"
* item[=].item[=].answer[+].valueString = "Verlauf_Reha_S_Ufferer_2007.pdf"

* item[=].item[+].linkId = "careplan.note"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-careplan#Media.content.annotation"
* item[=].item[=].text = ""
* item[=].item[=].answer[+].valueString = "Reha-Verlauf S Ufferer nach Bypass 2007"
*/
/* ---------------------------------------------------------------------------
Anhangs
*/
* item[+].linkId = "attachment"
* item[=].text = "Anhang"

* item[=].item[+].linkId = "attachment.title"  
* item[=].item[=].text = "Dateiname und -endung der angehängten Datei (z.B. \"Verlauf.pdf\")"
* item[=].item[=].answer[+].valueString = "EKG_S_Ufferer_26052023.pdf"
* item[=].item[=].answer[=].item[+].linkId = "attachment.description"  
* item[=].item[=].answer[=].item[=].text = "Beschreibung" 
* item[=].item[=].answer[=].item[=].answer[+].valueString = "EKG vom 26.05.2023"

* item[=].item[+].linkId = "attachment.title"  
* item[=].item[=].text =  "Dateiname und -endung der angehängten Datei (z.B. \"Verlauf.pdf\")"
* item[=].item[=].answer[+].valueString = "Pflegeplan_Spitex_S_Ufferer_26052023.pdf"
* item[=].item[=].answer[=].item[+].linkId = "attachment.description"  
* item[=].item[=].answer[=].item[=].text = "Beschreibung" 
* item[=].item[=].answer[=].item[=].answer[+].valueString = "Aktueller Pflegeplan der Spitex"


// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"

* item[=].item[+].linkId = "note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].answer[+].valueString = "Patient ist sehr ängstlich"
