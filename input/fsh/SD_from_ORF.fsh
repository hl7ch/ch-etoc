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
Title: "CH eTOC QuestionnaireResponse"
Description: "Definition for the QuestionnaireResponse resource in the context of electronic transition of care."
* . ^short = "CH eToc QuestionnaireResponse"








// ========== Noch anzupassen =====
// From etoc
// CH etoc Structure Defintions derived from CH ORF

Profile: ChEtocServiceRequest
Parent: ChOrfServiceRequest
Id: ch-etoc-servicerequest
Title: "CH eTOC ServiceRequest"
Description: "Definition for the ServiceRequest resource in the context of electronic transition of care."
* . ^short = "CH eToc ServiceRequest"
* intent MS
//------- category -------
* category 1..1 MS
//------- code -------

* code MS
* code ^short = "Use 'RSNA/LOINC Playbook (Full Version support)' OR Codes from 'ChEtocModalityType' but NOT both. 
In case of 'ChEtocModalityType' specify Imaging Request Details by means of orderDetail."
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    LncPlbFull 0..1 and 
    RdlxModType 0..1
* code.coding[LncPlbFull] MS
* code.coding[LncPlbFull] from LNCPLAYBFULL
* code.coding[RdlxModType] MS
//* code.coding[RdlxModType] from ChEtocModalityType 
//------- orderDetail -------
* orderDetail MS
* orderDetail.extension contains ChEtocOrderDetailType named orderDetailType 1..1 MS
* orderDetail ^slicing.discriminator.type = #pattern
* orderDetail ^slicing.discriminator.path = "$this"
* orderDetail ^slicing.rules = #open
* orderDetail contains 
    imagingRegion 0..* and    
    laterality 0..1 and // Cardinality of Laterality to be discussed
    viewType 0..*  and
    maneuverType 0..* and
    guidanceForAction 0..* 
* orderDetail[imagingRegion] MS
//* orderDetail[imagingRegion] from ChEtocImagingRegion
* orderDetail[laterality] MS
//* orderDetail[laterality] from ChEtocLaterality
* orderDetail[viewType] MS
//* orderDetail[viewType] from ChEtocViewType
* orderDetail[maneuverType] MS
//* orderDetail[maneuverType] from ChEtocManeuverType
* orderDetail[guidanceForAction] MS
//* orderDetail[guidanceForAction] from ChEtocGuidanceForAction
//------- performer (desiredRadiologist) -------
* performer ..1 MS
* performer ^short = "Desired radiologist for diagnostic / for intervention"
* performer only Reference(ChCorePractitionerRole) 
//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Diagnostic Question in free text: Coding of all diagnostic questions will be defined later."
* reasonCode.coding 0..0
* reasonCode.text 1..
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
    bodyHeight 0..1 and
    bodyWeight 0..1 and
    diagnosis 0..* and 
    caveats 0..* and
    previousImagingResults 0..* 
* supportingInfo[bodyHeight] MS
* supportingInfo[bodyHeight] only Reference(ChEtocBodyHeightObservation)
* supportingInfo[bodyWeight] MS
* supportingInfo[bodyWeight] only Reference(ChEtocBodyWeightObservation)
* supportingInfo[diagnosis] MS
* supportingInfo[diagnosis] only Reference(ChEtocDiagnosisCondition)
* supportingInfo[diagnosis] ^short = "Additional problem / secondary diagnosis"
* supportingInfo[caveats] MS
//* supportingInfo[caveats] only Reference(ChEtocCaveatCondition)
* supportingInfo[previousImagingResults] MS
* supportingInfo[previousImagingResults] ^short = "The ImagingStudy Resource supports DICOM WADO-RS and formats defined 
                                                  elsewhere (e.g. DICOM, JPEG ..)"
//* supportingInfo[previousImagingResults] only Reference(ChEtocImagingStudy or ChEtocMedia)

//------- bodySite -------
* bodySite MS
//* bodySite from ChEtocImagingFocus
//------- note -------
* note MS
* note.text MS


Extension: ChEtocOrderDetailType
Id: ch-etoc-order-detail-type
Title: "CH etoc Order Detail Type"
Description: "Extension to define the Type of Order Detail in context of CH etoc."
* value[x] 1..1
* value[x] only Coding
* value[x] ^short = "Type of Order Detail"
//* value[x] from ChEtocOrderDetailType


Extension: ChEtocCaveatType
Id: ch-etoc-caveat-type
Title: "CH etoc Caveat Type"
Description: "Extension to define the Type of Caveat in context of CH etoc."
* value[x] 1..1
* value[x] only Coding
* value[x] ^short = "Type of Caveat"
//* value[x] from ChEtocCaveatType


Profile: ChEtocDocument
Parent: ChOrfDocument
Id: ch-etoc-document
Title: "CH etoc Document"
Description: "Definition for the Bundle (document) resource in the context of CH etoc."
* . ^short = "CH eTOCBundle (document)"
* . ^definition = "Clinical part is modelled with the International Patient Summary (IPS)in Mind."
// ---------- Bundle.entry:Composition ----------
* entry[Composition].resource ^type.profile = Canonical(ChEtocComposition)


Profile: ChEtocComposition
Parent: ChOrfComposition
Id: ch-etoc-composition
Title: "CH eTOC Composition"
Description: "Definition for the Composition resource in the context of CH etoc."
* . ^short = "CH eTOC Composition"
// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry[ServiceRequest] ^type.targetProfile = Canonical(ChEtocServiceRequest)