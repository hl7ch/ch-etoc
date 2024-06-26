// Clinical part is modelled with the International Patient Summary (IPS)in mind.


/* -------- Corresponds to IPS Medication Summary ---------  
--> uses CHCore */

// -------- Corresponds to IPS Allergies and Intolerances --------- 
Profile: ChEtocAllergyIntolerance
Parent: CHCoreAllergyIntolerance
Id: ch-etoc-allergyintolerance
Title: "CH eTOC Allergy Intolerance"
Description: "Definition for the Allergy Intolerance resource in the context of electronic transition of care."
* . ^short = "CH eTOC Allergy Intolerance"
* code MS
* code.text MS
* reaction.substance MS
* reaction.substance.text MS
* reaction.manifestation MS
* reaction.manifestation.text MS


// -------- Corresponds to IPS Problem List --------- 
Profile: ChEtocPrimaryDiagnosisCondition
Parent: CHCoreCondition
Id: ch-etoc-primary-diagnosis
Title: "CH eTOC Primary Diagnosis Condition"
Description: "Definition for the Primary Diagnosis Condition resource in the context of electronic tranisiton of care."
* . ^short = "CH eTOC Primary Diagnosis Condition"
* category 1..1 MS
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#primary-diagnosis
* category ^short = "Primary Diagnosis"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 

Profile: ChEtocSecondaryDiagnosisCondition
Parent: CHCoreCondition
Id: ch-etoc-secondary-diagnosis
Title: "CH eTOC Secondary Diagnosis Condition"
Description: "Definition for the Secondary Diagnosis Condition resource in the context of electronic transition of care."
* . ^short = "CH eTOC Secondary Diagnosis Condition"
* category 1..1 MS
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#secondary-diagnosis
* category ^short = "Secondary Diagnosis"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 


// -------- Corresponds to IPS Immunizations --------- 
Profile: ChEtocImmunization
Parent: CHCoreImmunization
Id: ch-etoc-immunization
Title: "CH eTOC immunizationstatus"
Description: "Definition for the immunizationstatus resource in the context of electronic transition of care."
//* isSubpotent MS
* . ^short = "CH eTOC immunizationstatus"
* vaccineCode MS
* vaccineCode.text MS
* occurrenceDateTime MS
//* occurrenceString MS


// -------- Corresponds to IPS History of Procedures --------- 
Profile: ChEtocProcedure
Parent: Procedure
Id: ch-etoc-procedure
Title: "CH eTOC Procedure"
Description: "Definition for the Procedure resource in the context of electronic transition of care."
* . ^short = "CH eTOC Procedure"
* status MS
* code MS
* code.text MS


// -------- Corresponds to IPS Medical Devices --------- 
Profile: ChEtocDevice
Parent: Device
Id: ch-etoc-device
Title: "CH eTOC Device"
Description: "Definition for the Device resource in the context of electronic transition of care."
* . ^short = "CH eTOC Device"
* deviceName MS
* deviceName.name MS
* deviceName.type MS


// -------- Corresponds to IPS Diagnostic Results --------- 
Profile: ChEtocLabObservation
Parent: Observation
Id: ch-etoc-lab-observation
Title: "CH eTOC Lab Observation"
Description: "Definition for the Lab Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Lab Observation"
* status MS
* code = LNC#26436-6 "Laboratory studies (set)"
* subject only Reference(ChCorePatient) 


Profile: ChEtocPathologyObservation
Parent: Observation
Id: ch-etoc-pathology-observation
Title: "CH eTOC Pathology Observation"
Description: "Definition for the Pathology Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Pathology Observation"
* status MS
* code = LNC#60570-9 "Pathology Consult note"
* subject only Reference(ChCorePatient) 


Profile: ChEtocRadiologyObservation
Parent: Observation
Id: ch-etoc-radiology-observation
Title: "CH eTOC Radiology Observation"
Description: "Definition for the Radiology Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Radiology Observation"
* status MS
* code = LNC#75490-3 "Radiology Note"
* subject only Reference(ChCorePatient) 


Profile: ChEtocCardiologyObservation
Parent: Observation
Id: ch-etoc-cardiology-observation
Title: "CH eTOC Cardiology Observation"
Description: "Definition for the cardiology Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Cardiology Observation"
// Supplementary to IPS
* status MS
* code = LNC#77412-5 "cardiology History and physical note"
* subject only Reference(ChCorePatient) 


Profile: ChEtocBodyHeightObservation
Parent: HL7BodyHeight
Id: ch-etoc-bodyheight-observation
Title: "CH eTOC Body Height Observation"
Description: "Definition for the Body Height Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Body Height Observation"
//* status MS
//* code and code.coding MS
//* code.coding ^slicing.discriminator.type = #value
//* code.coding ^slicing.discriminator.path = "resolve()"
//* code.coding ^slicing.rules = #open
* code.coding 1..1
/**/

* subject only Reference(ChCorePatient) 
//* code.coding[BodyHeightCode].code = LNC#8302-2 "Body height" // "Body Height, method unspecified"
//* valueQuantity MS
* valueQuantity.unit ^fixedString = "cm"
* valueQuantity.code ^fixedCode = #cm

Profile: ChEtocBodyWeightObservation
Parent: HL7BodyWeight
Id: ch-etoc-bodyweight-observation
Title: "CH eTOC Body Weight Observation"
Description: "Definition for the Body Weight Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Body Weight Observation"
//* status MS
//* code and code.coding MS
* code.coding 1..1
* subject only Reference(ChCorePatient) 
//* code = LNC#29463-7 "Body weight" // "Body Weight, method unspecified"
//* valueQuantity MS
* valueQuantity.unit ^fixedString = "kg"
* valueQuantity.code ^fixedCode = #kg


// -------- Corresponds to IPS Past history of illnesses --------- 
Profile: ChEtocPastHistoryofIllnessesCondition
Parent: CHCoreCondition
Id: ch-etoc-illness
Title: "CH eTOC Past History of Illnesses Condition"
Description: "Definition for the Past History of Illnesses Condition resource in the context of electronic transition of care."
* . ^short = "CH eTOC Past History of Illness Condition"
* category 1..1 MS
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#illness
* category ^short = "Illness"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 


// -------- Corresponds to IPS Pregnancy ---------  
Profile: ChEtocPregnancyStatusObservation
Parent: Observation
Id: ch-etoc-pregnancystatus
Title: "CH eTOC Pregnancy Status Observation"
Description: "Definition for the Pregnancy Status Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Pregnancy Status Observation"
* status MS
* code MS
* code = LNC#82810-3 "Pregnancy status"
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS


Profile: ChEtocPregnancyExpectedDeliveryDateObservation
Parent: Observation
Id: ch-etoc-expecteddeliverydate
Title: "CH eTOC Expected Delivery Date Observation"
Description: "Definition for the Expected Delivery Date Observation resource in the context of CH eTOC."
* . ^short = "CH eTOC Expected Delivery Date Observation"
* status MS
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS


// -------- Corresponds to IPS Social History --------- 
Profile: ChEtocSocialHistoryCondition
/* IPS focusses on tobaco and alcohol abuse only; conscutevely, entires are defined as observation. eTOC considers  Social History as
as broader; consecutverly entries are defined as conditions. tobaco and alcohol abuse shall be listed in problem list*/
Parent: CHCoreCondition
Id: ch-etoc-socialhistory
Title: "CH eTOC Social History Condition"
Description: "Definition for the Social History Condition resource in the context of electronic transition of care."
* . ^short = "CH eTOC Social History Condition"
* category 1..1 MS
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#social-history-condition
* category ^short = "Social History Condition"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 


// -------- Corresponds to IPS IFunctional Status  --------- 
Profile: ChEtocFunctionalStatusCondition
Parent: CHCoreCondition
Id: ch-etoc-functionalstatus
Title: "CH eTOC Functional Status Condition"
Description: "Definition for the Functional Status Condition resource in the context of electronic transition of care."
* . ^short = "CH eTOC Functional Status Condition"
* category 1..1 MS
* category = http://fhir.ch/ig/ch-etoc/CodeSystem/ch-etoc-conditioncategory#functional-status-condition
* category ^short = "Functioning, Disability"
* code 1.. MS 
* code.text 1.. MS
* subject only Reference(ChCorePatient) 


// -------- Corresponds to IPS Advance Directives ---------
// Not supported yet
/**/


