
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 1 Ballot

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [Issue #10](https://github.com/hl7ch/ch-etoc/issues/10): Question of principle: Extraction of all questionnaire items to corresponding items in resources at sender site or not. See discussion in #10.
* [Issue #17](https://github.com/hl7ch/ch-etoc/issues/17): Restrict Questionnaire to information needed to display to the end user.
* [Issue #18](https://github.com/hl7ch/ch-etoc/issues/18): Questionnaire support for various specialties (use cases): The questionnaire(s) should be designed to support various different use cases in the sense, that only the relevant information per specialty (to be referred) is displayed, either by allowing more than one instance of questionnaires in the IG, each of them representaing part of the "super questionnaire" or by using adaptive forms. Use case dependent contraints in the questionnaire will be subject of furhter disussions.
* [Issue #19](https://github.com/hl7ch/ch-etoc/issues/19): Questionnaire support for expression based population and advanced behavior.

#### Follow up of changes in CH ORF
* [ORF Issue #31](https://github.com/hl7ch/ch-orf/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shonw no more in the questionnaire. 
* [ORF Issue #50](https://github.com/hl7ch/ch-orf/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.  
* [ORF Issue #53](https://github.com/hl7ch/ch-orf/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://fhir.ch/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html)).
* [ORF Issue #57](https://github.com/hl7ch/ch-orf/issues/57): Added 'GLN' to organization ([Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).
* [ORF Issue #60](https://github.com/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7ch/ch-orf/issues/63):   Added patients marital status to the [Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://fhir.ch/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)). 
* [ORF Issue #64](https://github.com/hl7ch/ch-orf/issues/64): Add patients language of correspondance to the [Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://fhir.ch/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF Issue #65](https://github.com/hl7ch/ch-orf/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://fhir.ch/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF Issue #80](https://github.com/hl7ch/ch-orf/issues/80): Expansion of the [questionnaire](http://fhir.ch/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](http://fhir.ch/ig/hl7ch/ch-orf/Coverage-CoverageSelfPatient.html) or [related person](http://fhir.ch/ig/hl7ch/ch-orf/Coverage-CoverageSelfRelatedPerson.html) as self-payer.
* [ORF Issue #84](https://github.com/hl7ch/ch-orf/issues/84): Copy receiver is ment to receive a copy from the order and all evolving results thereof.
* [ORF Issue #91](https://github.com/hl7ch/ch-orf/issues/91): Change source of the codes for [desired accommodation](http://fhir.ch/ig/hl7ch/ch-orf/ValueSet-ch-orf-vs-desiredaccommodation.html).
* [ORF Issue #101](https://github.com/hl7ch/ch-orf/issues/101): Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Added
* [Issue #22](https://github.com/hl7ch/ch-etoc/issues/22): Various attachments now possible.

#### Changed / Updated
* [Issue #4](https://github.com/hl7ch/ch-etoc/issues/4): Reference to IPAG report added in home.
* [Issue #14](https://github.com/hl7ch/ch-etoc/issues/14): Definition of eToc questionnaire corrected.
* [Issue #15](https://github.com/hl7ch/ch-etoc/issues/15): Examples: Incongruence between questionnaireresponse and servicerequest.
* [Issue #39](https://github.com/hl7ch/ch-etoc/issues/39): Cardinality for Questionnaire and QR in Composition set to 1..1 after voting on objection 7.4.22.

#### Issues resolved without amendment
* [Issue #20](https://github.com/hl7ch/ch-etoc/issues/20): CH eTOC Service Request - Definitions medication statement instead of medication card.
* [Issue #23](https://github.com/hl7ch/ch-etoc/issues/23): One recipient only.

#### Negative comments which could not be resolved during the ballot
Walter Wellauer, Cistec AG: The initial STU 1 ballot version of eToc required the Form Filler / Questionnaire Filler actor to provide redundant information in the QuestionnaireResponse and in the transaction or document bundle, with the corresponding ressources referenced in the ServiceRequest Ressource. This hindered the Form Filler implementing a combined front end / back end data acquisition and thus providing the data with complementary processes, was not feasible for the user experience as the enduser was presented a lot of information of no interest at the form filler and form receiver side and required the Form Filler actor  to extract alle the data of the QuestionnaireResponse before transmitting it to the FromReceiver, which is not foreseen be [SDC](http://build.fhir.org/ig/HL7/sdc/workflow.html#form-filling).  All these issues led to the implementation feedback from Projectathon 2021, where the most significant discussion was held in issue#10, corresponding to issue#17 and issue#18 - with emphasis of the missing usability.

None of the relevant suggestions of the feedback was adopted since then (we agree, that issue#19 needs more time to elaborate though). On the contrary there has been implemented a game changer, as in the ORF Composition profile the Questionnaire and QuestionnaireReponse Ressources have been changed to optionality (which makes sense for some derivates of the ORF profile like Lab Order), but have not been declared mandatory in the CH eTOC to restore the preconditions of the balloted version. The effect is worse than before. If Questionnaires / QuestionnaireResponses are optional, the main benefit of interchanging forms in the context of TransitionOcCare are gone, as it needs only one player who doesn’t provide a QuestionnaireResponse that all the other actors (any transaction receiver in B2B context, Form Receiver, QuestionnaireReceiver or EPR Document Consumer) to implement proprietiary form integration as it is the actual practise but has its well known downsides for the overall interoperability.

The IG author argues with a decision taken to adapt to IPS at one meeting with IPAG around a year ago. Whilst the concrete informative value of such a statement is marginal for the concrete implementation, we state that the actual IG and post balloting version corresponds very little - if even – to the IPS. The IPS does not address e.g. ServiceRequests or notes (see issues#10), Notes are not part of the IPAG recommendation neither, maybe the IG authors choice, and could be extracted out of a form (QuestionnaireReponse) by the Form Receiver, be it in a B2B transaction or as a EPR document consumer if needed, if the QuestionnaireResponse was mandatory, but only with the essential information needed to be presented to the end user in the UI.

The actual version is not considered ready for implementation as Standard of Trial Use on one hand and on the other hand differs in the  very essential optionality of QuestionnaireResponses from the initially balloted version tested at Projcetathon 2021 by our company. [Issue #10](https://github.com/hl7ch/ch-etoc/issues/10)


Daniel Ratschiller, Cistec AG: From an HIS provider's point of view, the current state of IG eToc is still too immature to be used concretely in everyday hospital life. Perhaps too many different ingredients have been thrown together to do justice to everyone and everything, but it will be very difficult to find a uniform line for referral processes across different systems. Primary care providers will have a difficult time developing healthcare solutions on this basis that will be accepted by healthcare professionals. I would recommend reviewing the original intended goals of IPAG, possibly reducing its scope and focusing on promising use cases. [Issue #21](https://github.com/hl7ch/ch-etoc/issues/21)