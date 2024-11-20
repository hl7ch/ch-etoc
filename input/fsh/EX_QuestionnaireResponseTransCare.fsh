Instance: QuestionnaireResponseEtocTransCare
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponseEtoc für eine Überweisung"
Description: "Example for QuestionnaireResponse for a transition of care letter"
* questionnaire = "http://fhir.ch/ig/ch-etoc/Questionnaire/QuestionnaireEtoc"
* status = #completed

// ---------- Order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"
* item[=].item[+].linkId = "order.authoredOn"
* item[=].item[=].text = "Datum/Zeit der Auftragserteilung"
* item[=].item[=].answer.valueDateTime = "2024-11-17T11:28:17+01:00"

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
* item[=].item[=].item[=].item[=].answer.valueString = "Rderfiller"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Otto"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 412 00 99"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "otto.rderfiller@happyhosptial.ch"

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
* item[=].item[=].item[=].item[=].answer.valueString = "Rderplacer"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Ottilie"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "ottilie.rderplacer@happydoctors.ch"

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#urgent

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
* item[=].item[=].item[=].answer.valueString = "Rderfiller"

* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Otto"

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
* item[=].item[=].item[=].answer.valueString = "otto.rderfiller@happyhospital.ch"

* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"

* item[=].item[=].item[+].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Spital Happyhospital"

* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[0].valueString = "Happystrasse 14"
//* item[=].item[=].item[=].answer[1].valueString = "Postfach 14"

* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Initiator: Person/organization who initiated this order/referral ----------
* item[+].linkId = "initiator"
* item[=].text = "Initiant dieser Anmeldung"

* item[=].item[+].linkId = "initiator.legalrelation"
* item[=].item[=].text = "Juristische Beziehung zum Patienten"
//* item[=].item[=].answer.valueCoding = SCT#373068000 "Nicht definiert"

* item[=].item[+].linkId = "initiator.personalrelation"
* item[=].item[=].text = "Persönliche Beziehung zum Patienten?"
// * item[=].item[=].answer.valueCoding = http://snomed.info/sct#65616008 "Sohn"

* item[=].item[+].linkId = "initiator.relatedPerson"
//* item[=].item[=].text = "Andere Person"

* item[=].item[=].item[+].linkId = "initiator.relatedPerson.familyName"
* item[=].item[=].item[=].text = "Name"
//* item[=].item[=].item[=].answer.valueString = "Leidend"

* item[=].item[=].item[+].linkId = "initiator.relatedPerson.givenName"
* item[=].item[=].item[=].text = "Vorname"
//* item[=].item[=].item[=].answer.valueString = "Fritz"

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

* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].answer.valueString = "11.22.33.4567"

* item[=].item[+].linkId = "patient.localPidDomain"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].answer.valueString = "urn:oid:2.999.1.2.3.4"

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1970-03-14"

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = AdministrativeGender#female

* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].answer.valueCoding = EchMaritalStatus#3 "verwitwet"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "079 979 79 79"

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "susanna@ufferer.ch"

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer[+].valueString = "Musterweg 6a"
//* item[=].item[=].answer[+].valueString = "6a"

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "8000"

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Zürich"

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "Schweiz"

* item[=].item[+].linkId = "patient.languageOfCorrespondence"
* item[=].item[=].text = "Korrespondenzsprache"
//* item[=].item[=].answer.valueCoding =  urn:ietf:bcp:47#de-CH
* item[=].item[=].answer.valueCoding =  Language#de-CH "German (Switzerland)"

// ---------- Patient Contact Person: The principle target of a particular Form Content is one patient ----------
* item[=].item[+].linkId = "patient.contactperson"
* item[=].item[=].text = "Kontaktperson"

* item[=].item[=].item[+].linkId = "patient.contactperson.relationship"
* item[=].item[=].item[=].text = "Beziehung"
* item[=].item[=].item[=].answer.valueString = "Guter Freund"

* item[=].item[=].item[+].linkId = "patient.contactperson.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Freund"

* item[=].item[=].item[+].linkId = "patient.contactperson.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Max"

* item[=].item[=].item[+].linkId = "patient.contactperson.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "079 111 22 33"

* item[=].item[=].item[+].linkId = "patient.contactperson.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "max@freund.ch"

// ---------- Family Doctor:
* item[=].item[+].linkId = "familydoctor"
* item[=].item[=].text = "Hausarzt"

* item[=].item[=].item[+].linkId = "familydoctor.practitioner"
* item[=].item[=].item[=].text = "Hausarzt Person"

* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.givenName"
* item[=].item[=].item[=].item[=].answer.valueString = "Sabine"

// ---------- Encounter Class (Ambulant / Satinär / Notfall) & Zimmerkategorie ----------
* item[+].linkId = "requestedEncounter"
* item[=].text = "Patientenaufnahme"

* item[=].item[+].linkId = "requestedEncounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item[=].answer.valueCoding = V3ActCode#EMER


* item[=].item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].item[=].text = "Zimmerkategorie"
* item[=].item[=].answer.valueCoding = ChCoreCSEncounterType#2 "halbprivat"

// ---------- Coverage (Kostenträger) ----------

* item[+].linkId = "coverage"
* item[=].text = "Kostenträger"

// KVG
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].text = "Krankenkasse (nach KVG)"

* item[=].item[=].item[+].linkId = "coverage.kvg.name"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = "Sanitas"

* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].answer.valueString = "80756015090002647590"

// ---------- Sender (Absender) ----------
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
* item[=].item[=].item[=].item[=].answer.valueString = "7601000618627"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].answer.valueString = "A123321"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "ottilie.rderplacer@happydoctors.ch"

* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Happydoctors"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer[+].valueString = "Happystrasse 133"
//* item[=].item[=].item[=].item[=].answer[+].valueString = "Haus C"

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
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 12"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "d.ataenterer@happydoctors.ch"

// ---------- Copy Receiver ----------
* item[+].linkId = "receiverCopy"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"

* item[=].item[+].linkId = "receiverCopy.practitionerRole"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"

* item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Sabine"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "sabine.meier@praxisseeblick.ch"

* item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Seeblick"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = "Seestrasse 133"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"

* item[=].item[+].linkId = "receiverCopy.patient"
* item[=].item[=].text = "Patient selbst"
* item[=].item[=].answer.valueBoolean = false


// -------- Antecedent Episode of Care ------


* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"

* item[=].item[+].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].text = "Von"
* item[=].item[=].answer.valueDateTime = "2024-10-22"

* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].text = "Bis"
//* item[=].item[=].answer.valueDateTime = "2023-05-27"

* item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization"
* item[=].item[=].text = "Spital /Heim"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Pflegeheim Bergblick"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Bergblickweg 33"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// -------- Appointment ------
* item[+].linkId = "appointment"
* item[=].text = "Ort und Zeit"
* item[=].item[+].linkId = "appointment.location"
* item[=].item[=].text = "Ort"
* item[=].item[=].item[+].linkId = "appointment.location.name"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Notfall Spital Happyhospital"

* item[=].item[=].item[+].linkId = "appointment.location.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[0].valueString = "Seestrasse 133"
//* item[=].item[=].item[=].answer[1].valueString = "Haus C"

* item[=].item[=].item[+].linkId = "appointment.location.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "appointment.location.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "appointment.location.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

* item[=].item[+].linkId = "appointment.requestedPeriod"
* item[=].item[=].text = "Datum und Zeit"

* item[=].item[=].item[+].linkId = "appointment.requestedPeriod.start"
* item[=].item[=].item[=].text = "Von"
* item[=].item[=].item[=].answer.valueDateTime = "2024-11-17"

* item[=].item[=].item[+].linkId = "appointment.requestedPeriod.end"
* item[=].item[=].item[=].text = "Bis"
//* item[=].item[=].item[=].answer.valueDateTime = "2024-11-25"

* item[=].item[+].linkId = "appointment.status"
* item[=].item[=].answer[+].valueCoding = AppointmentStatus#pending

// -------- Consent ------
* item[+].linkId = "consent"
* item[=].text = "Einverständniserklärung"

* item[=].item[+].linkId = "patient.consent.statement"
* item[=].item[=].text = "Ist der Patient über die Anmeldung informiert und explizit einverstanden?"
* item[=].item[=].answer[+].valueCoding = ChOrfConsentStatus#Other "Other situation such as 'implicit agreement', 'agreed by legal guardian' etc."
* item[=].item[=].answer[=].item[+].linkId = "patient.consent.statement.note"
* item[=].item[=].answer[=].item[=].text = "Anmerkung"
* item[=].item[=].answer[=].item[=].answer.valueString = "Voraussichtlich einverstanden; Sohn wird die Situation beim nä. Besuch mit Pat. besprechen"

// ============ Kerninhaltes von eTOC ==============================

//------------------------------------------------------------------------
//Purpose

* item[+].linkId = "purpose"
* item[=].text = "Zweck?"

* item[=].item[+].linkId = "purpose.aim"
* item[=].item[=].text = "Procedere / Behandlung / Sonstiges?"                
* item[=].item[=].answer[+].valueString = "Abklärung akuter Thoraxschmerzen"

* item[=].item[=].answer[=].item[+].linkId = "purpose.aim.detail"
* item[=].item[=].answer[=].item[=].text = "Procedere / Behandlung im Detail?"                
* item[=].item[=].answer[=].item[=].answer[+].valueString = "Abklärung kardiale Ursache?"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "Abklärung Ösophagitis?"

* item[=].item[+].linkId = "reason.statement"
* item[=].item[=].text = "Begründung"  
* item[=].item[=].answer.valueString = "Vorderwandinfarkt"

* item[=].item[+].linkId = "reason.statement"
* item[=].item[=].text = "Begründung"  
* item[=].item[=].answer.valueString = "Reflux bekannt"

//----------------------------------------------------------------------
//Diagnosis and Clinical Findings

* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"

* item[=].item[+].linkId = "diagnosisList.primaryDiagnosis"
* item[=].item[=].text = "Hauptdiagnosen / Probleme"

* item[=].item[=].item[+].linkId = "diagnosisList.primaryDiagnosis.item"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].item[=].text = "Hauptdiagnose / Problem"
* item[=].item[=].item[=].answer[+].valueString = "St. nach Bypass 2017"

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"
* item[=].item[=].text = "Nebendiagnosen / Probleme"

* item[=].item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis.item"  
* item[=].item[=].item[=].text = "Nebendiagnose / Problem"
* item[=].item[=].item[=].answer[+].valueString = "Hypertonie (Syst um 180 mm HG)"
* item[=].item[=].item[=].answer[+].valueString = "Hypercholesterinämie seit Jahren"

* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo"
* item[=].item[=].text = "Grösse (cm)"   

* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo"
* item[=].item[=].text = "Gewicht (kg)"   

* item[=].item[+].linkId = "diagnosisList.pregnancy"

* item[=].item[=].item[+].linkId = "diagnosisList.pregnancy.expectedDeliveryDate"

//----------------------------------------------------------------------
//Anamnesis

* item[+].linkId = "anamnesis" 
* item[=].text = "Anamnese"

* item[=].item[+].linkId = "anamnesis.historyofillnesses"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo"  
* item[=].item[=].text = "Bisherige Krankheiten und Unfälle" 
* item[=].item[=].answer[+].valueString = "Endokarditis 1999"

* item[=].item[+].linkId = "anamnesis.historyofprocedures"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo"  
* item[=].item[=].text = "Bisherige Abklärungen und Eingriffe"   

* item[=].item[+].linkId = "anamnesis.devices"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo"  
* item[=].item[=].text = "Implantate, Schrittmacher, Neurostimulatoren etc."   

* item[=].item[+].linkId = "anamnesis.socialhistory"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo"  
* item[=].item[=].text = "Sozialanamnese"  

* item[=].item[+].linkId = "anamnesis.functionalStatus"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo"  
* item[=].item[=].text = "Funktion, Behinderungen"   

/* ---------------------------------------------------------------------------
Medication
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
Allergies and Intolerances
*/
* item[+].linkId = "allergyIntolerance"
* item[=].text = "Allergien und Intoleranzen"

* item[=].item[+].linkId = "allergyIntolerance.status"
* item[=].item[=].text = "Bekannte Allergien / Intoleranzen"

/* ---------------------------------------------------------------------------
Immunizationstatus
*/
* item[+].linkId = "immunizationStatus"
* item[=].text = "Impfstatus"

* item[=].item[+].linkId = "immunizationStatus.status"
* item[=].item[=].text = "Bisherige Impfungen"

/* ---------------------------------------------------------------------------
Lab
*/
* item[+].linkId = "lab"
* item[=].text = "Labor"

* item[=].item[+].linkId = "lab.result"
* item[=].item[=].text = "Laborresultate"

/* ---------------------------------------------------------------------------
Pathology
*/
* item[+].linkId = "pathology"
* item[=].text = "Pathologie"

* item[=].item[+].linkId = "pathology.result"
* item[=].item[=].text = "Pathologiebefunde"

/* ---------------------------------------------------------------------------
Imaging
*/
* item[+].linkId = "imaging"
* item[=].text = "Bildgebung"

* item[=].item[+].linkId = "imaging.result"
* item[=].item[=].text = "Befund aus der Bildgebung"

/* ---------------------------------------------------------------------------
Cardiology
*/
* item[+].linkId = "cardiology"
* item[=].text = "Kardiologie"

* item[=].item[+].linkId = "cardiology.result"
* item[=].item[=].text = "EKG / Kardiologische Befunde"
* item[=].item[=].answer.valueString = "ST-Hebungen V1-V5"

/* ---------------------------------------------------------------------------
Attachment:
*/
* item[+].linkId = "attachment"
* item[=].text = "Anhang"

* item[=].item[+].linkId = "attachedFile"  
* item[=].item[=].text = "Datei"
* item[=].item[=].answer[+].valueAttachment.contentType = MimeType#application/pdf
* item[=].item[=].answer[=].valueAttachment.data = "VGVzdCBCZWZ1bmQgTm9uIERpY29t" // Encoded in base64

* item[=].item[=].answer[=].item[+].linkId = "attachedFile.description"  
* item[=].item[=].answer[=].item[=].text = "Beschreibung"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "Befund Notfall-Rx nach Sturz"

// -------- ServiceRequest Note ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"

* item[=].item[+].linkId = "note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].answer[+].valueString = "Patientin ist sehr ängstlich"


