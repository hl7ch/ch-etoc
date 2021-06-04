/* Clinical part is modelled with the International Patient Summary (IPS)in Mind.*/


// -------- Corresponds to IPS Medication Summary ---------  Ready for 1. Ballot 
Profile: ChEtocMedicationCard
Parent: ChEmedMedicationCard
Id: ch-etoc-medicationcard
Title: "CH eToc Medication Card"
Description: "Definition for the Medication Card resource in the context of electronic transition of care."
* . ^short = "CH eToc Medication Card"
* medicationReference MS
* dosage MS
* dosage[nonstructured] MS

Profile: ChEtocMedicatiionStatement
Parent: ChEmedMedicationStatement
Id: ch-etoc-medicationstatement
Title: "CH eToc Medication Statement"
Description: "Definition for the Medication Statement resource in the context of electronic transition of care."
* . ^short = "CH eToc Medication Statement"
* code MS
* code.text MS

// -------- Corresponds to IPS Allergies and Intolerances --------- Ready for 1. Ballot 
Profile: ChEtocAllergyIntolerance
//Parent: ChAllergyIntolerance
Parent: AllergyIntolerance // Workaround
Id: ch-etoc-allergyintolerance
Title: "CH eToc Allergy Intolerance"
Description: "Definition for the Allergy Intolerance resource in the context of electronic transition of care."
* . ^short = "CH eToc Allergy Intolerance"
* code MS
* code.text MS
* reaction.substance MS
* reaction.substance.text MS
* reaction.manifestation MS
* reaction.manifestation.text MS

// -------- Corresponds to IPS Problem List --------- Ready for 1. Ballot
Profile: ChEtocDiagnosisCondition
Parent: Condition
Id: ch-etoc-diagnosis-condition
Title: "CH eToc Diagnosis Condition"
Description: "Definition for the Diagnosis Condition resource in the context of CH RAD-Order."
* . ^short = "CH eToc Diagnosis Condition"
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Problem List Item"
* code 1.. MS 
* code.text 1.. MS
* subject MS
* subject only Reference(ChCorePatient) 

// -------- Corresponds to IPS Immunizations --------- Ready for 1. Ballot 
Profile: ChEtocImmunizationSection
Parent: ChVacdImmunizationSection
Id: ch-etoc-immunizationsection
Title: "CH eToc Immunization Section"
Description: "Definition for the Immunization Section resource in the context of electronic transition of care."
//* isSubpotent MS
* . ^short = "CH eToc Immunization Section"
* vaccineCode MS
* vaccineCode.text MS
* occurrenceDateTime MS
* occurrenceString MS


// -------- Corresponds to IPS History of Procedures --------- Ready for 1. Ballot
Profile: ChEtocProcedure
Parent: Procedure
Id: ch-etoc-procedure
Title: "CH eToc Procedure"
Description: "Definition for the Procedure resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"
* status MS
* code MS
* code.text MS

// -------- Corresponds to IPSMedical Devices --------- Ready for 1. Ballot 
Profile: ChEtocDevice
Parent: Device
Id: ch-etoc-device
Title: "CH eToc Device"
Description: "Definition for the Device resource in the context of electronic transition of care."
* . ^short = "CH eToc Device"
* deviceName MS
* deviceName.name MS
* deviceName.type MS


// -------- Corresponds to IPS Diagnostic Results --------- Ready for 1. Ballot 
Profile: ChEtocADiagnosticReport
Parent: DiagnosticReport
Id: ch-etoc-diagnosticreport
Title: "CH eToc Diagnostic Report"
Description: "Definition for the Diagnostic Report resource in the context of electronic transition of care."
* . ^short = "CH eToc Diagnostic Report"
* status MS
* category MS 
* category from HL7DiagnosticServiceSection (required)
* code ^short = "Currently not used; leave coding and text empty."
* presentedForm MS
* presentedForm.title MS
* presentedForm.data MS

Profile: ChEtocLabObservation
Parent: Observation
Id: ch-etoc-lab-observation
Title: "CH eToc Lab Observation"
Description: "Definition for the Lab Observation resource in the context of CH eToc."
* . ^short = "CH eTOC Lab Observation"
* status MS
//* code and code.coding[BodyWeightCode] and code.coding[BodyWeightCode].system and code.coding[BodyWeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg
* dataAbsentReason MS
* component 0..0

Profile: ChEtocPathologyObservation
Parent: Observation
Id: ch-etoc-pahtology-observation
Title: "CH eToc Pathology Observation"
Description: "Definition for the Pathology Observation resource in the context of CH eToc."
* . ^short = "CH eToc Pathology Observation"
* status MS
//* code and code.coding[BodyWeightCode] and code.coding[BodyWeightCode].system and code.coding[BodyWeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg
* dataAbsentReason MS
* component 0..0

Profile: ChEtocRadiologyObservation
Parent: Observation
Id: ch-etoc-radiolology-observation
Title: "CH eToc Radiology Observation"
Description: "Definition for the Radiology Observation resource in the context of CH eToc."
* . ^short = "CH eToc Radiolology Observation"
* status MS
//* code and code.coding[BodyWeightCode] and code.coding[BodyWeightCode].system and code.coding[BodyWeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg
* dataAbsentReason MS
* component 0..0


// -------- Corresponds to IPS Vital Signs --------- Ready for 1. Ballot
/*Profile: ChEtocFVitalSigns
Parent: Vitalsigns
Id: ch-etoc-vital-signs
Title: "CH eToc Vital Signs"
Description: "Definition for the Vital Signs resource in the context of electronic transition of care."
* . ^short = "CH eToc FVital Signs"*/

Profile: ChEtocBodyHeightObservation
Parent: HL7BodyHeight
Id: ch-etoc-bodyheight-observation
Title: "CH eToc Body Height Observation"
Description: "Definition for the Body Height Observation resource in the context of CH eToc."
* . ^short = "CH eToc Body Height Observation"
* status MS
* code and code.coding[BodyHeightCode] and code.coding[BodyHeightCode].system and code.coding[BodyHeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* valueQuantity MS
* valueQuantity.unit ^fixedString = "cm"
* valueQuantity.code ^fixedCode = #cm
* component 0..0

Profile: ChEtocBodyWeightObservation
Parent: HL7BodyWeight
Id: ch-etoc-bodyweight-observation
Title: "CH eToc Body Weight Observation"
Description: "Definition for the Body Weight Observation resource in the context of CH eToc."
* . ^short = "CH eToc Body Weight Observation"
* status MS
* code and code.coding[BodyWeightCode] and code.coding[BodyWeightCode].system and code.coding[BodyWeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg
* component 0..0

// -------- Corresponds to IPS Past history of illnesses --------- Ready for 1. Ballot
Profile: ChEtocPastHistoryofIllnessesCondition
Parent: Condition
Id: ch-etoc-past-history-of-illnesses-condition
Title: "CH eToc Past History of Illnesses Condition"
Description: "Definition for the Past History of Illnesses Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Past History of Illness Condition"
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Problem List Item"
* code 1.. MS 
* code.text 1.. MS
* subject MS
* subject only Reference(ChCorePatient) 

// -------- Corresponds to IPS Pregnancy ---------  Ready for 1. Ballot
Profile: ChEtocPregnancyStatusObservation
Parent: Observation
Id: ch-etoc-pregnancystatus-observation
Title: "CH eToc Pregnancy Status Observation"
Description: "Definition for the Pregnancy Status Observation resource in the context of CH eToc."
* . ^short = "CH eToc Pregnancy Status Observation"
* status MS
* code MS
* code = LNC#82810-3
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* dataAbsentReason from DataAbsentReason (required)

Profile: ChEtocPregnancyExpectedDeliveryDateObservation
Parent: Observation
Id: ch-etoc-expecteddeliverydate-observation
Title: "CH eToc Expected Delivery Date Observation"
Description: "Definition for the Expected Delivery Date Observation resource in the context of CH eToc."
* . ^short = "CH eToc Expected Delivery Date Observation"
* status MS
* code MS
* code from PregnancyExpectedDeliveryDateMethod (required)
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* dataAbsentReason from DataAbsentReason (required)

// -------- Corresponds to IPS Social History --------- Ready for 1. Ballot
Profile: ChEtocSocialHistoryCondition
/* IPS focusses on tobaco and alcohol abuse only; conscutevely, entires are defined as observation. eToc considers  Social History as
as broader; consecutverly entries are defined as conditions. tobaco and alcohol abuse shall be listed in problem list*/
Parent: Condition
Id: ch-etoc-social-history-condition
Title: "CH eToc Social History Condition"
Description: "Definition for the Social History Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Social History Condition"
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Problem List Item"
* code 1.. MS 
* code.text 1.. MS
* subject MS
* subject only Reference(ChCorePatient) 

// -------- Corresponds to IPS IFunctional Status  --------- Ready for 1. Ballot
Profile: ChEtocFunctionalStatusCondition
Parent: Condition
Id: ch-etoc-functional-status-condition
Title: "CH eToc Functional Status Condition"
Description: "Definition for the Functional Status Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Functional Status Condition"
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Funktionsfähigkeit, Behinderung"
* code 1.. MS 
* code.text 1.. MS
* subject MS
* subject only Reference(ChCorePatient) 

// -------- Corresponds to IPS Plan of Care --------- Ready for 1. Ballot
Profile: ChEtocCarePlan
Parent: CarePlan
Id: ch-etoc-careplan
Title: "CH eToc Care Plan"
Description: "Definition for the Care Plan resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"
* status MS
* intent MS
* category MS
* category from ChEtocCarePlanContributors
* title MS
* activity MS
* activity.outcomeCodeableConcept MS
* activity.outcomeCodeableConcept.text MS
* activity.detail MS
* activity.detail.code MS
* activity.detail.code.text MS





// -------- Corresponds to Advance Directives ---------
// Not supported yet


