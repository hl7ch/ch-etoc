
// CH etoc Structure Defintions derived from CH ORF

Profile: ChEtocServiceRequest
Parent: ChOrfServiceRequest
Id: ch-etoc-servicerequest
Title: "CH eToc Service Request"
Description: "Definition for the ServiceRequest resource in the context of electronic transition of care.."
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
* code.text MS
* code ^short = "Currently intended as freetext"

/*------- orderDetail -------
Currently no use intended
*/

/*------- performer (desiredRadiologist) -------
Currently no use intended
*/

//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Diagnostic Question in free text: Coding of all diagnostic questions will be defined later."
* reasonCode.coding 0..0
* reasonCode.text 1.. MS
//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
* reasonReference only Reference(ChEtocDiagnosisCondition) 
//------- insurance -------
* insurance MS
* insurance only Reference(ChOrfCoverage)
//------- supportingInfo -------
* supportingInfo MS
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains
    diagnosis 0..* and 
    bodyHeight 0..1 and
    bodyWeight 0..1 and
    pregnancy 0..1 and

    historyofIllnesses 0..* and
    historyofProcedures 0..* and
    devices 0..* and
    socialHistory 0..1 and
    functionalStatus 0..* and    

    medicationcard 0..1 and // Medication Card contains n medications with dosages
    allergiesIntolerances 0..* and
    immunizations 0..* and

    labresults 0..* and
    pathologyresults 0..* and
    imagingresults 0..* and
    cardiologyresults 0..* and

 //   diagnosticReports 0..* and  // not used
    medicalCarePlans 0..* and 
    nursingCarePlans 0..

* supportingInfo[diagnosis] MS
* supportingInfo[diagnosis] only Reference(ChEtocDiagnosisCondition) 
* supportingInfo[diagnosis] ^short = "Additional problem / secondary diagnosis"
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

* supportingInfo[medicationcard] MS
* supportingInfo[medicationcard] only Reference(ChEtocMedicationCard)
* supportingInfo[medicationcard] ^short = "Medication Card contains n medications with dosages"
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

//* supportingInfo[diagnosticReports] MS
//* supportingInfo[diagnosticReports] only Reference(ChEtocDiagnosticReport) //not used

* supportingInfo[medicalCarePlans] MS
* supportingInfo[medicalCarePlans] only Reference(ChEtocMedicalCarePlan)

* supportingInfo[nursingCarePlans] MS
* supportingInfo[nursingCarePlans] only Reference(ChEtocNursingCarePlan)

/* ------- bodySite -------
Currently no use intended
*/
//------- note -------
* note MS
* note.text MS



//============================
/*Profile: CheTocQuestionnaire
Parent: ChOrfQuestionnaire
Title: "CH eTOC Questionnaire"
Id: ch-etoc-questionnaire
Description: "Definition for the Questionnaire resource in the context of electronic transition of care."
* . ^short = "CH eTOC Questionnaire"
*/


Profile: ChEtocQuestionnaireResponse
Parent: ChOrfQuestionnaireResponse
Id: ch-etoc-questionnaireresponse
Title: "CH eTOC Questionnaire Response"
Description: "Definition for the QuestionnaireResponse resource in the context of electronic transition of care."
* . ^short = "CH eToc Questionnaire Response"
