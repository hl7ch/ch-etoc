/* Clinical part is modelled with the International Patient Summary (IPS)in Mind.*/


// -------- Corresponds to IPS Medication Summary ---------  
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
* . ^short = "CH eToc Medirdiotion Statement"
* code MS
* code.text MS


// -------- Corresponds to IPS Allergies and Intolerances --------- 
Profile: ChEtocAllergyIntolerance
Parent: ChAllergyIntolerance
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


// -------- Corresponds to IPS Problem List --------- 
Profile: ChEtocPrimaryDiagnosisCondition
Parent: Condition
Id: ch-etoc-primary-diagnosis
Title: "CH eToc Primary Diagnosis Condition"
Description: "Definition for the Primary Diagnosis Condition resource in the context of CH RAD-Order."
* . ^short = "CH eToc Primary Diagnosis Condition"
* category 1..1 MS
* category from ChEtocConditionCategory
* category = ChEtocConditionCategory#primary-diagnosis
* category ^short = "Primary Diagnosis"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 

Profile: ChEtocSecondaryDiagnosisCondition
Parent: Condition
Id: ch-etoc-secondary-diagnosis
Title: "CH eToc Secondary Diagnosis Condition"
Description: "Definition for the Secondary Diagnosis Condition resource in the context of CH RAD-Order."
* . ^short = "CH eToc Secondary Diagnosis Condition"
* category 1..1 MS
* category from ChEtocConditionCategory
* category = ChEtocConditionCategory#secondary-diagnosis
* category ^short = "Secondary Diagnosis"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 


// -------- Corresponds to IPS Immunizations --------- 
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


// -------- Corresponds to IPS History of Procedures --------- 
Profile: ChEtocProcedure
Parent: Procedure
Id: ch-etoc-procedure
Title: "CH eToc Procedure"
Description: "Definition for the Procedure resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"
* status MS
* code MS
* code.text MS


// -------- Corresponds to IPSMedical Devices --------- 
Profile: ChEtocDevice
Parent: Device
Id: ch-etoc-device
Title: "CH eToc Device"
Description: "Definition for the Device resource in the context of electronic transition of care."
* . ^short = "CH eToc Device"
* deviceName MS
* deviceName.name MS
* deviceName.type MS


// -------- Corresponds to IPS Diagnostic Results --------- 
Profile: ChEtocLabObservation
Parent: Observation
Id: ch-etoc-lab-observation
Title: "CH eToc Lab Observation"
Description: "Definition for the Lab Observation resource in the context of CH eToc."
* . ^short = "CH eTOC Lab Observation"
* status MS
* code = LNC#26436-6 "Laboratory studies (set)"
* subject only Reference(ChCorePatient) 


Profile: ChEtocPathologyObservation
Parent: Observation
Id: ch-etoc-pahtology-observation
Title: "CH eToc Pathology Observation"
Description: "Definition for the Pathology Observation resource in the context of CH eToc."
* . ^short = "CH eToc Pathology Observation"
* status MS
* code = LNC#60570-9 "Pathology Consult note"
* subject only Reference(ChCorePatient) 


Profile: ChEtocRadiologyObservation
Parent: Observation
Id: ch-etoc-radiolology-observation
Title: "CH eToc Radiology Observation"
Description: "Definition for the Radiology Observation resource in the context of CH eToc."
* . ^short = "CH eToc Radiolology Observation"
* status MS
* code = LNC#75490-3 "Radiology Note"
* subject only Reference(ChCorePatient) 


Profile: ChEtocCardiologyObservation
Parent: Observation
Id: ch-etoc-cardiolology-observation
Title: "CH eToc Cardiology Observation"
Description: "Definition for the Cardiology Observation resource in the context of CH eToc."
* . ^short = "CH eToc Cardiolology Observation"
// Supplementary to IPS
* status MS
* code = LNC#77412-5 "Cardiology History and physical note"
* subject only Reference(ChCorePatient) 


Profile: ChEtocBodyHeightObservation
Parent: HL7BodyHeight
Id: ch-etoc-bodyheight-observation
Title: "CH eToc Body Height Observation"
Description: "Definition for the Body Height Observation resource in the context of CH eToc."
* . ^short = "CH eToc Body Height Observation"
* status MS
* code and code.coding[BodyHeightCode] and code.coding[BodyHeightCode].system and code.coding[BodyHeightCode].code MS
* subject only Reference(ChCorePatient) 
* valueQuantity MS
* valueQuantity.unit ^fixedString = "cm"
* valueQuantity.code ^fixedCode = #cm


Profile: ChEtocBodyWeightObservation
Parent: HL7BodyWeight
Id: ch-etoc-bodyweight-observation
Title: "CH eToc Body Weight Observation"
Description: "Definition for the Body Weight Observation resource in the context of CH eToc."
* . ^short = "CH eToc Body Weight Observation"
* status MS
* code and code.coding[BodyWeightCode] and code.coding[BodyWeightCode].system and code.coding[BodyWeightCode].code MS
* subject only Reference(ChCorePatient) 
* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg


// -------- Corresponds to IPS Past history of illnesses --------- 
Profile: ChEtocPastHistoryofIllnessesCondition
Parent: Condition
Id: ch-etoc-illness
Title: "CH eToc Past History of Illnesses Condition"
Description: "Definition for the Past History of Illnesses Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Past History of Illness Condition"
* category 1..1 MS
* category from ChEtocConditionCategory
* category = ChEtocConditionCategory#illness
* category ^short = "Illness"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 


// -------- Corresponds to IPS Pregnancy ---------  
Profile: ChEtocPregnancyStatusObservation
Parent: Observation
Id: ch-etoc-pregnancystatus
Title: "CH eToc Pregnancy Status Observation"
Description: "Definition for the Pregnancy Status Observation resource in the context of CH eToc."
* . ^short = "CH eToc Pregnancy Status Observation"
* status MS
* code MS
* code = LNC#82810-3 "Pregnancy status"
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS


Profile: ChEtocPregnancyExpectedDeliveryDateObservation
Parent: Observation
Id: ch-etoc-expecteddeliverydate
Title: "CH eToc Expected Delivery Date Observation"
Description: "Definition for the Expected Delivery Date Observation resource in the context of CH eToc."
* . ^short = "CH eToc Expected Delivery Date Observation"
* status MS
//* code MS
//* code from PregnancyExpectedDeliveryDateMethod (required)
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS


// -------- Corresponds to IPS Social History --------- 
Profile: ChEtocSocialHistoryCondition
/* IPS focusses on tobaco and alcohol abuse only; conscutevely, entires are defined as observation. eToc considers  Social History as
as broader; consecutverly entries are defined as conditions. tobaco and alcohol abuse shall be listed in problem list*/
Parent: Condition
Id: ch-etoc-socialhistory
Title: "CH eToc Social History Condition"
Description: "Definition for the Social History Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Social History Condition"
* category 1..1 MS
* category from ChEtocConditionCategory
* category = ChEtocConditionCategory#social-history-condition
* category ^short = "Social History Condition"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 


// -------- Corresponds to IPS IFunctional Status  --------- 
Profile: ChEtocFunctionalStatusCondition
Parent: Condition
Id: ch-etoc-functionalstatus
Title: "CH eToc Functional Status Condition"
Description: "Definition for the Functional Status Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Functional Status Condition"
* category 1..1 MS
* category from ChEtocConditionCategory
* category = ChEtocConditionCategory#functional-status-condition
* category ^short = "Funktionsfähigkeit, Behinderung"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 

// -------- Corresponds to IPS Plan of Care --------- 

Profile: ChEtocMedicalCarePlan
Parent: CarePlan
Id: ch-etoc-medical-careplan
Title: "CH eToc Care Plan"
Description: "Definition for the Care Plan resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"
* status MS
* intent MS
* category MS
// * category from ChEtocCarePlanContributors // not used
* title MS
* activity MS
* activity.outcomeCodeableConcept MS
* activity.outcomeCodeableConcept.text MS
* activity.detail MS
* activity.detail.code MS
* activity.detail.code.text MS


Profile: ChEtocNursingCarePlan
Parent: CarePlan
Id: ch-etoc-ursing-careplan
Title: "CH eToc Care Plan"
Description: "Definition for the Care Plan resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"
* status MS
* intent MS
* category MS
// * category from ChEtocCarePlanContributors // not used
* title MS
* activity MS
* activity.outcomeCodeableConcept MS
* activity.outcomeCodeableConcept.text MS
* activity.detail MS
* activity.detail.code MS
* activity.detail.code.text MS


// -------- Corresponds to Advance Directives ---------
// Not supported yet


