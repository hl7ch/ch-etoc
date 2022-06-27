
// CH etoc Structure Defintions derived from CH ORF

Profile: ChEtocServiceRequest
Parent: ChOrfServiceRequest
Id: ch-etoc-servicerequest
Title: "CH eToc Service Request"
Description: "Definition for the ServiceRequest resource in the context of electronic transition of care."
* . ^short = "CH eToc Service Request"
* . ^definition = "This IG adheres to the FHIR International Patient Summary (IPS) Implementation Guide. Clinical content uses
mostly the same resources as th IPS; some minor differences are explained in comments to the resources affected. The resouce definitions are however constrained from FHIR base definitions and Swiss Core definitions 
and NOT from UVIPS. This decision was made in order to minimize unexpected impact of future changes in IPS and for compatibility with 
Swiss Core. eToc adds a ServiceReequest resource to the clinical content (according to the IPS) in order to depict the reason for a referral, the requested 
service and some additional information (e.g. coverage, room preferance etc.). Resources for such purpose are referenced by the ServiceRequest
resource. Header information such as sender, receiver etc. are condsidered as Generic Elements (to all sorts of referral, orders etc.) 
and follow the definition in the ORF Implementation Guide.  

This IG follows the Swiss eHealth Exchange Format Handbook Part I: Service Requests V 0.13. The Questionnaire resource gives gudiance for 
the implementaion of the user interface."

* intent MS
/*------- category -------
Reserved for specification of a particular form für referrals to clinical subspecialities. As this is a generic referral, leave empty.
*/

//------- code -------
* code MS
* code ^short = "Ziel"
* code.text MS
//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Begründung"
* reasonCode.text MS
//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
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
    cardiologyresults 0..* and
    Careplan 0..*

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
* supportingInfo[immunizations] only Reference(ChEtocImmunizationSection)

* supportingInfo[labresults] MS
* supportingInfo[labresults] only Reference(ChEtocLabObservation)
* supportingInfo[pathologyresults] MS
* supportingInfo[pathologyresults] only Reference(ChEtocPathologyObservation)
* supportingInfo[imagingresults] MS
* supportingInfo[imagingresults] only Reference(ChEtocRadiologyObservation)
* supportingInfo[cardiologyresults] MS
* supportingInfo[cardiologyresults] only Reference(ChEtocCardiologyObservation)

* supportingInfo[Careplan] MS
* supportingInfo[Careplan] only Reference(ChEtocCareplanMedia)


/* ------- bodySite -------
Currently no use intended
*/
//------- note -------
* note MS
* note.text MS


Profile: ChEtocDocument
Parent: ChOrfDocument
Id: ch-etoc-document
Title: "CH Etoc Document"
Description: "Definition for the Bundle (document) resource in the context of electronic transition of care."
* . ^short = "CH Etoc Bundle (document)"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Imaging Service Request (Concept commonly used in DICOM). 
Consequently one CH eToc Document contains one eToc ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."

// ---------- Bundle.entry:Composition ----------
* entry[Composition].resource ^type.profile = Canonical(ChEtocComposition)


Profile: ChEtocComposition
Parent: ChOrfComposition
Id: ch-etoc-composition
Title: "CH Etoc Composition"
Description: "Definition for the Composition resource in the context of electronic transition of care."
* . ^short = "CH Etoc Composition"
* title = "Zuweisungsschreiben"
* category = SCT#721927009 // Zuweisungsschreiben 
* type = SCT#419891008 // Nicht näher bezeichnetes Dokument

// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry[ServiceRequest] ^type.targetProfile = Canonical(ChEtocServiceRequest)

Profile: ChEtocQuestionnaireResponse
Parent: ChOrfQuestionnaireResponse
Id: ch-etoc-questionnaireresponse
Title: "CH eTOC Questionnaire Response"
Description: "Definition for the QuestionnaireResponse resource in the context of electronic transition of care."
* . ^short = "CH eToc Questionnaire Response"

Profile: ChEtocEpisodeOfCare
//Parent: ChOrfEpisodeOfCare
Parent: EpisodeOfCare
Id: ch-etoc-epidsodeofcare
Title: "CH eTOC Episode of Care"
Description: "Definition for the EpisodeOfCare resource in the context of electronic transition of care."
* . ^short = "CH eToc Episode of Care"
* extension contains ChEtocHospitalCourse named hospitalCourse 0..* MS

Extension: ChEtocHospitalCourse
Id: ch-etoc-hospitalcourse
Title: "Hospital Course"
Description: "Documentation of the Hospital Course, e.g. Medical, Nursing etc."
* ^context[0].type = #fhirpath
* ^context[0].expression = "EpisodeOfCare"
* valueReference only Reference(ChEtocHospitalCourseMedia)
* valueReference ^short = "valueReference"