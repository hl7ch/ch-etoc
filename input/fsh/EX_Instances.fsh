Instance: ServiceRequestEtoc
InstanceOf: ChEtocServiceRequest
Title: "ServiceRequest Medical Referral"
Description: "Example for ServiceRequest"
* extension[locationAndTime].valueReference = Reference(AppointmentHospitalStay)

* identifier[placerOrderIdentifier].system = "urn:oid:1.3.4.5.6.7"
* identifier[placerOrderIdentifier].value = "12345"
* status = #active
* intent = #order
* priority = #routine

* code.text              = "Abklärung akuter Thoraxschmerzen"
* reasonCode.text        = "Verdacht auf Vorderwandinfarkt"
* reasonReference[+]     = Reference(PrimaryDiagnosis)

* subject                = Reference(SUfferer)
* requester              = Reference(ORderplacerHappyDoctors)

* insurance              = Reference(CoverageKVG)

* supportingInfo[bodyHeight][+]         = Reference(BodyHeight)
* supportingInfo[bodyWeight][+]         = Reference(BodyWeight)
* supportingInfo[secondarydiagnosis][+] = Reference(SecondaryDiagnosis1)
* supportingInfo[secondarydiagnosis][+] = Reference(SecondaryDiagnosis2)

* supportingInfo[attachment][+]         = Reference(DocumentReferenceAttachment)

* note.text = "Patient ist sehr ängstlich"


Instance: PastHistoryofIllnessesConditionEtoc
InstanceOf: ChEtocPastHistoryofIllnessesCondition
Title: "Past History of Illnesses"
Description: "HistoryofIllnessesCondition"
* subject = Reference(SUfferer)
* code.text = "Endokarditis 1999"
 
//---------
Instance: MedicationEtoc1
InstanceOf: CHCoreMedication
Title: "Medication at Medical Referral"
Description: "Medication at Medical Referral"
* code.text = "Erdabyclor"

Instance: DosageEtoc1
InstanceOf: CHCoreDosage
Description: "DosageNonStrucured"
Usage: #inline
* text = "20/25 mg 1/2-0-0-0" // Erdabyclor Dosage

//---------
Instance: MedicationEtoc2
InstanceOf: CHCoreMedication
Title: "Medication at Medical Referral"
Description: "Medication at Medical Referral"
* code.text = "Morphin"

Instance: DosageEtoc2
InstanceOf: CHCoreDosage
Description: "DosageNonStrucured"
Usage: #inline
* text = "5 mg i.v.; 16h30" // Morphin Dosage

//---------
Instance: MedicationEtoc3
InstanceOf: CHCoreMedication
Title: "Medication at Medical Referral"
Description: "Medication at Medical Referral"
* code.text = "Nitroglycerin 0.8 mg s.L.; 16h15"

Instance: DosageEtoc3
InstanceOf: CHCoreDosage
Description: "DosageNonStrucured"
Usage: #inline
* text = "50.8 mg s.L.; 16h15" // Nitroglycerin Dosage

//---------

Instance: CompositionEtoc
InstanceOf: ChEtocComposition
Title: "Composition Medical Referral"
Description: "Example for Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Medical Referral</div></div>"
* extension[dataEnterer].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[dataEnterer].extension[enterer].url = "enterer"
* extension[dataEnterer].extension[enterer].valueReference = Reference(DAtaentererHappyDoctors)
* extension[receiver].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[receiver].valueReference = Reference(ORderfillerHappyHospital)
* extension[copyReceiver].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[copyReceiver].valueReference = Reference(SUfferer)
* status = #final
// fixer Wert aus DocumentEntry.typeCode
//* type = SCT#419891008 "Nicht näher bezeichnetes Dokument"
// fixer Wert aus DocumentEntry.classCode
//* category = SCT#721927009 "Zuweisungsschreiben"
* subject = Reference(SUfferer)
* date = "2019-04-01T20:18:41.341+00:00"
* author = Reference(ORderplacerHappyDoctors)
//* title = "Anmeldung zur Abklärung / Hospitalisation"
* section[orderReferral].title = "Order-Referral"
//* section[orderReferral].code = LNC#93037-0 "Portable medical order form"
* section[orderReferral].entry[Questionnaire] = Reference(QuestionnaireEtoc)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(QuestionnaireResponseEtocTransCare)
* section[orderReferral].entry[ServiceRequest] = Reference(ServiceRequestEtoc)


Instance: DocumentEtoc 
InstanceOf: ChEtocDocument
Title: "Bundle Medical Referral"
Description: "Example for Bundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f7"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"
* entry[+].fullUrl = "http://example.com/fhir/Composition/CompositionEtoc"
* entry[=].resource = CompositionEtoc
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/QuestionnaireEtoc"
* entry[=].resource = QuestionnaireEtoc
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/QuestionnaireResponseEtocTransCare"
* entry[=].resource = QuestionnaireResponseEtocTransCare
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/ServiceRequestEtoc"
* entry[=].resource = ServiceRequestEtoc
//------------- Patient and Copy Receiver -------------
* entry[+].fullUrl = "http://example.com/fhir/Patient/SUfferer"
* entry[=].resource = SUfferer
//* entry[+].fullUrl = "http://example.com/fhir/Patient/SUffererCopyReceiver"
//* entry[=].resource = SUffererCopyReceiver
//------------- Data Enterer -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/DAtaentererHappyDoctors"
* entry[=].resource = DAtaentererHappyDoctors
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/DAtaenterer"
* entry[=].resource = DAtaenterer
//------------- Author -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/ORderplacerHappyDoctors"
* entry[=].resource = ORderplacerHappyDoctors
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/ORderplacer"
* entry[=].resource = ORderplacer
//------------- Receiver -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/ORderfillerHappyHospital"
* entry[=].resource = ORderfillerHappyHospital
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/ORderfiller"
* entry[=].resource = ORderfiller
//------------- Organizations -------------
* entry[+].fullUrl = "http://example.com/fhir/Organization/HappyDoctors"
* entry[=].resource = HappyDoctors
* entry[+].fullUrl = "http://example.com/fhir/Organization/HappyHospital"
* entry[=].resource = HappyHospital
//------------- more -------------
* entry[+].fullUrl = "http://example.com/fhir/Condition/PrimaryDiagnosis"
* entry[=].resource = PrimaryDiagnosis
* entry[+].fullUrl = "http://example.com/fhir/Condition/SecondaryDiagnosis1"
* entry[=].resource = SecondaryDiagnosis1
* entry[+].fullUrl = "http://example.com/fhir/Condition/SecondaryDiagnosis2"
* entry[=].resource = SecondaryDiagnosis2
* entry[+].fullUrl = "http://example.com/fhir/Observation/BodyHeight"
* entry[=].resource = BodyHeight
* entry[+].fullUrl = "http://example.com/fhir/Observation/BodyWeight"
* entry[=].resource = BodyWeight

* entry[+].fullUrl = "http://example.com/fhir/Coverage/CoverageKVG"
* entry[=].resource = CoverageKVG

* entry[+].fullUrl = "http://example.com/fhir/Appointment/AppointmentHospitalStay"
* entry[=].resource = AppointmentHospitalStay
* entry[+].fullUrl = "http://example.com/fhir/Location/LocationHospitalStay"
* entry[=].resource = LocationHospitalStay

* entry[+].fullUrl = "http://example.com/fhir/DocumentReference/DocumentReferenceAttachment"
* entry[=].resource = DocumentReferenceAttachment

//------------- Patient -------------
Instance: SUfferer
InstanceOf: ChCorePatient
Title: "Susanna Ufferer"
Description: "Example for Patient"
* name[+].use = #official
* name[=].family[+] = "Ufferer"
* name[=].family[=].extension[ech11name].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family[=].extension[ech11name].valueCode = #officialName

* name[=].given[+] = "Susanna"
* name[=].given[=].extension[ech11firstname].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name[=].given[=].extension[ech11firstname].valueCode = #officialFirstName

* name[+].use = #maiden
* name[=].family[+] = "Leidend"
* name[=].family[=].extension[ech11name].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family[=].extension[ech11name].valueCode = #originalName

* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"
* telecom[1].system = #email

* telecom[1].value = "susanna@ufferer.ch"

* gender = #female 

* birthDate = "1970-03-14"

* address.use = #home
* address.line[0] = "Musterweg"
* address.line[1] = "6a"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"

//------------- Copy Receiver -------------
/*Instance: SUffererCopyReceiver
InstanceOf: ChCorePatient
Title: "Susanna Ufferer Copy Receiver"
Description: "Example for Patient"
* name.family = "Ufferer"
* name.given = "Susanna"
* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"
* telecom[1].system = #email
* telecom[1].value = "susanna@ufferer.ch"
* address.use = #home
* address.line = "Musterweg 6a"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"
*/

//------------- Data Enterer -------------
Instance: DAtaentererHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Doris Ataenterer@Happy Doctors"
Description: "Example for PractionerRole"
* practitioner = Reference(DAtaenterer)
* organization = Reference(HappyDoctors)


Instance: DAtaenterer
InstanceOf: ChCorePractitioner
Title: "Doris Ataenterer"
Description: "Example for Practitioner"
* name.family = "Ataenterer"
* name.given = "Doris"
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "d.ataenterer@happydoctors.ch"


//------------- Author -------------
Instance: ORderplacerHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Ottilie Rderplacer@Happy Doctors"
Description: "Example for PractionerRole"
* practitioner = Reference(ORderplacer)
* organization = Reference(HappyDoctors)


Instance: ORderplacer
InstanceOf: ChCorePractitioner
Title: "Ottilie Rderplacer"
Description: "Example for Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050717"
* name.use = #official
* name.family = "Rderplacer"
* name.given = "Ottilie"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "o.rderplacer@happydoctors.ch"


Instance: SMeier
InstanceOf: ChCorePractitioner
Title: "Sabine Meier"
Description: "Example for Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050728"
* name.use = #official
* name.family = "Meier"
* name.given = "Sabine"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 13 15"
* telecom[1].system = #email
* telecom[1].value = "s.meier@praxisseeblick.ch"


//------------- Receiver -------------
Instance: ORderfillerHappyHospital
InstanceOf: ChCorePractitionerRole
Title: "Otto Rderfiller@Happy Hospital"  
Description: "Example for PractionerRole"
* practitioner = Reference(ORderfiller)
* organization = Reference(HappyHospital)


//------------- Organizations -------------
Instance: HappyDoctors
InstanceOf: ChCoreOrganization
Title: "Praxis Happy Doctors"
Description: "Example for Organization"
* name = "Praxis Happy Docotors"
* address.line[0] = "Happystrasse 14"
* address.line[1] = "Postfach 14"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"


Instance: HappyHospital
InstanceOf: ChCoreOrganization
Title: "Innere Medizin Klinik Happy Hospital"
Description: "Example for Organization"
* name = "Innere Medizin Klinik Happy Hospital"
* address.line[0] = "Kantonsstrasse 133"
* address.line[1] = "Haus C"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz" 


Instance: ORderfiller
InstanceOf: ChCorePractitioner
Title: "Otto Rderfiller"
Description: "Example for Practitioner"
* name.use = #official
* name.family = "Rderfiller"
* name.given = "Otto"


//-------------  Time and Location -------------
Instance: AppointmentHospitalStay
InstanceOf: ChOrfAppointment
Title: "Appointment Hospital Stay"
Description: "Example for Appointment"
* status = #proposed
* patientInstruction = "Wunschtermin der Patientin"
* participant[+].actor = Reference(LocationHospitalStay)
* participant[=].status = #tentative
* requestedPeriod[+].start = "2019-04-01T15:00:00.000+00:00"
* requestedPeriod[=].end = "2019-04-01T15:30:00.000+00:00"


//------------- diagnosisList -------------
Instance: PrimaryDiagnosis
InstanceOf: ChEtocPrimaryDiagnosisCondition
Title: "Primary Diagnosis"
Description: "Example for Primary Diagnosis Condition"
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#primary-diagnosis "Primary Diagnosis"
* code.text = "St. nach Bypass 2007"
* subject = Reference(SUfferer)


Instance: BodyHeight
InstanceOf: ChEtocBodyHeightObservation
Title: "Body Height 176 cm"
Description: "Example for Body Height Observation"
* status = #final

//* category = ObservationCategory#vital-signs
//* code.coding = LNC#8302-2 "Body height" // "Body Height, method unspecified"
* subject = Reference(SUfferer)
* effectiveDateTime = "2019-04-01"
* valueQuantity.value = 176


Instance: BodyWeight
InstanceOf: ChEtocBodyWeightObservation
Title: "Body Weight 99 kg"
Description: "Example for Body Weight Observation"
* status = #final

//* category = ObservationCategory#vital-signs
//* code.coding = LNC#29463-7 "Body weight" // "Body Weight, method unspecified"
* subject = Reference(SUfferer)
* effectiveDateTime = "2019-04-01"
* valueQuantity.value = 99


Instance: SecondaryDiagnosis1
InstanceOf: ChEtocSecondaryDiagnosisCondition
Title: "Secondary Diagnosis 1"
Description: "Example for Secondary Diagnosis Condition"
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#secondary-diagnosis "Secondary Diagnosis"
* code.text = "Hypertonie (Syst um 180 mm HG)"
* subject = Reference(SUfferer)


Instance: SecondaryDiagnosis2
InstanceOf: ChEtocSecondaryDiagnosisCondition
Title: "Secondary Diagnosis 2"
Description: "Example for Diagnosis Condition"
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#secondary-diagnosis "Secondary Diagnosis"
* code.text = "Hypercholesterinämie"
* subject = Reference(SUfferer)


//------------- Coverage -------------
Instance: CoverageKVG
InstanceOf: ChOrfCoverage
Title: "Coverage KVG"
Description: "Example for Coverage"
* contained[+] = Sanitas
* identifier.type = CSCoverageIdentifierType#VeKa
* identifier[insuranceCardNumber].value = "80756015090002647590"
* status = #active
* type = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-25-mainguarantor#1 "Krankenversicherung (obligat.)"
* beneficiary = Reference(SUfferer)
* payor = Reference(Sanitas)


Instance: Sanitas
InstanceOf: ChCoreOrganization
Title: "Sanitas"
Description: "Example for Organization"
Usage: #inline
* name = "Sanitas"


//------------- Previous Results -------------

Instance: LocationHospitalStay
InstanceOf: ChOrfLocation
Title: "Location Hospital Stay"
Description: "Example for Location"
* name = "Innere Medizin Happy Hospital"
* telecom[0].system = #phone
* telecom[0].value = "+41 44 412 65 56"
* address.line[0] = "Kantonsstrasse 133"
//* address.line[1] = "Innere Medizin"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"


Instance: AllergyIntolerance
InstanceOf: ChEtocAllergyIntolerance
Title: "Allergy / Intolerance"
Description: "Example for Allergy / Intolerance"
* code.text = "Anamnestisch Penicillinallergie"
//* code = SCT#91936005 //"Allergie gegen Penicillin"
* patient = Reference(SUfferer)
* clinicalStatus = AllergyIntoleranceClinicalStatusCodes#active


Instance: Hemoglobin
InstanceOf: ChEtocLabObservation
Title: "Haemoglobin"
Description: "Example for Lab result"
* status = #final
* code.text = "Hb: 112 g/l"
* subject = Reference(SUfferer)


Instance: HbA1c
InstanceOf: ChEtocLabObservation
Title: "Hb-A1c"
Description: "Example for Lab result"
* status = #final
* code.text = "HHb-A1c: 5.4 %"
* subject = Reference(SUfferer)


Instance: Biopsy
InstanceOf: ChEtocPathologyObservation
Title: "Biopsie Duodenum / Magen"
Description: "Example for Pathology result"
* status = #final
* code.text = "Biopsien Duodenum, Magen, unruhige Z-Linie vom 19.09.2018:
Die Veränderungen der Duodenalschleimhaut passen gut zu einem geringen petpischen Schleimhautschaden. Die Magenschleimhaut zeigt das Bild einer reaktiven Gastropathie. Erosive Veränderungen gelangen hier nicht zur Darstellung. Kein Helicobacter, keine Metaplasie, keine pathogenen Erreger nachgewiesen."
* subject = Reference(SUfferer)


Instance: Imaging
InstanceOf: ChEtocRadiologyObservation
Title: "Thx ap / seitl."
Description: "Example for Imaging Result"
* status = #final
* code.text = "Thorax ap / seitl. vom 12.05.23: unauffällig"
* subject = Reference(SUfferer)


Instance: Electrocardiogram
InstanceOf: ChEtocCardiologyObservation
Title: "EKG"
Description: "Example for cardiology result"
* status = #final
* code.text = "EKG vom 12.5.23: unauffällig"
* subject = Reference(SUfferer)


Instance: DocumentReferenceAttachment
InstanceOf: ChOrfDocumentReference
Title: "Befund_Rx_Thorax_S_Ufferer_20190401"
Description: "Example of Document Reference for Attachment (e.g. pdf)"
* status = #current
* content.attachment.title = "Befund_Rx_Thorax_S_Ufferer_20190401.pdf"
* description = "Befund Thorax-Rx vom 1.2.23; Eyample of Attachment Attachment"
* content.attachment.contentType = MimeType#application/pdf
* content.attachment.data = "VGVzdCBCZWZ1bmQgTm9uIERpY29t" // Encoded in base64

/*
Instance: DicomSopInstanceConformant
InstanceOf: ChRadOrderImagingStudy
Title: "DICOM conformant SOP Instance"
Description: "Rx-Knie-S_Ufferer_05032024; Example of DICOM conformant SOP Instance (regarding Coding of Series-Modality)"
* status = #available
* subject = Reference(SUfferer)
* series.instance.uid = "2.16.124.113543.1154777499.30246.19789.3503430045.1.1"
* series.instance.sopClass = #1.2.840.10008.5.1.4.1.1.1
* series.modality = #DX
* series.uid = "2.16.124.113543.1154777499.30246.19789.3503430045.1"
* identifier[studyInstanceUid].value = "2.16.124.113543.1154777499.30246.19789.3503430045" //StudyInstanceUid 
* identifier[acsn].value = "2819497684894126" //ACSN
*/



