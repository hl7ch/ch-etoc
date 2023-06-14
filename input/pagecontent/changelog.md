
All significant changes to this FHIR implementation guide will be documented on this page.   

### v1.1.0 - HL7 Switzerland STU 2 Ballot

#### Open Issues
See also open issues on [GitHub](https://github.com/hl7ch/ch-etoc/issues).

#### Added
##### Adopted from CH ORF
* [ORF Issue #71](https://github.com/hl7ch/ch-orf/issues/71): Added Initiator and his relationship to to the patient.
* [ORF Issue #72](https://github.com/hl7ch/ch-orf/issues/72): Added Patient consent.
* [ORF Issue #73](https://github.com/hl7ch/ch-orf/issues/73): Added Entry date, discharge Date and Organization of stationary episode antecedent to requested service (e.g spitex).
* [Issue #106](https://github.com/hl7ch/ch-orf/issues/106): Changed Cardinality of Contact Person from 0..1 to 0..*.* [ORF Issue #61](https://github.com/hl7ch/ch-orf/issues/61): Added Family doctor.
  
##### Added in CH eTOC
* [Issue #59](https://github.com/hl7ch/ch-etoc/issues/59): Added examples for AllergyIntolerance (Penicillineallergie), LabObservation(Haemoglobin), LabObservation (HbA1c), PathologyObservation (Biopsie Duodenum / Magen), RadiologyObservation (Thx ap / seitl.) and CardiologyObservation (EKG).
* [Issue #60](https://github.com/hl7ch/ch-etoc/issues/60): Added display values to CodeSystem Category of Condition.

#### Changed / Updated
##### Adopted from CH ORF
* [ORF Issue Issue #108](https://github.com/hl7ch/ch-orf/issues/108): Improve slicing that info entry[x] warnings are not shown.

##### Changed / Updated in CH eTOC
* [Issue #38](https://github.com/hl7ch/ch-etoc/issues/38): Added sections in composition referencing clinical content.
* [Issue #39](https://github.com/hl7ch/ch-etoc/issues/39): April 7, 2022 the the HL7 Switzerland Technical Committee disccussed #39 and finally voted to set cardinality for the questionnaie and questionnaire response to 1.. in the composition resource thus making the use of questionnaires and questionnaireResponses mandatory.
* [Issue #40](https://github.com/hl7ch/ch-etoc/issues/40): Cardinality of patient in questionnaire set to 1..1.
* [Issue #49](https://github.com/hl7ch/ch-etoc/issues/49): Careplan section dropped. Reason: It can be assumed that careplans will be available at best as pdf files for the foreseeable future. There is therefore a need to provide careplans as an attachment. This is what the Attachment section is for.
* [Issue #50](https://github.com/hl7ch/ch-etoc/issues/50): Dropped  CH eTOC Attachment. Attachments are now mapped to Composition.section:orderReferral.entry:DocumentReference.
* [Issue #54](https://github.com/hl7ch/ch-etoc/issues/54): Improved text in index.html.
* [Issue #58](https://github.com/hl7ch/ch-etoc/issues/58): Corrected title of immunizationstatus in questionnaire to "Impfstatus".
* [Issue #61](https://github.com/hl7ch/ch-etoc/issues/61): Corrected receiver.organization.gln to Organization.identifier:GLN.
* [Issue #62](https://github.com/hl7ch/ch-etoc/issues/62): Corrected discrepancies between profiles and questionnaire.
* [Issue #63](https://github.com/hl7ch/ch-etoc/issues/63): Corrected cardinality of appointment.location to 0..1.
* [Issue #64](https://github.com/hl7ch/ch-etoc/issues/64): Corrected cardinality of purpose.aim to 1..1. Added purpose.aim.detail in order to allow multible entries.
should be: http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN
* [Issue #65](https://github.com/hl7ch/ch-etoc/issues/65): Correctedd  "diagnosisList.primaryDiagnosis" and "diagnosisList.secondaryDiagnosis" to CamelCase.
* [Issue #67](https://github.com/hl7ch/ch-etoc/issues/67): Changed descriptions in ServiceRequest and questionnaire, details see [Issue #67](https://github.com/hl7ch/ch-etoc/issues/66).
* [Issue #68](https://github.com/hl7ch/ch-etoc/issues/68): Title of QuestionnaireResponseEtoc changed from QuestionniaireResponse Radiology Order to QuestionniaireResponse Medical Referral, (corresponding to ServiceRequest Medical Referral)
* [Issue #69](https://github.com/hl7ch/ch-etoc/issues/69): : Changed questionnaire linkid's medication.statement.medication and medication.medicationstatement.dosage to medication.medication and medication.dosage in order to be inline with other. likid's. Adapted representation in questionnaire.


### STU 1

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [Issue #10](https://github.com/hl7ch/ch-etoc/issues/10): Question of principle: Extraction of all questionnaire items to corresponding items in resources at sender site or not. See discussion in #10.
* [Issue #17](https://github.com/hl7ch/ch-etoc/issues/17): Restrict Questionnaire to information needed to display to the end user.
* [Issue #18](https://github.com/hl7ch/ch-etoc/issues/18): Questionnaire support for various specialties (use cases): The questionnaire(s) should be designed to support various different use cases in the sense, that only the relevant information per specialty (to be referred) is displayed, either by allowing more than one instance of questionnaires in the IG, each of them representaing part of the "super questionnaire" or by using adaptive forms. Use case dependent contraints in the questionnaire will be subject of further discussions.
* [Issue #19](https://github.com/hl7ch/ch-etoc/issues/19): Questionnaire support for expression based population and advanced behavior.

#### Follow up of changes in CH ORF
* [ORF Issue #31](https://github.com/hl7ch/ch-orf/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and no more shown in the questionnaire. 
* [ORF Issue #50](https://github.com/hl7ch/ch-orf/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.  
* [ORF Issue #53](https://github.com/hl7ch/ch-orf/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://fhir.ch/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html)).
* [ORF Issue #57](https://github.com/hl7ch/ch-orf/issues/57): Added 'GLN' to organization ([Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).
* [ORF Issue #60](https://github.com/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7ch/ch-orf/issues/63):   Added patients marital status to the [Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://fhir.ch/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)). 
* [ORF Issue #64](https://github.com/hl7ch/ch-orf/issues/64): Add patients language of correspondence to the [Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://fhir.ch/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF Issue #65](https://github.com/hl7ch/ch-orf/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://fhir.ch/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF Issue #80](https://github.com/hl7ch/ch-orf/issues/80): Expansion of the [questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](http://fhir.ch/ig/hl7ch/ch-orf/Coverage-CoverageSelfPatient.html) or [related person](http://fhir.ch/ig/hl7ch/ch-orf/Coverage-CoverageSelfRelatedPerson.html) as self-payer.
* [ORF Issue #84](https://github.com/hl7ch/ch-orf/issues/84): Copy receiver is ment to receive a copy from the order and all evolving results thereof.
* [ORF Issue #91](https://github.com/hl7ch/ch-orf/issues/91): Change source of the codes for [desired accommodation](http://fhir.ch/ig/hl7ch/ch-orf/ValueSet-ch-orf-vs-desiredaccommodation.html).
* [ORF Issue #101](https://github.com/hl7ch/ch-orf/issues/101): Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Added
* [Issue #22](https://github.com/hl7ch/ch-etoc/issues/22): Various attachment now possible.

#### Changed / Updated
* [Issue #4](https://github.com/hl7ch/ch-etoc/issues/4): Reference to IPAG report added in home.
* [Issue #14](https://github.com/hl7ch/ch-etoc/issues/14): Definition of eTOC questionnaire corrected.
* [Issue #15](https://github.com/hl7ch/ch-etoc/issues/15): Examples: Incongruence between questionnaireresponse and servicerequest.
* [Issue #20](https://github.com/hl7ch/ch-etoc/issues/20): CH eTOC Service Request - Definitions medication statement instead of medication card.
* [Issue #39](https://github.com/hl7ch/ch-etoc/issues/39): Cardinality for Questionnaire and QR in Composition set to 1..1 after voting on objection 7.4.22.


#### Issues resolved without amendment
* [Issue #23](https://github.com/hl7ch/ch-etoc/issues/23): One recipient only.
* [Issue #42](https://github.com/hl7ch/ch-etoc/issues/42) Purpose (Wozu wird der Patient zugewiesen?) allows to indicate "type of Spitex required for the patient (child-spitex, longterm, acute transitional care)", however as freetext. Reason: There are currently no generally accepted codes for spitex-services available. 

#### Negative comments which could not be resolved during the ballot
Walter Wellauer, Cistec AG: The initial STU 1 ballot version of eTOC required the Form Filler / Questionnaire Filler actor to provide redundant information in the QuestionnaireResponse and in the transaction or document bundle, with the corresponding ressources referenced in the ServiceRequest Ressource. This hindered the Form Filler implementing a combined front end / back end data acquisition and thus providing the data with complementary processes, was not feasible for the user experience as the enduser was presented a lot of information of no interest at the form filler and form receiver side and required the Form Filler actor  to extract alle the data of the QuestionnaireResponse before transmitting it to the FromReceiver, which is not foreseen be [SDC](http://build.fhir.org/ig/HL7/sdc/workflow.html#form-filling).  All these issues led to the implementation feedback from Projectathon 2021, where the most significant discussion was held in issue#10, corresponding to issue#17 and issue#18 - with emphasis of the missing usability.

None of the relevant suggestions of the feedback was adopted since then (we agree, that issue#19 needs more time to elaborate though). On the contrary there has been implemented a game changer, as in the ORF Composition profile the Questionnaire and QuestionnaireReponse Ressources have been changed to optionality (which makes sense for some derivates of the ORF profile like Lab Order), but have not been declared mandatory in the CH eTOC to restore the preconditions of the balloted version. The effect is worse than before. If Questionnaires / QuestionnaireResponses are optional, the main benefit of interchanging forms in the context of TransitionOcCare are gone, as it needs only one player who doesn’t provide a QuestionnaireResponse that all the other actors (any transaction receiver in B2B context, Form Receiver, QuestionnaireReceiver or EPR Document Consumer) to implement proprietiary form integration as it is the actual practise but has its well known downsides for the overall interoperability.

The IG author argues with a decision taken to adapt to IPS at one meeting with IPAG around a year ago. Whilst the concrete informative value of such a statement is marginal for the concrete implementation, we state that the actual IG and post balloting version corresponds very little - if even – to the IPS. The IPS does not address e.g. ServiceRequests or notes (see issues#10), Notes are not part of the IPAG recommendation neither, maybe the IG authors choice, and could be extracted out of a form (QuestionnaireReponse) by the Form Receiver, be it in a B2B transaction or as a EPR document consumer if needed, if the QuestionnaireResponse was mandatory, but only with the essential information needed to be presented to the end user in the UI.

The actual version is not considered ready for implementation as Standard of Trial Use on one hand and on the other hand differs in the  very essential optionality of QuestionnaireResponses from the initially balloted version tested at Projcetathon 2021 by our company. [Issue #10](https://github.com/hl7ch/ch-etoc/issues/10)


Daniel Ratschiller, Cistec AG: From an HIS provider's point of view, the current state of IG eTOC is still too immature to be used concretely in everyday hospital life. Perhaps too many different ingredients have been thrown together to do justice to everyone and everything, but it will be very difficult to find a uniform line for referral processes across different systems. Primary care providers will have a difficult time developing healthcare solutions on this basis that will be accepted by healthcare professionals. I would recommend reviewing the original intended goals of IPAG, possibly reducing its scope and focusing on promising use cases. [Issue #21](https://github.com/hl7ch/ch-etoc/issues/21)