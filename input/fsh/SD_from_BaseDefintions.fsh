Profile: ChEtocMedia
Parent: Media
Id: ch-etoc-media
Title: "CH eTOC Media"
Description: "Definition for the Media resource in the context of electronic transition of care."
* . ^short = "CH eTOC Media"
* status MS
* content MS
* content.contentType MS
* content.data MS
* content.title MS
* content.title ^short = "Provide filename and extension (e.g. \"shoulder_re_F_Muster_12021988.pdf\")"
* note 0..1 MS
* note.text 1..1 MS


Profile: ChEtocCarePlan
Parent: ChEtocMedia
Id: ch-etoc-careplan
Title: "CH eTOC Careplan"
Description: "Definition for the Careplan"

Profile: ChEtocAttachment
Parent: ChEtocMedia
Id: ch-etoc-attachment
Title: "CH eTOC Attachment"
Description: "Definition for the Attachment"