
// CH eTOC Structure Defintions derived from CH ORF

Profile: ChEtocServiceRequest
Parent: ChOrfServiceRequest
Id: ch-etoc-servicerequest
Title: "CH eTOC Service Request"
Description: "Definition for the ServiceRequest resource in the context of electronic transition of care."
* . ^short = "CH eTOC Service Request"
* . ^definition = "This IG adheres to the FHIR International Patient Summary (IPS) Implementation Guide. Clinical content uses
mostly the same resources as the IPS; some minor differences are explained in comments to the resources affected. The resource definitions are however constrained from FHIR base definitions and Swiss Core definitions 
and NOT from UVIPS. This decision was made in order to minimize unexpected impact of future changes in IPS and for compatibility with 
Swiss Core. eTOC adds a ServiceRequest resource to the clinical content (according to the IPS) in order to depict the reason for a referral, the requested 
service and some additional information (e.g. coverage, room preferance etc.). Resources for such purpose are referenced by the ServiceRequest
resource. Header information such as sender, receiver etc. are condsidered as Generic Elements (to all sorts of referral, orders etc.) 
and follow the definition in the ORF Implementation Guide.  

This IG follows the Swiss eHealth Exchange Format Handbook Part I: Service Requests V 0.13. The Questionnaire resource gives gudiance for 
the implementaion of the user interface."

* intent MS
/*------- category -------
Reserved for specification of a particular form for referrals to clinical subspecialities. As this is a generic referral, leave empty.
*/

//------- code -------
* code MS
* code ^short = "What is being requested/ordered"
* code.text MS
//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Explanation/Justification for procedure or service"
* reasonCode.text MS
//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Explanation/Justification for service or service (primary diagnosis)"
* reasonReference only Reference(ChEtocPrimaryDiagnosisCondition) 
//------- insurance -------
* insurance MS
* insurance only Reference(ChOrfCoverage)
//------- supportingInfo -------
* supportingInfo MS
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains
    secondarydiagnosis 0..* and 
    bodyHeight 0..1 and
    bodyWeight 0..1 and
    pregnancy 0..1 and

    historyofIllnesses 0..* and
    historyofProcedures 0..* and
    devices 0..* and
    socialHistory 0..1 and
    functionalStatus 0..* and    

    medicationstatement 0..* and // MedicationStation contains 1 Medication with dosage
    allergiesIntolerances 0..* and
    immunizations 0..* and

    labresults 0..* and
    pathologyresults 0..* and
    imagingresults 0..* and
    cardiologyresults 0..*

 //   diagnosticReports 0..* and  // not used
 /*   medicalCarePlans 0..* and 
    nursingCarePlans 0..
*/
* supportingInfo[secondarydiagnosis] MS
* supportingInfo[secondarydiagnosis] only Reference(ChEtocSecondaryDiagnosisCondition) 
* supportingInfo[secondarydiagnosis] ^short = "Additional problem / secondary diagnosis"
* supportingInfo[bodyHeight] MS
* supportingInfo[bodyHeight] only Reference(ChEtocBodyHeightObservation)
* supportingInfo[bodyWeight] MS
* supportingInfo[bodyWeight] only Reference(ChEtocBodyWeightObservation)
* supportingInfo[pregnancy] MS
* supportingInfo[pregnancy] only Reference(ChEtocPregnancyStatusObservation)

* supportingInfo[historyofIllnesses] MS
* supportingInfo[historyofIllnesses] only Reference(ChEtocPastHistoryofIllnessesCondition)
* supportingInfo[historyofProcedures] MS
* supportingInfo[historyofProcedures] only Reference(ChEtocProcedure)
* supportingInfo[devices] MS
* supportingInfo[devices] only Reference(ChEtocDevice)
* supportingInfo[socialHistory] MS
* supportingInfo[socialHistory] only Reference(ChEtocSocialHistoryCondition)
* supportingInfo[functionalStatus] MS
* supportingInfo[functionalStatus] only Reference(ChEtocFunctionalStatusCondition)

* supportingInfo[medicationstatement] MS
* supportingInfo[medicationstatement] only Reference(ChEmedMedicationStatement)
* supportingInfo[medicationstatement] ^short = "MedicationStatement contains one medication with dosage"
* supportingInfo[allergiesIntolerances] MS
* supportingInfo[allergiesIntolerances] only Reference(ChEtocAllergyIntolerance)
* supportingInfo[immunizations] MS
* supportingInfo[immunizations] only Reference(ChEtocImmunization)

* supportingInfo[labresults] MS
* supportingInfo[labresults] only Reference(ChEtocLabObservation)
* supportingInfo[pathologyresults] MS
* supportingInfo[pathologyresults] only Reference(ChEtocPathologyObservation)
* supportingInfo[imagingresults] MS
* supportingInfo[imagingresults] only Reference(ChEtocRadiologyObservation)
* supportingInfo[cardiologyresults] MS
* supportingInfo[cardiologyresults] only Reference(ChEtocCardiologyObservation)

//* supportingInfo[medicalCarePlans] MS
//* supportingInfo[medicalCarePlans] only Reference(ChEtocMedicalCarePlan)

//* supportingInfo[nursingCarePlans] MS
//* supportingInfo[nursingCarePlans] only Reference(ChEtocNursingCarePlan)

/* ------- bodySite -------
Currently no use intended
*/
//------- note -------
* note MS
* note.text MS


Profile: ChEtocDocument
Parent: ChOrfDocument
Id: ch-etoc-document
Title: "CH eTOC Document"
Description: "Definition for the Bundle (document) resource in the context of electronic transition of care."
* . ^short = "CH eTOC Bundle (document)"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Imaging Service Request (Concept commonly used in DICOM). 
Consequently one CH eTOC Document contains one eTOC ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."

// ---------- Bundle.entry:Composition ----------
* entry[Composition].resource ^type.profile = Canonical(ChEtocComposition)


Profile: ChEtocComposition
Parent: ChOrfComposition
Id: ch-etoc-composition
Title: "CH eTOC Composition"
Description: "Definition for the Composition resource in the context of electronic transition of care."
* . ^short = "CH eTOC Composition"
* title = "Zuweisungsschreiben"
* category = SCT#721927009 // Zuweisungsschreiben 
* type = SCT#419891008 // Nicht näher bezeichnetes Dokument

// ---------- Composition.section.entry:ServiceRequest ----------
// objection voted on 7.4.2022 tc meeting Issue #39
* section[orderReferral].entry[Questionnaire] 1..
//* section[orderReferral].entry[Questionnaire] ^type.targetProfile = Canonical(ChEtocQuestionnaire)
* section[orderReferral].entry[QuestionnaireResponse] 1..
* section[orderReferral].entry[QuestionnaireResponse] 
* section[orderReferral].entry[ServiceRequest] ^type.targetProfile = Canonical(ChEtocServiceRequest)
* section[orderReferral].entry[DocumentReference] 0..
//* section[orderReferral].entry[DocumentReference] ^type.targetProfile = Canonical()

/* ======== Definition of sections in CH ORF =========
* section MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

// section names are according to IPS except anamnesis (reason see below)
// vital signs and advanced directives not supported yet

// ---------- Composition.section:orderReferral ----------
* section contains orderReferral 1..1 MS
* section[orderReferral] ^short = "Contains the data that supports the order and referral by form."
* section[orderReferral].title 1..1 MS
* section[orderReferral].title ^short = "Order-Referral"
* section[orderReferral].code 1..1 MS
* section[orderReferral].code = LNC#93037-0 "Portable medical order form"
* section[orderReferral].text MS
* section[orderReferral].section 0..0

* section[orderReferral].entry MS
* section[orderReferral].entry ^slicing.discriminator.type = #profile
* section[orderReferral].entry ^slicing.discriminator.path = "resolve()"
* section[orderReferral].entry ^slicing.rules = #open
// ---------- Composition.section.entry:Questionnaire - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry contains Questionnaire 0..1 MS
* section[orderReferral].entry[Questionnaire] only Reference(ChOrfQuestionnaire)
* section[orderReferral].entry[Questionnaire] ^short = "Questionnaire"
* section[orderReferral].entry[Questionnaire].reference 1.. MS
// ---------- Composition.section.entry:QuestionnaireResponse - - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry contains QuestionnaireResponse 0..1 MS
* section[orderReferral].entry[QuestionnaireResponse] only Reference(ChOrfQuestionnaireResponse)
* section[orderReferral].entry[QuestionnaireResponse] ^short = "QuestionnaireResponse"
* section[orderReferral].entry[QuestionnaireResponse].reference 1.. MS
// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry contains ServiceRequest 1..* MS
* section[orderReferral].entry[ServiceRequest] only Reference(ChOrfServiceRequest)
* section[orderReferral].entry[ServiceRequest] ^short = "ServiceRequest"
* section[orderReferral].entry[ServiceRequest].reference 1.. MS
// ---------- Composition.section.entry:DocumentReference ----------
* section[orderReferral].entry contains DocumentReference 0..* MS
* section[orderReferral].entry[DocumentReference] only Reference(ChOrfDocumentReference)
* section[orderReferral].entry[DocumentReference] ^short = "DocumentReference"
* section[orderReferral].entry[DocumentReference].reference 1.. MS
// ---------- Composition.section.entry:ChOrfEpisodeOfCare ----------
* section[orderReferral].entry contains EpisodeOfCare 0..1 MS
* section[orderReferral].entry[EpisodeOfCare] only Reference(ChOrfEpisodeOfCare) 
* section[orderReferral].entry[EpisodeOfCare] ^short = "Episode of Care"
* section[orderReferral].entry[EpisodeOfCare].reference 1.. MS
// ---------- Composition.section.entry:Consent ----------
* section[orderReferral].entry contains Consent 0..1 MS
* section[orderReferral].entry[Consent] only Reference(ChOrfConsent) 
* section[orderReferral].entry[Consent] ^short = "Consent"
* section[orderReferral].entry[Consent].reference 1.. MS
// ---------- Composition.section:originalRepresentation ----------
* section contains originalRepresentation 0..1 MS
* section[originalRepresentation] ^short = "Contains the original representation as a PDF of the current document."
* section[originalRepresentation].title 1..1 MS
* section[originalRepresentation].title ^short = "Original representation"
* section[originalRepresentation].code 1..1 MS
* section[originalRepresentation].code = LNC#55108-5 "Clinical presentation"
* section[originalRepresentation].text 1.. MS
* section[originalRepresentation].text ^short = "Representation of the original view"
* section[originalRepresentation].entry 1..1 MS
* section[originalRepresentation].entry only Reference(Binary)
* section[originalRepresentation].entry ^short = "According to the EPR ordonnance the PDF has to be in PDF/A-1 or PDF/A-2 format."
* section[originalRepresentation].section 0..0
*/


//=== Composition sections eTOC specific ====
// ------- Composition.section: purpose -------
* section contains sectionPurpose 0..1 MS
* section[sectionPurpose] ^short = "Contains information about the purpose/reason"
* section[sectionPurpose].title 1..1 MS
* section[sectionPurpose].title ^short = "Purpose"
* section[sectionPurpose].code 1..1 MS
* section[sectionPurpose].code = LNC#42349-1 "Reason for referral (narrative)"
* section[sectionPurpose].text MS
* section[sectionPurpose].section 0..0
* section[sectionPurpose].entry 0..1 MS
* section[sectionPurpose].entry only Reference(ChEtocServiceRequest)

//==== Composition sections  according to IPS ====
// section names and LOINC Codes according to IPS

// ------- Composition.section: problems -------
* section contains sectionProblems 0..1 MS
* section[sectionProblems] ^short = "Contains the problem list"
* section[sectionProblems].title 1..1 MS
* section[sectionProblems].title ^short = "Problems"
* section[sectionProblems].code 1..1 MS
* section[sectionProblems].code = LNC#57852-6 "Problem list Narrative - Reported"
* section[sectionProblems].text MS
* section[sectionProblems].section 0..
* section[sectionProblems].entry 0.. MS
* section[sectionProblems].entry only Reference(ChEtocPrimaryDiagnosisCondition or
                                                ChEtocSecondaryDiagnosisCondition)

// ------- Composition.section: medication -------
* section contains sectionMedications 0..1 MS
* section[sectionMedications] ^short = "Contains information about the medication"
* section[sectionMedications].title 1..1 MS
* section[sectionMedications].title ^short = "Medication"
* section[sectionMedications].code 1..1 MS
* section[sectionMedications].code = LNC#42346-7 "Medications on admission (narrative)"
* section[sectionMedications].text MS
* section[sectionMedications].section 0..0
* section[sectionMedications].entry 0.. MS
* section[sectionMedications].entry only Reference(CHEMEDMedicationStatement)

// ------- Composition.section: immunizations -------
* section contains sectionImmunizations 0..1 MS
* section[sectionImmunizations] ^short = "Contains information about immunizations"
* section[sectionImmunizations].title 1..1 MS
* section[sectionImmunizations].title ^short = "Immunizations"
* section[sectionImmunizations].code 1..1 MS
* section[sectionImmunizations].code = LNC#11369-6 "History of immunization Narrative"
* section[sectionImmunizations].text MS
* section[sectionImmunizations].section 0..0
* section[sectionImmunizations].entry 0.. MS
* section[sectionImmunizations].entry only Reference(ChEtocImmunization)

// ------- Composition.section: allergies and  intolerances -------
* section contains sectionAllergies 0..1 MS
* section[sectionAllergies] ^short = "Contains information about allergies and intolerances"
* section[sectionAllergies].title 1..1 MS
* section[sectionAllergies].title ^short = "Allergies and intolerances"
* section[sectionAllergies].code 1..1 MS
* section[sectionAllergies].code = LNC#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text MS
* section[sectionAllergies].section 0..
* section[sectionAllergies].entry 0.. MS
* section[sectionAllergies].entry only Reference(ChEtocAllergyIntolerance)

// ------- Composition.section: History of past Illness -------
* section contains sectionPastIllnessHx 0..1 MS
* section[sectionPastIllnessHx].title 1..1 MS
* section[sectionPastIllnessHx].title ^short = "History of past illness"
* section[sectionPastIllnessHx].code 1..1 MS
* section[sectionPastIllnessHx].code = LNC#11348-0 "History of past illness Narrative"
* section[sectionPastIllnessHx].text MS
* section[sectionPastIllnessHx].section 0..0
* section[sectionPastIllnessHx].entry 0.. MS
* section[sectionPastIllnessHx].entry only Reference(ChEtocPastHistoryofIllnessesCondition)

// ------- Composition.section: Functional status -------
* section contains sectionFunctionalStatus 0..1 MS
* section[sectionFunctionalStatus].title 1..1 MS
* section[sectionFunctionalStatus].title ^short = "Functional Status"
* section[sectionFunctionalStatus].code 1..1 MS
* section[sectionFunctionalStatus].code = LNC#47420-5 "Functional status assessment note"
* section[sectionFunctionalStatus].text MS
* section[sectionFunctionalStatus].section 0..0
* section[sectionFunctionalStatus].entry 0.. MS
* section[sectionFunctionalStatus].entry only Reference(ChEtocFunctionalStatusCondition)

// ------- Composition.section: History of procedures -------
* section contains sectionProceduresHx 0..1 MS
* section[sectionProceduresHx].title 1..1 MS
* section[sectionProceduresHx].title ^short = "History of Procedures"
* section[sectionProceduresHx].code 1..1 MS
* section[sectionProceduresHx].code = LNC#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text MS
* section[sectionProceduresHx].section 0..0
* section[sectionProceduresHx].entry 0.. MS
* section[sectionProceduresHx].entry only Reference(ChEtocProcedure)

// ------- Composition.section: Social history -------
* section contains sectionSocialHistory 0..1 MS
* section[sectionSocialHistory].title 1..1 MS
* section[sectionSocialHistory].title ^short = "Social history"
* section[sectionSocialHistory].code 1..1 MS
* section[sectionSocialHistory].code = LNC#29762-2 "Social history Narrative"
* section[sectionSocialHistory].text MS
* section[sectionSocialHistory].section 0..0
* section[sectionSocialHistory].entry 0..1 MS
* section[sectionSocialHistory].entry only Reference(ChEtocSocialHistoryCondition)


// ------- Composition.section: medical devices -------
* section contains sectionMedicalDevices 0..1 MS
* section[sectionMedicalDevices] ^short = "Contains information about medical devices"
* section[sectionMedicalDevices].title 1..1 MS
* section[sectionMedicalDevices].title ^short = "Medical devices"
* section[sectionMedicalDevices].code 1..1 MS
* section[sectionMedicalDevices].code = LNC#46264-8 "History of medical device use"
* section[sectionMedicalDevices].text MS
* section[sectionMedicalDevices].section 0..
* section[sectionMedicalDevices].entry 0.. MS
* section[sectionMedicalDevices].entry only Reference(ChEtocDevice)

// ------- Composition.section: diagnositc results -------
* section contains sectionResults 0..1 MS
* section[sectionResults] ^short = "Contains informaion about diagnostic results"
* section[sectionResults].title 1..1 MS
* section[sectionResults].title ^short = "Diagnostic results"
* section[sectionResults].code 1..1 MS
* section[sectionResults].code = LNC#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* section[sectionResults].text MS
* section[sectionResults].section 0..0
* section[sectionResults].entry 0.. MS
* section[sectionResults].entry only Reference(ChEtocLabObservation or
                                                      ChEtocPathologyObservation or
                                                      ChEtocRadiologyObservation or
                                                      ChEtocCardiologyObservation or
                                                      ChEtocBodyWeightObservation or
                                                      ChEtocBodyHeightObservation)

// ------- Composition.section: pregnancy -------
* section contains sectionPregnancyHx 0..1 MS
* section[sectionPregnancyHx] ^short = "Contains informaion about pregnancy"
* section[sectionPregnancyHx].title 1..1 MS
* section[sectionPregnancyHx].title ^short = "Pregnancy"
* section[sectionPregnancyHx].code 1..1 MS
* section[sectionPregnancyHx].code = LNC#10162-6 "History of pregnancies Narrative"
* section[sectionPregnancyHx].text MS
* section[sectionPregnancyHx].section 0..0
* section[sectionPregnancyHx].entry 0..1 MS
* section[sectionPregnancyHx].entry only Reference(ChEtocPregnancyStatusObservation)


// ------- Composition.section: careplans -------?????
* section contains sectionPlanOfCare 0..1 MS
* section[sectionPlanOfCare] ^short = "Contains information about careplans"
* section[sectionPlanOfCare].title 1..1 MS
* section[sectionPlanOfCare].title ^short = "Careplans"
* section[sectionPlanOfCare].code 1..1 MS
* section[sectionPlanOfCare].code = LNC#18776-5 "Plan of care note"
* section[sectionPlanOfCare].text MS
* section[sectionPlanOfCare].section 0..0
* section[sectionPlanOfCare].entry 0.. MS
* section[sectionPlanOfCare].entry only Reference(ChEtocCarePlan)

// ------- Composition.section: attachment -------??????
* section contains sectionAttachment 0..1 MS
* section[sectionAttachment] ^short = "Contains attachments (whatever is considered as important)"
* section[sectionAttachment].title 1..1 MS
* section[sectionAttachment].title ^short = "Attachments"
* section[sectionAttachment].code 1..1 MS
* section[sectionAttachment].code = LNC#55107-7 "Addendum Document"
* section[sectionAttachment].text MS
* section[sectionAttachment].section 0..0
* section[sectionAttachment].entry 0.. MS
* section[sectionAttachment].entry only Reference(ChEtocAttachment)

