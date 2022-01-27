
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 1 Ballot

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [Issue #10](https://github.com/hl7ch/ch-rad-order/issues/10): Question of principle: Extraction of all questionnaire items to corresponding items in resources at sender site or not. See discussion i t #10

* [Issue #17](https://github.com/hl7ch/ch-rad-order/issues/17): Restrict Questionnaire to information needed to display to the end user.

* [Issue #18](https://github.com/hl7ch/ch-rad-order/issues/18): Questionnaire support for various specialties (use cases): The questionnaire(s) should be designed to support various different use cases in the sense, that only the relevant information per specialty (to be referred) is displayed, either by allowing more than one instance of questionnaires in the IG, each of them representaing part of the "super questionnaire" or by using adaptive forms. Use case dependent contraints in the questionnaire will be subject of furhter disussions.

* [Issue #19](https://github.com/hl7ch/ch-rad-order/issues/19): Questionnaire support for expression based population and advanced behavior

* [Issue #22](https://github.com/hl7ch/ch-rad-order/issues/22): Value Sets are draft; will be refined with Swiss Rad. Society.

#### Follow up of changes in CH-orf
* [ORF Issue #31](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shonw no more in the questionnaire. 

* [ORF Issue #50](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
   
* [ORF Issue #53](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://build.fhir.org/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html)

* [ORF Issue #57](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/57):Added 'GLN' to organization ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).

* [ORF Issue #60](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/63):   Added patients marital status to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
    
* [ORF Issue #64](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/64): Add patients language of correspondance to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
  
* [ORF Issue #65](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)

* [ORF Issue #80](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/80): Expansion of the [questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfPatient.html) or [related person](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfRelatedPerson.html) as self-payer.

* [ORF Issue #84](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/84): Copy receiver is ment to receive a copy from the order and all evolving results thereof.

* [ORF Issue #91](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/91): Change source of the codes for [desired accommodation](http://build.fhir.org/ig/hl7ch/ch-orf/ValueSet-ch-orf-vs-desiredaccommodation.html).

* [ORF Issue #101](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/101) Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Added
* [Issue #19](https://github.com/hl7ch/ch-rad-order/issues/19): Caveats changed from boolean to 
yes/no/undetermined.

* [Issue #22](https://github.com/hl7ch/ch-rad-order/issues/22): Various attachments now possible

#### Changed / Updated
* [Issue #4](https://github.com/hl7ch/ch-rad-order/issues/4): Reference to IPAG report added in home.

* [Issue #14](https://github.com/hl7ch/ch-rad-order/issues/14): Definition of etoc questionnaire corrected.

* [Issue #15](https://github.com/hl7ch/ch-rad-order/issues/15): Examples: Incongruence between questionnaireresponse and servicereques

* [Issue #18](https://github.com/hl7ch/ch-rad-order/issues/18): Cardinality for Questionnaire and QR in Composition set to 0..1. Updated [documentation](http://fhir.ch/ig/ch-rad-order/index.html) accordingly.



#### Issues resolved without amendment
* [Issue #20](https://github.com/hl7ch/ch-orf/issues/20): CH eToc Service Request - Definitions medication statement instead of medication card
* [Issue #23](https://github.com/hl7ch/ch-orf/issues/23): One recipient only



