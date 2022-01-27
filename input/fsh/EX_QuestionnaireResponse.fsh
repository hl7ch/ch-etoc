Instance: QuestionnaireResponseEtoc
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionniaireResponse Radiology Order"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-etoc/Questionnaire/QuestionnaireEtoc"
* status = #completed

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"

/* ----------- not depicted in questionnaire; fix values are defined in composition resource
* item[=].item[+].linkId = "order.title"
* item[=].item[=].text = "Titel"
* item[=].item[=].answer.valueString = "Notfallzuweisung"

* item[=].item[+].linkId = "order.type"
* item[=].item[=].text = "Typ"

* item[=].item[+].linkId = "order.category"
* item[=].item[=].text = "Kategorie"
* item[=].item[=].answer.valueCoding = SCT#721927009 "Order (record artifact)"
*/

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "12345"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:1.3.4.5.6.7"

// ---------- Urgent Notification Contact for this document ----------

// ---------- Urgent Notification Contact for the Response to this document ----------

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#urgent "Die Anfrage hat normale Priorität."

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
* item[=].item[=].item[=].item[=].answer.valueString = "7601000034321"

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

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"

* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"

* item[=].item[=].item[+].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Klinik Happy Hospital"

* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Seestrasse 133"
* item[=].item[=].item[=].answer[+].valueString = "Haus C"

* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"

* item[=].item[+].linkId = "receiverCopy.patient"
* item[=].item[=].answer.valueBoolean = true

/* ============ Kerninhaltes von eToc ==============================

/*------------------------------------------------------------------------
Wozu wird der Patient zugewiesen
*/
* item[+].linkId = "purpose"
* item[=].text = "Wozu wird der Patient zugewiesen?"

* item[=].item[+].linkId = "purpose.aim"
* item[=].item[=].text = "Ziel"                
* item[=].item[=].answer.valueString = "Abklärung akuter Thoraxschmerzen"

* item[=].item[+].linkId = "reason.statement"
* item[=].item[=].text = "Begründung"  
* item[=].item[=].answer.valueString = "Verdacht auf Vorderwandinfarkt"

/*----------------------------------------------------------------------
Darstellung der Diagnosen und Befunde
*/
* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"

* item[=].item[+].linkId = "diagnosisList.primarydiagnosis"
* item[=].item[=].text = "Hauptdiagnosen / Probleme"

* item[=].item[=].item[+].linkId = "diagnosisList.primaryDiagnosis.item"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].item[=].text = "Hauptdiagnose / Problem"
* item[=].item[=].item[=].answer[+].valueString = "St. nach Bypass 2007"

* item[=].item[+].linkId = "diagnosisList.secondarydiagnosis"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].text = "Schwangerschaft"   

* item[=].item[=].item[+].linkId = "diagnosisList.pregnancy.expectedDeliveryDate"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].item[=].text = "Erwarteter Geburtstermin"   

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

/* item[=].item[+].linkId = "medication.medicationstatement"

* item[=].item[=].item[+].linkId = "medication.medicationstatement.medication"
* item[=].item[=].item[=].answer.valueString = "Erdabyclor"

* item[=].item[=].item[=].item[+].linkId = "medication.medicationstatement.dosage"
* item[=].item[=].item[=].item[=].answer.valueString = "0/25 mg 1/2-0-0-0"
*/
* item[=].item[+].linkId = "medication.medicationstatement"

* item[=].item[=].item[+].linkId = "medication.medicationstatement.medication"
* item[=].item[=].item[=].answer.valueString = "Nitroglycerin"
* item[=].item[=].item[=].item[+].linkId = "medication.medicationstatement.dosage"
* item[=].item[=].item[=].item[=].answer.valueString = "0.8 mg s.L.; 16h15"

/* ---------------------------------------------------------------------------
Allergien und Intoleranzen
*/
* item[+].linkId = "allergy"

/* ---------------------------------------------------------------------------
Impfungen
*/
* item[+].linkId = "immunizationstatus"

* item[=].item[+].linkId = "immunizationstatus.immunizations"

/* ---------------------------------------------------------------------------
Labor
*/
* item[+].linkId = "lab"

/* ---------------------------------------------------------------------------
Pathologie
*/
* item[+].linkId = "pathology"

/* ---------------------------------------------------------------------------
Bildgebung
*/
* item[+].linkId = "imaging"
* item[=].text = "Bildgebung"

* item[=].item[+].linkId = "imaging.imagingresults"
* item[=].item[=].text = "Befund aus der Bildgebung"

/* ---------------------------------------------------------------------------
Kardiologie
*/
* item[+].linkId = "cardiology"

* item[=].item[+].linkId = "cardiology.cardiologyresults"
* item[=].item[=].answer[+].valueString = "ST-Hebungen V1-V5"

/* ---------------------------------------------------------------------------
Bisheriger und weiterer Verlauf
*/
* item[+].linkId = "carePlans"
* item[=].text = "Verlauf"

* item[=].item[+].linkId = "carePlans.medical" // Aerztlich
* item[=].item[=].text = "Ärztlicher Bericht"

* item[=].item[+].linkId = "carePlans.nursing" // Pflege
* item[=].item[=].text = "Pflegebericht"

/* ---------------------------------------------------------------------------
Berichte
*/
* item[+].linkId = "attachments"

* item[=].item[+].linkId = "attachtment.title"  
* item[=].item[=].answer[+].valueString = "EKG_09062021.pdf"

* item[=].item[+].linkId = "attachment.note"  
* item[=].item[=].answer[+].valueString = "EKG vom 9.6.2021"

* item[=].item[+].linkId = "attachment.data"  
* item[=].item[=].answer[+].valueString = "324nnvsdafw3qwef3"

// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"

* item[=].item[+].linkId = "note.text"
* item[=].item[=].text = "Text" 
* item[=].item[=].answer[+].valueString = "Patient ist sehr ängstlich"
