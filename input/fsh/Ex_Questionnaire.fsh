Instance: QuestionnaireEtoc
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Electronic Transition of Care"
Description: "Example for Questionnaire"
Usage: #example

* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[0].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[0].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#user "User"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Practitioner
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The practitioner that is to be used to pre-populate the form"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-familydoctor|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-purpose|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-diagnosislist|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-anamnesis|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-medication|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-allergyIntolerance|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-immunization|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-lab|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-pathology|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-imaging|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-cardiology|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-careplan|1.1.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-etoc/Questionnaire/ch-etoc-module-attachment|1.1.0"
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/QuestionnaireEtoc"
* version = "1.1.0-assembled"
* name = "QuestionnaireEtoc"
* title = "QuestionnaireEtoc"
* status = #active
* subjectType = #Patient
* date = "2022-08-27"
* publisher = "HL7 Switzerland"
* contact.name = "Juerg P. Bleuer"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC-BY-SA-4.0"
* item[0].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "order.placerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:precedentDocument"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:urgentNoficationContactForThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'order.notificationContactDocument.practitioner.'"
* item[=].item[=].item.linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:urgentNoficationContactForTheResponseToThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'order.notificationContactDocumentResponse.practitioner.'"
* item[=].item[=].item.linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://hl7.org/fhir/request-priority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group
* item[=].item[0].linkId = "receiver.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Empfangende Person"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'receiver.organization.'"
* item[=].item[=].linkId = "receiver.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initiator"
* item[=].text = "Initiant dieser Anmeldung"
* item[=].type = #group
* item[=].item[0].linkId = "initiator.legalguardian"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initator"
* item[=].item[=].text = "Juristische Beziehung zum Patienten"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://snomed.info/sct#373068000 "Nicht definiert"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#58626002 "Gesetzlicher Vertreter"
* item[=].item[+].linkId = "initiator.initiatorrelation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initator"
* item[=].item[=].text = "Persönliche Beziehung zum Patienten?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://snomed.info/sct#6089001 "Tochter"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#5616008 "Sohn"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#127849001 "Ehemann"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#127850001 "Ehefrau"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#394921008 "Partner (eingetragene  Partnerschaft)"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#70924004 "Bruder"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#27733009 "Schwester"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#72705000 "Mutter"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#66839005 "Vater"
* item[=].item[=].answerOption[+].valueCoding = http://snomed.info/sct#48385004 "Bekannt"
* item[=].item[+].linkId = "initiator.practitionerRole"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].item[=].type = #group
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'initiator.practitionerRole.practitioner.'"
* item[=].item[=].item[=].linkId = "initiator.practitionerRole.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "initiator.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'initiator.practitionerRole.organization.'"
* item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "initiator.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "initiator.relatedPerson"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].item[=].text = "Andere Person"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'initiator.relatedPerson.'"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.familyName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "initiator.relatedPerson.givenName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].text = "Vorame"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "initiator.relatedPerson.phone"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "initiator.relatedPerson.email"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "linkIdPrefix"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "address"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.address"
* item[=].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='official').family"
* item[=].item[=].linkId = "patient.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='maiden').family"
* item[=].item[=].linkId = "patient.maidenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='official').given"
* item[=].item[=].linkId = "patient.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.identifier.where(type.coding.where(system='http://terminology.hl7.org/CodeSystem/v2-0203' and code='MR').exists()).value"
* item[=].item[=].linkId = "patient.localPid"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.value"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "patient.localPidDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.system"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.birthDate"
* item[=].item[=].linkId = "patient.birthDate"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].type = #date
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%questionnaire.repeat(item).where(linkId='patient.gender').answerOption.valueCoding.where(code=%patient.gender)"
* item[=].item[=].linkId = "patient.gender"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#other "Anderes"
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.maritalStatus"
* item[=].item[=].linkId = "patient.maritalStatus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#1 "ledig"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#2 "verheiratet"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#3 "verwitwet"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#4 "geschieden"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#5 "unverheiratet"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#7 "aufgelöste Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#9 "unbekannt"
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.telecom.where(system='phone').value"
* item[=].item[=].linkId = "patient.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.telecom.where(system='email').value"
* item[=].item[=].linkId = "patient.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.communication.where(preferred=true).language.coding"
* item[=].item[=].linkId = "patient.languageOfCorrespondence"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.communication:languageOfCorrespondence"
* item[=].item[=].text = "Korrespondenzsprache"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.languageCode"
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "contact"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.contact"
* item[=].item[=].linkId = "patient.contactperson"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact"
* item[=].item[=].text = "Kontaktperson"
* item[=].item[=].type = #group
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.relationship.text"
* item[=].item[=].item[=].linkId = "patient.contactperson.relationship"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.relationship.text"
* item[=].item[=].item[=].text = "Beziehung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.name.family"
* item[=].item[=].item[=].linkId = "patient.contactperson.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.name.given"
* item[=].item[=].item[=].linkId = "patient.contactperson.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.telecom.where(system='phone').value"
* item[=].item[=].item[=].linkId = "patient.contactperson.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.telecom.where(system='email').value"
* item[=].item[=].item[=].linkId = "patient.contactperson.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "familydoctor"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.generalPractitioner"
* item[=].item[=].text = "Hausarzt"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "familydoctor.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Hausarzt Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "familydoctor.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.zsr"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'familydoctor.organization.'"
* item[=].item[=].item[=].linkId = "familydoctor.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Hausarzt Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "familydoctor.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "familydoctor.organization.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group
* item[=].item[0].linkId = "requestedEncounter.class"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulant"
* item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "Stationär"
* item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "Notfall"
* item[=].item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.extension:desiredAccommodation"
* item[=].item[=].text = "Zimmerkategorie"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype#1 "allgemein"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype#2 "halbprivat"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype#3 "privat"
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group
* item[=].item[0].linkId = "coverage.beneficiary"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.beneficiary"
* item[=].item[=].text = "Begünstigter (Patient)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.beneficiary.ahvn13"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:AHVN13"
* item[=].item[=].item.text = "AHV-Nr. des Patienten"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Krankenkasse (nach KVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.kvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.uvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Unfallversicherung (nach UVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.uvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.uvg.claimNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Schadennummer"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.vvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Zusatzversicherung (nach VVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.vvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.vvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.iv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Invalidenversicherung (IV)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.iv.verfuegungsnummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "IV-Verfügungsnummer"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.mv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Militärversicherung (MV)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.mv.versichertennummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "MV-Versichertennummer"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.self"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Selbstzahler"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.self.patient"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Patient selbst"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "coverage.self.patientRelatedPerson"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Andere Person"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].enableWhen.question = "coverage.self.patient"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'coverage.self.relatedPerson.'"
* item[=].item[=].item[=].linkId = "coverage.self.relatedPerson"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Andere Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "coverage.self.patientRelatedPerson"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[0].linkId = "coverage.self.relatedPerson.familyName"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.givenName"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.phone"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.email"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.other"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Anderer Kostenträger"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.other.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name des Kostenträgers"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.other.id"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Beliebige ID"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.other.id.note"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier.type.text"
* item[=].item[=].item[=].text = "Bemerkung zur ID"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderPractitionerRoles"
* item[=].item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].item[=].extension[=].valueExpression.expression = "PractitionerRole?practitioner={{%user.id}}"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderPractitionerRole"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%senderPractitionerRoles.entry[0].resource"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderOrganizations"
* item[=].item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].item[=].extension[=].valueExpression.expression = "Organization?_id={{%senderPractitionerRole.organization.reference}}"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderOrganization"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%senderOrganizations.entry[0].resource"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "address"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%senderOrganization.address"
* item[=].item[=].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.name.family"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.name.given"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.identifier.where(system='urn:oid:2.51.1.3').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.identifier.where(system='urn:oid:2.16.756.5.30.1.123.100.2.1.1').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.telecom.where(system='phone').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.telecom.where(system='email').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'sender.author.organization.'"
* item[=].item[=].item[=].linkId = "sender.author.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%senderOrganization.name"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%senderOrganization.identifier.where(system='urn:oid:2.51.1.3').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:dataEnterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].type = #group
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'sender.dataenterer.practitioner.'"
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group
* item[=].item[0].linkId = "receiverCopy.practitionerRole"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.practitioner.'"
* item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.organization.'"
* item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "receiverCopy.patient"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient"
* item[=].item[=].text = "Patient selbst"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "receiverCopy.relatedPerson"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].item[=].text = "Andere Person"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.relatedPerson.'"
* item[=].item[=].item[=].linkId = "receiverCopy.relatedPerson.familyName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.givenName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].text = "Vorame"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.phone"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.email"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].linkId = "receiverCopy.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].linkId = "receiverCopy.relatedPerson.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].linkId = "receiverCopy.relatedPerson.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].linkId = "receiverCopy.relatedPerson.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"
* item[=].type = #group
* item[=].item[0].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Von"
* item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].type = #dateTime
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'antecedentEpisodeOfCare.organization.'"
* item[=].item[=].linkId = "antecedentEpisodeOfCare.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.organization"
* item[=].item[=].text = "Spital /Heim"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "antecedentEpisodeOfCare.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'appointment.location.'"
* item[=].item[=].linkId = "appointment.location"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.participant.actor"
* item[=].item[=].text = "Ort der Durchführung"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "appointment.location.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.name"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "appointment.location.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].linkId = "appointment.location.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].linkId = "appointment.location.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].linkId = "appointment.location.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].linkId = "appointment.location.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "appointment.requestedPeriod"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod"
* item[=].item[=].text = "Datum und Zeit, wann der Termin bevorzugt geplant werden soll"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "appointment.requestedPeriod.start"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.start"
* item[=].item[=].item[=].text = "Von"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[+].linkId = "appointment.requestedPeriod.end"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.end"
* item[=].item[=].item[=].text = "Bis"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "appointment.status"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.status"
* item[=].item[=].text = "Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = http://hl7.org/fhir/appointmentstatus#proposed "Wunsch des Patienten (vorgeschlagen)"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/appointmentstatus#pending "Vom Patienten bestätigt, aber vom Leistungserbringer noch nicht (ausstehend)"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/appointmentstatus#booked "Vom Patienten und Leistungserbringer bestätigt (gebucht)"
* item[=].item[+].linkId = "appointment.patientInstruction"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.patientInstruction"
* item[=].item[=].text = "Patienteninformation für diesen Termin"
* item[=].item[=].type = #string
* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:patientConsent"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group
* item[=].item.linkId = "patient.consent.statement"
* item[=].item.text = "Ist der Patient über die Anmeldung informiert und explizit einverstanden?"
* item[=].item.type = #choice
* item[=].item.answerOption[0].valueCoding = http://fhir.ch/ig/ch-orf/CodeSystem/ch-orf-cs-consentstatus#ExplicitAgreement "Patient is informed and has explicitly agreed"
* item[=].item.answerOption[+].valueCoding = http://fhir.ch/ig/ch-orf/CodeSystem/ch-orf-cs-consentstatus#Other "Other situation such as 'implicit agreement', 'agreed by legal guardian'  etc."
* item[=].item.item.linkId = "patient.consent.statement.note"
* item[=].item.item.text = "Anmerkung"
* item[=].item.item.type = #string
* item[+].linkId = "purpose"
* item[=].text = "Wozu wird der Patient zugewiesen?"
* item[=].type = #group
* item[=].item[0].linkId = "purpose.aim"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.code.text"
* item[=].item[=].text = "Procedere / Behandlung"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "reason.statement"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonCode.text"
* item[=].item[=].text = "Begründung"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[+].linkId = "diagnosislist"
* item[=].text = "Diagnosen und Befunde"
* item[=].type = #group
* item[=].item[0].linkId = "diagnosisList.primaryDiagnosis"
* item[=].item[=].text = "Hauptdiagnosen / Probleme"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "diagnosisList.primaryDiagnosis.item"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].item.text = "Hauptdiagnose / Problem"
* item[=].item[=].item.type = #string
* item[=].item[=].item.repeats = true
* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"
* item[=].item[=].text = "Nebendiagnosen / Probleme"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "diagnosisList.secondaryDiagnosis.item"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:diagnosis"
* item[=].item[=].item.text = "Nebendiagnose / Problem"
* item[=].item[=].item.type = #string
* item[=].item[=].item.repeats = true
* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyHeight"
* item[=].item[=].text = "Grösse (cm)"
* item[=].item[=].type = #quantity
* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:bodyWeight"
* item[=].item[=].text = "Gewicht (kg)"
* item[=].item[=].type = #quantity
* item[=].item[+].linkId = "diagnosisList.pregnancy"
* item[=].item[=].text = "Schwangerschaft"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "diagnosisList.pregnancy.present"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].item[=].text = "Schwanger"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "diagnosisList.pregnancy.expectedDeliveryDate"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pregnancy"
* item[=].item[=].item[=].text = "Erwarteter Geburtstermin"
* item[=].item[=].item[=].type = #dateTime
* item[+].linkId = "anamnesis"
* item[=].text = "Anamnese"
* item[=].type = #group
* item[=].item[0].linkId = "anamnesis.historyofillnesses"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:historyofIllnesses"
* item[=].item[=].text = "Bisherige Krankheiten und Unfälle"
* item[=].item[=].type = #text
* item[=].item[+].linkId = "anamnesis.historyofprocedures"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:historyofProcedures"
* item[=].item[=].text = "Bisherige Abklärungen und Eingriffe"
* item[=].item[=].type = #text
* item[=].item[+].linkId = "anamnesis.device"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:devices"
* item[=].item[=].text = "Implantate, Schrittmacher, Neurostimulatoren etc."
* item[=].item[=].type = #text
* item[=].item[+].linkId = "anamnesis.socialhistory"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:socialHistory"
* item[=].item[=].text = "Sozialanamnese"
* item[=].item[=].type = #text
* item[=].item[+].linkId = "anamnesis.functionalStatus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:functionalStatus"
* item[=].item[=].text = "Funktion, Behinderungen"
* item[=].item[=].type = #text
* item[+].linkId = "medication"
* item[=].text = "Medikation"
* item[=].type = #group
* item[=].item.linkId = "medication.medicationstatement"
* item[=].item.definition = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medicationstatement#MedicationStatement"
* item[=].item.text = "Medikation"
* item[=].item.type = #group
* item[=].item.repeats = true
* item[=].item.item[0].linkId = "medication.medicationstatement.medication"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medication#Medication.code.text"
* item[=].item.item[=].text = "Medikament"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "medication.medicationstatement.dosage"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medicationstatement#MedicationStatement.dosage:nonstructured"
* item[=].item.item[=].text = "Dosierung"
* item[=].item.item[=].type = #string
* item[+].linkId = "allergyIntolerance"
* item[=].text = "Allergien und Intoleranzen"
* item[=].type = #group
* item[=].item.linkId = "allergyIntolerance.status"
* item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:allergiesIntolerances"
* item[=].item.text = "Allergien / Intoleranzen"
* item[=].item.type = #text
* item[+].linkId = "immunization"
* item[=].text = "Allergien und Intoleranzen"
* item[=].type = #group
* item[=].item.linkId = "immunization.status"
* item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:immunizations"
* item[=].item.text = "Bisherige Impfungen"
* item[=].item.type = #text
* item[+].linkId = "lab"
* item[=].text = "Labor"
* item[=].type = #group
* item[=].item.linkId = "lab.result"
* item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:labresults"
* item[=].item.text = "Laborresultat"
* item[=].item.type = #string
* item[=].item.repeats = true
* item[+].linkId = "pathology"
* item[=].text = "Pathologie"
* item[=].type = #group
* item[=].item.linkId = "pathology.result"
* item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:pathologyresults"
* item[=].item.text = "Pathologiebefunde"
* item[=].item.type = #text
* item[+].linkId = "imaging"
* item[=].text = "Bildgebung"
* item[=].type = #group
* item[=].item.linkId = "imaging.result"
* item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:imagingresults"
* item[=].item.text = "Befunde aus der Bildgebung"
* item[=].item.type = #text
* item[+].linkId = "cardiology"
* item[=].text = "cardiology"
* item[=].type = #group
* item[=].item.linkId = "cardiology.result"
* item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-servicerequest#ServiceRequest.supportingInfo:cardiologyresults"
* item[=].item.text = "EKG / Kardiologische Befunde"
* item[=].item.type = #text
* item[+].linkId = "careplan"
* item[=].text = "Therapie / Pflegeplanung"
* item[=].type = #group
* item[=].item.linkId = "careplan.title"
* item[=].item.definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-careplan#Media.content.title"
* item[=].item.text = "Dateiname und -endung der angehängten Datei (z.B. \"Pflegeplan_12032022.pdf\")"
* item[=].item.type = #string
* item[=].item.repeats = true
* item[=].item.item[0].linkId = "careplan.note"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-careplan#Media.content.annotation"
* item[=].item.item[=].text = "Anmerkung"
* item[=].item.item[=].type = #text
* item[=].item.item[+].linkId = "careplan.data"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-careplan#Media.content.data"
* item[=].item.item[=].text = "Daten"
* item[=].item.item[=].type = #string
* item[+].linkId = "attachment"
* item[=].text = "Anhang"
* item[=].type = #group
* item[=].item.linkId = "attachment.title"
* item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreferencet#content.attachment.title"
* item[=].item.text = "Dateiname und -endung der angehängten Datei (z.B. \"shoulder_re_F_Muster_12021988.pdf\")"
* item[=].item.type = #string
* item[=].item.repeats = true
/*
* item[=].item.item[0].linkId = "attachment.description"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference#description"
* item[=].item.item[=].text = "Anmerkung"
* item[=].item.item[=].type = #text
*/
* item[=].item.item[+].linkId = "attachment.data"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference#content.attachment.data"
* item[=].item.item[=].text = "Daten"
* item[=].item.item[=].type = #string
/* item[=].item.item[+].linkId = "attachment.contenttype"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference#content.attacchment.contentType"
* item[=].item.item[=].text = "Datentyp"
* item[=].item.item[=].type = #code
*/
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].item.linkId = "note.text"
* item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item.text = "Kommentar"
* item[=].item.type = #string