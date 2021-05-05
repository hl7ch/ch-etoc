Instance: QuestionnaireEtoc
InstanceOf: ChOrfQuestionnaire
Title: "Questionniaire eTOC Order"
Description: "Example for Questionnaire"

/* -------------------------------------------------------------------------------------------------------
Nur absolute "Required" sind markiert; es wird dann noch relative Required geben
Bsp: Fragestellung ist required ausser bei Bestllung alter Bider
   -------------------------------------------------------------------------------------------------------*/


/*
* meta.profile[0] = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-questionnaire"
* meta.profile[1] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[2] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension.valueCanonical = "http://fhir.ch/ig/ch-etoc/StructureMap/OrfQrToBundle"
*/
* url = "http://fhir.ch/ig/ch-etoc/QuestionnaireEtoc"
* name = "QuestionnaireEtoc"

* subjectType = #Patient
* status = #active
* date = "2021-02-24"

// order (Auftrag)
* item[0].linkId = "order"
* item[0].text = "Auftrag"
* item[0].type = #group
* item[0].required = true

* item[0].item[0].linkId = "order.placerOrderIdentifier"
* item[0].item[0].text = "Auftragsnummer des Auftraggebers"
* item[0].item[0].type = #string
* item[0].item[0].required = true

* item[0].item[1].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[0].item[1].extension.valueBoolean = true
* item[0].item[1].linkId = "order.placerOrderIdentifierDomain"
* item[0].item[1].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[0].item[1].type = #string
* item[0].item[1].required = true

// patient (Patient) ----------------------------
// patient is not required because patient may not be known e.g. anonymized in case of research or name unknown in emergency
* item[1].linkId = "patient"
* item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* item[1].text = "Patient"
* item[1].type = #group

* item[1].item[0].linkId = "patient.familyName"
* item[1].item[0].text = "Name"
* item[1].item[0].type = #string

* item[1].item[1].linkId = "patient.maidenName"   // NEU, anschliessend neu numeriert
* item[1].item[1].text = "Lediger Name"
* item[1].item[1].type = #string

* item[1].item[2].linkId = "patient.givenName"
* item[1].item[2].text = "Vorname"
* item[1].item[2].type = #string

* item[1].item[3].linkId = "patient.birthDate"
* item[1].item[3].text = "Geburtsdatum"
* item[1].item[3].type = #date

* item[1].item[4].linkId = "patient.gender"
* item[1].item[4].text = "Geschlecht"
* item[1].item[4].type = #string

* item[1].item[5].linkId = "patient.phone"
* item[1].item[5].text = "Telefon"
* item[1].item[5].type = #string

* item[1].item[4].linkId = "patient.email"
* item[1].item[4].text = "E-Mail"
* item[1].item[4].type = #string

* item[1].item[5].linkId = "patient.streetAddressLine"
* item[1].item[5].text = "Strasse, Hausnummer, Postfach etc."
* item[1].item[5].type = #string
* item[1].item[5].repeats = true

* item[1].item[6].linkId = "patient.postalCode"
* item[1].item[6].text = "PLZ"
* item[1].item[6].type = #string

* item[1].item[7].linkId = "patient.city"
* item[1].item[7].text = "Ort"
* item[1].item[7].type = #string

* item[1].item[8].linkId = "patient.country"
* item[1].item[8].text = "Land"
* item[1].item[8].type = #string

// sender (Auftraggeber)------------------------------
* item[2].linkId = "sender"
* item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].text = "Auftraggeber"
* item[2].type = #group
* item[2].required = true

/* item[2].item[0].linkId = "sender.author.practionerrole"
* item[2].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[0].text = ""
* item[2].item[0].type = #group
* item[2].item[0].required = true
*/
* item[2].item[0].linkId = "sender.author.practitioner"
* item[2].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[0].text = "Verantwortliche Person"
* item[2].item[0].type = #group
* item[2].item[0].required = true

* item[2].item[0].item[0].linkId = "sender.author.title"
* item[2].item[0].item[0].text = "Titel"
* item[2].item[0].item[0].type = #string


* item[2].item[0].item[1].linkId = "sender.author.familyName"
* item[2].item[0].item[1].text = "Name"
* item[2].item[0].item[1].type = #string
* item[2].item[0].item[1].required = true

* item[2].item[0].item[2].linkId = "sender.author.givenName"
* item[2].item[0].item[2].text = "Vorname"
* item[2].item[0].item[2].type = #string
* item[2].item[0].item[2].required = true

* item[2].item[0].item[3].linkId = "sender.author.email"
* item[2].item[0].item[3].text = "E-Mail"
* item[2].item[0].item[3].type = #string
* item[2].item[0].item[3].required = true

* item[2].item[0].item[4].linkId = "sender.author.email"
* item[2].item[0].item[4].text = "Phone"
* item[2].item[0].item[4].type = #string
* item[2].item[0].item[4].required = true

// sender (Auftraggeber-Dataenterer)
/*
* item[2].item[1].linkId = "sender.dataenterer.practionerrole"
* item[2].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[1].text = "Sekretariat-Rolle"
* item[2].item[1].type = #group
*/
* item[2].item[1].linkId = "sender.dataenterer.practitioner"
* item[2].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[1].text = "Sekretariat"
* item[2].item[1].type = #group

* item[2].item[1].item[0].linkId = "sender.dataenterer.familyName"
* item[2].item[1].item[0].text = "Name"
* item[2].item[1].item[0].type = #string

* item[2].item[1].item[1].linkId = "sender.dataenterer.givenName"
* item[2].item[1].item[1].text = "Vorname"
* item[2].item[1].item[1].type = #string

* item[2].item[1].item[2].linkId = "sender.dataenterer.email"
* item[2].item[1].item[2].text = "E-Mail"
* item[2].item[1].item[2].type = #string

* item[2].item[1].item[3].linkId = "sender.dataenterer.email"
* item[2].item[1].item[3].text = "Phone"
* item[2].item[1].item[3].type = #string

// sender (Auftraggeber-SofortInfo bei Antwort)

/* item[2].item[2].linkId = "urgentforresponse"
* item[2].item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-composition"
* item[2].item[2].text = "Bei Eintreffen der Antwort sofort benachtichtigen"
* item[2].item[2].type = #group
*/
* item[2].item[2].linkId = "urgentforresponse.practitioner"
* item[2].item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[2].text = "Bei Eintreffen der Antwort sofort benachtichtigen"
* item[2].item[2].type = #group

* item[2].item[2].item[0].linkId = "rgentforresponse.person.familyName"
* item[2].item[2].item[0].text = "Titel"
* item[2].item[2].item[0].type = #string

* item[2].item[2].item[1].linkId = "rgentforresponse.person.familyName"
* item[2].item[2].item[1].text = "Name"
* item[2].item[2].item[1].type = #string

* item[2].item[2].item[2].linkId = "rgentforresponse.person.givenName"
* item[2].item[2].item[2].text = "Vorname"
* item[2].item[2].item[2].type = #string

// sender (Auftraggeber-Institution)
/* item[2].item[3].linkId = "sender"
* item[2].item[3].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[3].text = "Auftraggemer"
* item[2].item[3].type = #group
* item[2].item[3].required = true
*/
* item[2].item[3].linkId = "sender.organization"
* item[2].item[3].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[2].item[3].text = "Institution"
* item[2].item[3].type = #group
* item[2].item[3].required = true

* item[2].item[3].item[0].linkId = "sender.organiszation.name"
* item[2].item[3].item[0].text = "Name"
* item[2].item[3].item[0].type = #string
* item[2].item[3].item[0].required = true

* item[2].item[3].item[1].linkId = "sender.organiszation.streetAddressLine"
* item[2].item[3].item[1].text = "Strasse, Hausnummer, Postfach etc."
* item[2].item[3].item[1].type = #string
* item[2].item[3].item[1].repeats = true

* item[2].item[3].item[2].linkId = "sender.organiszation.postalCode"
* item[2].item[3].item[2].text = "PLZ"
* item[2].item[3].item[2].type = #string

* item[2].item[3].item[3].linkId = "sender.organiszation.city"
* item[2].item[3].item[3].text = "Ort"
* item[2].item[3].item[3].type = #string

* item[2].item[3].item[4].linkId = "sender.organiszation.country"
* item[2].item[3].item[4].text = "Land"
* item[2].item[3].item[4].type = #string

// receiver (Empfänger)------------------------------
* item[3].linkId = "receiver"
* item[3].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[3].text = "Empfänger"
* item[3].type = #group
//* item[3].required = true

/* item[3].item[0].linkId = "receiver.person.practionerrole"
* item[3].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[3].item[0].text = ""
* item[3].item[0].type = #group
* item[3].item[0].required = true
*/
* item[3].item[0].linkId = "receiver.person.practitioner"
* item[3].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[3].item[0].text = "Verantwortliche Person"
* item[3].item[0].type = #group

* item[3].item[0].item[0].linkId = "receiver.person.familyName"
* item[3].item[0].item[0].text = "Titel"
* item[3].item[0].item[0].type = #string

* item[3].item[0].item[1].linkId = "receiver.person.familyName"
* item[3].item[0].item[1].text = "Name"
* item[3].item[0].item[1].type = #string

* item[3].item[0].item[2].linkId = "receiver.person.givenName"
* item[3].item[0].item[2].text = "Vorname"
* item[3].item[0].item[2].type = #string

* item[3].item[0].item[3].linkId = "receiver.person.email"
* item[3].item[0].item[3].text = "E-Mail"
* item[3].item[0].item[3].type = #string

* item[3].item[0].item[4].linkId = "receiver.person.email"
* item[3].item[0].item[4].text = "Phone"
* item[3].item[0].item[4].type = #string


// receiver (Auftragnehmer-SofortInfo bei Einftreffen des Auftrages)

* item[3].item[1].linkId = "urgentforthisdoc.practioner"
* item[3].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practioner"
* item[3].item[1].text = "Bei Eintreffen des Auftrages sofort benachtichtigen"
* item[3].item[1].type = #group

* item[3].item[1].item[0].linkId = "rgentforthisdoc.person.familyName"
* item[3].item[1].item[0].text = "Name"
* item[3].item[1].item[0].type = #string

* item[3].item[1].item[1].linkId = "rgentforthisdoc.person.givenName"
* item[3].item[1].item[1].text = "Vorname"
* item[3].item[1].item[1].type = #string

//receiver  (Auftragnehmer-Institution)
* item[3].item[2].linkId = "receiver.organization"
* item[3].item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[3].item[2].text = "Institution"
* item[3].item[2].type = #group
//* item[3].item[2].required = true

* item[3].item[2].item[0].linkId = "receiver.organiszation.name"
* item[3].item[2].item[0].text = "Name"
* item[3].item[2].item[0].type = #string

* item[3].item[2].item[1].linkId = "receiver.organiszation.streetAddressLine"
* item[3].item[2].item[1].text = "Strasse, Hausnummer, Postfach etc."
* item[3].item[2].item[1].type = #string
* item[3].item[2].item[1].repeats = true

* item[3].item[2].item[2].linkId = "receiver.rganiszation.postalCode"
* item[3].item[2].item[2].text = "PLZ"
* item[3].item[2].item[2].type = #string

* item[3].item[2].item[3].linkId = "receiver.organiszation.city"
* item[3].item[2].item[3].text = "Ort"
* item[3].item[2].item[3].type = #string

* item[3].item[2].item[4].linkId = "receiver.organization.country"
* item[3].item[2].item[4].text = "Land"
* item[3].item[2].item[4].type = #string

/* ----- Beschreibung des Kerninhaltes der Rad-Order ----------------------
CH Rad-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
servicerequest.code DER PLABOOK CODE ANGEGBEN. VOM QUESTIONNAIRE WIRD DAS NICHT UNTERSTÜTZT, DA NUR RELEVANT, WENN
ZWISCHEN SENDER UND EMPFÄNGER VEREINBART.

Was wird gewünscht (nur 1 Wert):
1.1: * #RequestforPrecedentReport "Request for precedent Reports only"                  
1.2: * #RequestforPrecedentReportandImages "Request for precedent Reports and Images"  
1.3: * #SecondOpinion "Second Opinion"                                                  
1.4: * #ImagingRequest "Imaging Request"                                                
1.5: * #ImagingRequestandIntervention "Imaging Request with Intervention"               
*/

* item[4].linkId = "whatservice"
* item[4].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[4].text = "Auftrag"
* item[4].type = #group
* item[4].required = true

* item[4].item[0].linkId = "whatservice"
* item[4].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[4].item[0].text = "Untersuchung / Intervention / Bestehende Untersuchungsresultae / Zweitmeinung"                 
* item[4].item[0].type = #string
* item[4].item[0].required = true

* item[4].item[1].linkId = "Ambulant / Stationär"
* item[4].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[4].item[1].text = "Ambulant / Stationä"                 
* item[4].item[1].type = #string
* item[4].item[1].required = true
/*------------------------------------------------------------------------
Fragestellung (mehrere Werte)
*/

* item[5].linkId = "reason"
* item[5].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[5].text = "Klinische Fragestellung"
* item[5].type = #group

* item[5].item[0].linkId = "reason"
* item[5].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[5].item[0].text = "Freitext:"                
* item[5].item[0].type = #string
* item[5].item[0].repeats = true

/*-----------------------------------------------------------------------
Angabe der Untersuchung (nur 1 Wert):
        * RDLX#RID10321 "computed tomography"
        * RDLX#RID10312 "Magnetic resonance imaging"
        * RDLX#RID10326 "Ultrasound"
        * RDLX#RID10363 "dual energy xray absorptiometry"
        * RDLX#RID10357 "mammography"
        * RDLX#RID10341 "Pet-ct"
        * RDLX#RID10330 "nuclear medicine imaging"
        * RDLX#RID10337 "Positron emission tomography"
        * RDLX#RID10345 "projection radiography"
        * RDLX#RID10361 "Fluoroscopy"
        * RDLX#RID49583 "SPECT-CT"
        * RDLX#RID10311 "imaging modality"
*/
/*
* item[6].linkId = "imgagingservicetype"
* item[6].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[6].text = "Art der Bildgebung"
* item[6].type = #group

* item[6].item[0].linkId = "imgagingservicetype"
* item[6].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[6].item[0].text = "CT / MRI / US / dual energy absorptiomety, Mammografie, PET-CT /
                  Nuklearmed. Bildgung / Positron emiss. Tomographie / Konventinelles RX, Fluoroskopie / SPECT-CT / Andere"                 
* item[6].item[0].type = #string

*/
/*----------------------------------------------------------------------
Gewünschter Radiologe: Noch offen, wie die Auswahlliste gemacht werden soll
*/
/*
* item[7].linkId = "desiredradilologist"
* item[7].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[7].text = "Gewünschter Radiologe für die Befundung / für die Intervention"
* item[7].type = #group

* item[7].item[0].linkId = "desiredradilologist.familyName"
* item[7].item[0].text = "Name"
* item[7].item[0].type = #string

* item[7].item[1].linkId = "desiredradilologist.givenName"
* item[7].item[1].text = "Vorname"
* item[7].item[1].type = #string
*/
/*----------------------------------------------------------------------
Art der Intervention (mehrere Werte)
*/
/*
* item[8].linkId = "interventiontype"
* item[8].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[8].text = "Intervention"
* item[8].type = #string

* item[8].item[0].linkId = "interventiontype"
* item[8].item[0].text = "Art"
* item[8].item[0].type = #string
* item[8].item[0].repeats = true

*/
/*----------------------------------------------------------------------*-- 
Darstellung der Order Details
                * orderDetail[RadOrderImagingRegion] from VsRadOrderImagingRegion       
                * orderDetail[RadOrderImagingFocus] from VsRadOrderImagingFocus         
                * orderDetail[RadOrderLaterality] from VsRadOrderLaterality                 
                * orderDetail[RadOrderViewType] from VsRadOrderViewType                    
                * orderDetail[RadOrderManeuverType] from VsRadOrderManeuverType             
*/
/*
* item[9].linkId = "orderdetails"
* item[9].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[9].text = "Weitere Angaben zur Bildgebung"
* item[9].type = #group

* item[9].item[0].linkId = "orderdetails.region"      // n Einträge
* item[9].item[0].text = "Region"
* item[9].item[0].type = #string
* item[9].item[0].repeats = true

* item[9].item[1].linkId = "orderdetails.region"      // n Einträge
* item[9].item[1].text = "Fokus"
* item[9].item[1].type = #string
* item[9].item[1].repeats = true

* item[9].item[2].linkId = "orderdetails.laterality" // 1 Eintrag
* item[9].item[2].text = "Seitenangabe"
* item[9].item[2].type = #string

* item[9].item[3].linkId = "orderdetails.manoever"   // n Einträge
* item[9].item[3].text = "Maneuver"
* item[9].item[3].type = #string
* item[9].item[3].repeats = true
*/
/*----------------------------------------------------------------------
Darstellung der Problemliste
*/

* item[6].linkId = "supplementaryinfo"
* item[6].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[6].text = "Problem- / Diagnoseliste"
* item[6].type = #group

* item[6].item[0].linkId = "supplementaryinfo"  
* item[6].item[0].text = "Problem / Diagnose"
* item[6].item[0].type = #string
* item[6].item[0].repeats = true


/*----------------------------------------------------------------------
Darstellung Caveats   
    BloodCoag 0..1 and
    RenalInsuff 0..1 and
    Claustrophobia 0..1 and
    BodyPierc 0.. and
    Device 0..* and
    Hyperthyr 0..1 and
    Diabetes 0..1 and
    Gravida 0..1 and  
    ContrastAllerg 0..1 and   
    DrugPrescr 0..*   

 */
/*
* item[11].linkId = "caveats"  
* item[11].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].text = "Caveats"
* item[11].type = #group

* item[11].item[0].linkId = "caveat.bloodcoag"     
* item[11].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[0].text = "Beinträchtigre Blutgerinnung"   
* item[11].item[0].type = #boolean

* item[11].item[1].linkId = "caveat.renalinsuff"     
* item[11].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[1].text = "Niereninsuffizienz"   
* item[11].item[1].type = #boolean
* item[11].item[1].repeats = true

* item[11].item[1].item[0].linkId = "caveat.renalinsuff"     
* item[11].item[1].item[0].definition = "http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-orf-caveat-observation"
* item[11].item[1].item[0].text = "Bei Niereninsuffizienz entweder Creatininclearance oder Creatinin"
* item[11].item[1].item[0].type = #group

* item[11].item[1].item[0].item[0].linkId = "caveat.renalinsuff.creatclearance"  
* item[11].item[1].item[0].item[0].text = "Niereninsuffizienz"
* item[11].item[1].item[0].item[0].type = #boolean

* item[11].item[1].item[0].item[1].linkId = "caveat.renalinsuff.creatclearance"  
* item[11].item[1].item[0].item[1].text = "Creatinin Clearance"
* item[11].item[1].item[0].item[1].type = #quantity

* item[11].item[1].item[0].item[1].item[0].linkId = "caveat.renalinsuff.creatclearance.date"  
* item[11].item[1].item[0].item[1].item[0].text = "Datum der Bestimmung"
* item[11].item[1].item[0].item[1].item[0].type = #dateTime

* item[11].item[1].item[0].item[2].linkId = "caveat.renalinsuff.creat"  
* item[11].item[1].item[0].item[2].text = "Creatinin"
* item[11].item[1].item[0].item[2].type = #quantity

* item[11].item[1].item[0].item[2].item[0].linkId = "scaveat.renalinsuff.creat.date"  
* item[11].item[1].item[0].item[2].item[0].text = "Datum der Bestimmung"
* item[11].item[1].item[0].item[2].item[0].type = #dateTime

* item[11].item[2].linkId = "caveat.claustrophobia"     
* item[11].item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[2].text = "Klaustrophobie"   
* item[11].item[2].type = #boolean

* item[11].item[3].linkId = "caveat.bodypierc"     
* item[11].item[3].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[3].text = "Bodypiercing"   
* item[11].item[3].type = #boolean

* item[11].item[4].linkId = "caveat.device"     
* item[11].item[4].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[4].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"   
* item[11].item[4].type = #string
* item[11].item[4].repeats = true

* item[11].item[5].linkId = "caveat.hyperthyr"     
* item[11].item[5].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[5].text = "Hyperthyreose"   
* item[11].item[5].type = #boolean

* item[11].item[6].linkId = "caveat.diabetes"     
* item[11].item[6].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[6].text = "Diabetes"   
* item[11].item[6].type = #boolean

* item[11].item[7].linkId = "caveat.gravida"     
* item[11].item[7].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[7].text = "Schwangerschaft"   
* item[11].item[7].type = #boolean

* item[11].item[8].linkId = "caveat.contrastallerg"     
* item[11].item[8].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[8].text = "Kontrastmittelallergie"   
* item[11].item[8].type = #boolean

* item[11].item[9].linkId = "caveat.drugprescr"     
* item[11].item[9].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[11].item[9].text = "Relevante Medikamente, z. B. Metformin"   
* item[11].item[9].type = #string              // noch nicht definiert wie zu machen
* item[11].item[9].repeats = true
*/
/*-------------------------------------------------------------------------
Darstellung der 4 Consents:
        [PrivacyConsent] only Reference(ChOrfConsent)
        TreatmentConsent] only Reference(ChOrfConsent)
        [RearchConsent] only Reference(ChOrfConsent)
        [ADCD]: Advanced directive
*/

* item[7].linkId = "consents"  
* item[7].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[7].text = "Einverständniserklärungen"
* item[7].type = #group

* item[7].item[0].linkId = "consents.treatmentconsent"      
* item[7].item[0].text = "Einverständnis des Patienten zur Behandlung"
* item[7].item[0].type = #string

* item[7].item[1].linkId = "consents.privacyconsent"      
* item[7].item[1].text = "Einverständnis des Patienten zum Datenschutz"
* item[7].item[1].type = #string

* item[7].item[2].linkId = "consents.researchconsent"      
* item[7].item[2].text = "Einverständnis des Patienten zur Forschung"
* item[7].item[2].type = #string

* item[7].item[3].linkId = "consents.researchconsent"     
* item[7].item[3].text = "Patientenverfügung"
* item[7].item[3].type = #string

/*------------------------------------------------------------------------
Darstellung der 4 Arten von Kostentägern  (Noch offen: Wie efrassen; )
        * ChRORFInsuranceType#Accident "According UVG"
        * ChRORFInsuranceType#DisorderKVG "According to KVG"
        * ChRORFInsuranceType#DisorderVVG "According to VVG"
        * ChRORFInsuranceType#OtherVVG "Other acording to VVG"
*/

* item[8].linkId = "coverage"
* item[8].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-coverage"
* item[8].text = "Kostenträger"
* item[8].type = #group

* item[8].item[0].linkId = "insurance.uvg"
* item[8].item[0].text = "Unfallversicherung"
* item[8].item[0].type = #string

* item[8].item[1].linkId = "insurance.kvg"
* item[8].item[1].text = "Grundversicherung (KVG)"
* item[8].item[1].type = #string

* item[8].item[2].linkId = "insurance.vvg"
* item[8].item[2].text = "Zusatzversicherung"
* item[8].item[2].type = #string

* item[8].item[3].linkId = "insurance.vvgother"
* item[8].item[3].text = "Andere"
* item[8].item[3].type = #string

/*
---- 5 -----------------------------------------------------------------------
Angaben zu Bilder bzw. allfällige Vorbilder und Reports, die mitgegeben werden 
mittels CH ORF ImagingStudy Resource.
*/

* item[9].linkId = "precedentresults"
* item[9].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-etoc-servicerequest"
* item[9].text = "Vorherige Untersuchungsresultate"
* item[9].type = #group

* item[9].item[0].linkId = "precedent.resultID"                     // n Einträge
* item[9].item[0].text = "Vorheriges Untersuchungsresultat"          // (Abbildung und Anzeige noch nicht definiert)
* item[9].item[0].type = #string
* item[9].item[0].repeats = true
