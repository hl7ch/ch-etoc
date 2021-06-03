/* Clinical part is modelled with the International Patient Summary (IPS)in Mind.*/


// -------- Corresponds to IPS Medication Summary ---------
Profile: ChEtocMedicationStatement
Parent: MedicationStatement
Id: ch-etoc-medicationstatement
Title: "CH EToc MedicationStatement"
Description: "Definition for the MedicationStatement resource in the context of electronic transition of care."
* . ^short = "CH eToc MedicationStatement"
* category from ChRadOrderVSExample (required)

// FHIR Medication Resource will not be used because it does not allow documentation of dosage

// -------- Corresponds to IPS Allergies and Intolerances ---------
Profile: ChEtocAllergyIntolerance
// Parent: ChAllergyIntolerance
Parent: AllergyIntolerance // Workaround
Id: ch-etoc-allergyintolerance
Title: "CH EToc AllergyIntolerance"
Description: "Definition for the AllergyIntolerance resource in the context of electronic transition of care."
* . ^short = "CH eToc AllergyIntolerance"
* text MS

// -------- Corresponds to IPS Problem List ---------
Profile: ChEtocDiagnosisCondition
Parent: Condition
Id: ch-etoc-diagnosis-condition
Title: "CH EToc Diagnosis Condition"
Description: "Definition for the Diagnosis Condition resource in the context of CH RAD-Order."
* . ^short = "CH EToc Diagnosis Condition"
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Problem List Item"
* code 1.. MS 
* code.text 1.. MS
* subject MS
* subject only Reference(ChCorePatient) 

// -------- Corresponds to IPS Immunizations ---------
Profile: ChEtocImmunization
Parent: Immunization
Id: ch-etoc-immunization
Title: "CH EToc Immunization"
Description: "Definition for the Immunization resource in the context of electronic transition of care."
* isSubpotent MS
* . ^short = "CH eToc Immunization"


// -------- Corresponds to IPS History of Procedures ---------
Profile: ChEtocProcedure
Parent: Procedure
Id: ch-etoc-procedure
Title: "CH EToc Procedure"
Description: "Definition for the Procedure resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"

// -------- Corresponds to IPSMedical Devices ---------
Profile: ChEtocDeviceObserver
Parent: Device
Id: ch-etoc-deviceobserver
Title: "CH EToc DeviceObserver"
Description: "Definition for the DeviceObserver resource in the context of electronic transition of care."
* . ^short = "CH eToc DeviceObserver"

Profile: ChEtocDeviceUseStatement
Parent: DeviceUseStatement
Id: ch-etoc-deviceusestatement
Title: "CH EToc DeviceUseStatement"
Description: "Definition for the DeviceUseStatement resource in the context of electronic transition of care."
* . ^short = "CH eToc DeviceUseStatement"

Profile: ChEtocDevice
Parent: Device
Id: ch-etoc-device
Title: "CH EToc Device"
Description: "Definition for the Device resource in the context of electronic transition of care."
* . ^short = "CH eToc Device"


// -------- Corresponds to IPS Diagnostic Results ---------
Profile: ChEtocADiagnosticReport
Parent: DiagnosticReport
Id: ch-etoc-diagnosticreport
Title: "CH EToc DiagnosticReport"
Description: "Definition for the DiagnosticReport resource in the context of electronic transition of care."
* . ^short = "CH eToc DiagnosticReport"

// -------- Corresponds to IPS Vital Signs ---------
/*Profile: ChEtocFVitalSigns
Parent: Vitalsigns
Id: ch-etoc-vital-signs
Title: "CH EToc Vital Signs"
Description: "Definition for the Vital Signs resource in the context of electronic transition of care."
* . ^short = "CH eToc FVital Signs"*/

Profile: ChEtocBodyHeightObservation
Parent: HL7BodyHeight
Id: ch-etoc-bodyheight-observation
Title: "CH EToc Body Height Observation"
Description: "Definition for the Body Height Observation resource in the context of CH EToc."
* . ^short = "CH EToc Body Height Observation"
* status MS
* code and code.coding[BodyHeightCode] and code.coding[BodyHeightCode].system and code.coding[BodyHeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.unit ^fixedString = "cm"
* valueQuantity.code ^fixedCode = #cm
* dataAbsentReason MS
* component 0..0

Profile: ChEtocBodyWeightObservation
Parent: HL7BodyWeight
Id: ch-etoc-bodyweight-observation
Title: "CH EToc Body Weight Observation"
Description: "Definition for the Body Weight Observation resource in the context of CH EToc."
* . ^short = "CH ETOC Body Weight Observation"
* status MS
* code and code.coding[BodyWeightCode] and code.coding[BodyWeightCode].system and code.coding[BodyWeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg
* dataAbsentReason MS
* component 0..0

// -------- Corresponds to IPS Past history of illnesses ---------
Profile: ChEtocPastHistoryofIllnessesCondition
Parent: Condition
Id: ch-etoc-past-history-of-illnesses-condition
Title: "CH EToc Pst History of Illnesses Condition"
Description: "Definition for the Past History of Illnesses Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Past History of Illness Condition"
* verificationStatus 0..0 MS
* category from ChRadOrderVSExample (required)

// -------- Corresponds to IPS Pregnancy ---------
Profile: ChEtocPregnancyStatusObservation
Parent: Observation
Id: ch-etoc-pregnancystatus-observation
Title: "CH EToc Pregnancy Status Observation"
Description: "Definition for the Pregnancy Status Observation resource in the context of CH EToc."
* . ^short = "CH ETOC Pregnancy Status Observation"
* status MS
* code and code.coding[BodyWeightCode] and code.coding[BodyWeightCode].system and code.coding[BodyWeightCode].code MS
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg
* dataAbsentReason MS
* component 0..0

// -------- Corresponds to IPS Social History ---------
Profile: ChEtocSocialHistoryCondition
/* IPS focusses on tobaco and alcohol abuse only; conscutevely, entires are defined as observation. EToc considers  Social History as
as broader; consecutverly entries are defined as conditions. tobaco and alcohol abuse shall be listed in problem list*/
Parent: Condition
Id: ch-etoc-social-history-condition
Title: "CH EToc Social History Condition"
Description: "Definition for the Social History Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Social History Condition"
* verificationStatus 0..0 MS
* category from ChRadOrderVSExample (required)

// -------- Corresponds to IPS IFunctional Status  ---------
Profile: ChEtocFunctionalStatusCondition
Parent: Condition
Id: ch-etoc-functional-status-condition
Title: "CH EToc Functional Status Condition"
Description: "Definition for the Functional Status Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Functional Status Condition"
* verificationStatus 0..0 MS
* category from ChRadOrderVSExample (required)

// -------- Corresponds to IPS Plan of Care ---------
Profile: ChEtocCarePlan
Parent: CarePlan
Id: ch-etoc-careplan
Title: "CH EToc Care Plan"
Description: "Definition for the Care Plan resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"

// -------- Corresponds to Advance Directives ---------
// Not supported yet


