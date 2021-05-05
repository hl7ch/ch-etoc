Profile: ChEtocCondition
Parent: Condition
Id: ch-etoc-condition
Title: "CH eTOC Condition"
Description: "Definition for the Condition resource in the context of electronic transition of care."
* . ^short = "CH eToc Condition"
* verificationStatus 0..0 MS
* category from ChRadOrderVSExample (required)

Profile: ChEtocMedicationStatement
Parent: MedicationStatement
Id: ch-etoc-medicationstatement
Title: "CH eTOC MedicationStatement"
Description: "Definition for the MedicationStatement resource in the context of electronic transition of care."
* . ^short = "CH eToc MedicationStatement"
* category from ChRadOrderVSExample (required)

Profile: ChEtocAllergyIntolerance
Parent: CHAllergyIntolerance
Id: ch-etoc-allergyintolerance
Title: "CH eTOC AllergyIntolerance"
Description: "Definition for the AllergyIntolerance resource in the context of electronic transition of care."
* . ^short = "CH eToc AllergyIntolerance"
* text MS

Profile: ChEtocImmunization
Parent: Immunization
Id: ch-etoc-immunization
Title: "CH eTOC Immunization"
Description: "Definition for the Immunization resource in the context of electronic transition of care."
* isSubpotent MS

* . ^short = "CH eToc Immunization"

Profile: ChEtocProcedure
Parent: ProcedureUvIps
Id: ch-etoc-procedure
Title: "CH eTOC Procedure"
Description: "Definition for the Procedure resource in the context of electronic transition of care."
* . ^short = "CH eToc Procedure"

Profile: ChEtocDeviceObserver
Parent: DeviceObserverUvIps
Id: ch-etoc-deviceobserver
Title: "CH eTOC DeviceObserver"
Description: "Definition for the DeviceObserver resource in the context of electronic transition of care."
* . ^short = "CH eToc DeviceObserver"

Profile: ChEtocDeviceUseStatement
Parent: DeviceUseStatement
Id: ch-etoc-deviceusestatement
Title: "CH eTOC DeviceUseStatement"
Description: "Definition for the DeviceUseStatement resource in the context of electronic transition of care."
* . ^short = "CH eToc DeviceUseStatement"

Profile: ChEtocDevice
Parent: Device
Id: ch-etoc-device
Title: "CH eTOC Device"
Description: "Definition for the Device resource in the context of electronic transition of care."
* . ^short = "CH eToc Device"

Profile: ChEtocADiagnosticReport
Parent: DiagnosticReport
Id: ch-etoc-diagnosticreport
Title: "CH eTOC DiagnosticReport"
Description: "Definition for the DiagnosticReport resource in the context of electronic transition of care."
* . ^short = "CH eToc DiagnosticReport"
