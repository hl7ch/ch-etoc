
Profile: ChEtocCarePlan
Parent: CarePlan
Id: ch-etoc-careplan
Title: "CH eTOC Careplan"
Description: "Definition for the Careplan"
* status MS
* intent MS
* careTeam MS
* subject only Reference(ChCorePatient)
* careTeam only Reference(ChEtocCareTeam)


Profile: ChEtocCareTeam
Title: "CH eTOC Careteam"
Parent: CareTeam
Description: "Defines who's involved in Careplan"
* participant MS
* participant.role MS
* participant.role from ParticipantRoles
