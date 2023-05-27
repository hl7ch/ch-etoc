<div markdown="1" class="stu-note">
[Significant Changes, Open and Closed Issues](changelog.html)
</div>

**Download:**
You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).


### Purpose
The CH eTransition of Care (CH eTOC) Implementation Guide defines the content of a referral from a GP to the hospital, to a specialist, from one hispital to another etc.

CH eTOC is intended primarly for use in directional information exchange and for the use in the SWISS EPR. It however my be implemented in other settings too.


### Foundation    
This Implementation Guide uses FHIR defined resources. For details on HL7 FHIR R4 see [http://hl7.org/fhir/r4](http://hl7.org/fhir/r4)>.

Because the Implementation Guide relies heavily on the FHIR Resources Questionnaire and QuestionnaireResponse, forms are addressed here as Questionnaires.
  
This Implementation Guide is derived from the [CH Order & Referral by Form (CH ORF) Implementation Guide (CH ORF)](http://build.fhir.org/ig/hl7ch/ch-orf/index.html) which relies on HL7 Structured Data Capture Implementation Guide, see [SDC](http://build.fhir.org/ig/HL7/sdc/) and uses the Swiss Core Profiles, see [CH Core](http://build.fhir.org/ig/hl7ch/ch-core/index.html).

April 7, 2022 the the HL7 Switzerland Technical Committee disccussed #39 and finally voted to set cardinality for the questionnaie and questionnaire response to 1.. in the composition resource thus making the use of questionnaires and questionnaireResponses mandatory (see also [CH ORF](http://build.fhir.org/ig/hl7ch/ch-orf/index.html)).

Applications claiming for conformance with an CH ORF derived implementation guide shall:
  
Render (and in case of the Questionnaire Filler allow for data entry) all elements of a questionnaire in the user interface (e.g. on screen, in print). 
Grouping of items and the order of items within shall be adequately reproduced according to the questionnaire.

Vendors of applications with Questionnaire Filler/Questionnaire Receiver actors are strongly recommended to implement interfaces to other applications (such as HIS and PACS) at least for all data in the generics elements of questionnaires.

In the [3rd report of the Interprofessional Working Group on Electronic Patient Dossiers (IPAG) eDischarge Report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2018/D/181206_eTOC-eUeberweisungsbericht-IPAG_d.pdf), recommendations are formulated that are important for the inter-professional exchange of information during transitions of treatment (transition of care). The information relevant to treatment shall be be described in an exchange format that makes suggestions for structuring the content of interprofessional data content.  

At the working group meeting in February 2021, it was decided that a first version of eTOC shall be based on the the [FHIR International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/).

However, this first version of CH eTOC still allows many free text entries. Entries to be assumed 
Clinical content uses mostly the same resources as the IPS. The resource definitions are however constrained from FHIR base definitions and Swiss Core definitions and NOT from UVIPS. This decision was made in order to minimize unexpected impact of future changes in IPS and for compatibility with Swiss Core.
    

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th>Corresponding section in the IPS</th>
            <th>Resource / Datatype</th>
            <th>Derived from</th>
        </tr>
        <tr>
            <td>IPS Medication Summary</td>
            <td><a href="http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medicationstatement">CH EMED MedicationStatement</a></td>
            <td><a href="http://hl7.org/fhir/R4/medicationstatement.html">MedicationStatement</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medication">CH EMED Medication</a></td>
            <td><a href="http://hl7.org/fhir/R4/medication.html">Medication</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-dosage">CH EMED Dosage</a></td>
            <td><a href="http://hl7.org/fhir/R4/datatypes.html#Dosage">Dosage</a></td>
        </tr>
        <tr>
            <td>IPS Allergies and Intolerances</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-allergyintolerance">ChEtocAllergyIntolerance</a></td>
            <td><a href="http://fhir.ch/ig/ch-allergyintolerance/StructureDefinition/ch-allergyintolerance">ChAllergyIntolerance</a></td>
        </tr>
        <tr>
            <td>IPS Problem List</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-primary-diagnosis">ChEtocPrimaryDiagnosisCondition</a></td>
            <td><a href="http://hl7.org/fhir/R4/condition.html">Condition</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-secondary-diagnosis">ChEtocSecondaryDiagnosisCondition</a></td>
            <td><a href="http://hl7.org/fhir/R4/condition.html">Condition</a></td>
        </tr>
        <tr>
            <td>IPS Immunizations</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-immunization">ChEtocImmunization</a></td>
            <td><a href="http://fhir.ch/ig/ch-vacd/StructureDefinition/ch-vacd-immunization">ChVacdImmunization</a></td>
            <td></td>
        </tr>
        <tr>
            <td>IPS History of Procedures</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-procedure">ChEtocProcedure</a></td>
            <td><a href="http://hl7.org/fhir/R4/prozedure.html">Prozedure</a></td>
        </tr>
        <tr>
            <td>IPS Medical Devices</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-device">ChEtocDevice</a></td>
            <td><a href="http://hl7.org/fhir/R4/device.html">Device</a></td>
        </tr>
        <tr>
            <td>IPS Diagnostic Results</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-lab-observation">ChEtocLabObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-pahtology-observation">ChEtocPathologyObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-radiolology-observation">ChEtocRadiologyObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-cardiolology-observation">ChEtocCardiologyObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-bodyheight-observation">ChEtocBodyHeightObservation</a></td>
            <td><a href="http://hl7.org/fhir/StructureDefinition/bodyheight">HL7BodyHeight</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-bodyweight-observation">ChEtocBodyWeightObservation</a></td>
            <td><a href="http://hl7.org/fhir/StructureDefinition/bodyweight">HL7BodyWeight</a></td>
        </tr>
        <tr>
            <td>IPS Past history of illnesses</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-illness">ChEtocPastHistoryofIllnessesCondition</a></td>
            <td><a href="http://hl7.org/fhir/R4/condition.html">Condition</a></td>
        </tr>
        <tr>
            <td>IPS Pregnancy</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-pregnancystatus">ChEtocPregnancyStatusObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-expecteddeliverydate">CH eToc Expected Delivery Date Observation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td>IPS Social History</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-socialhistory">ChEtocSocialHistoryCondition</a></td>
            <td><a href="http://hl7.org/fhir/R4/condition.html">Condition</a></td>
        </tr>
        <tr>
            <td>IPS IFunctional Status</td>
            <td><a href="http://fhir.ch/ig/ch-etoc/StructureDefinition/ch-etoc-functionalstatus">ChEtocFunctionalStatusCondition</a></td>
            <td><a href="http://hl7.org/fhir/R4/condition.html">Condition</a></td>
        </tr>
        <tr>
            <td>IPS Advance Directives</td>
            <td>Not supported yet</td>
        </tr>
    </tbody>
</table>

<sup>&#91;Table 1&#93;</sup> *Resources and datatypes for clinical content*

In addition to the [Composition (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.htmlhttps://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.html), the CH eTOC Composition provides a [sectionPurpose](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/StructureDefinition-ch-etoc-composition-definitions.html#Composition.sectionPurpose).

CH eTOC  alllows to distinguish between primary and secondary diagnosis; both are referenced in [sectionProblems](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/StructureDefinition-ch-etoc-composition-definitions.html#Composition.sectionProblems). [sectionAttachment](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/section:sectionAttachment) allowsnfor attachments (whatever is considered as important).

There is no sectionVitalSigns  such as provided by the [IPS](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips-definitions.html#Composition.section:sectionVitalSigns). This is in order to prevent duplicate content.

SectionPlanOfCare is omitted for the following reason: It can be assumed that careplans will be available at best as pdf files for the foreseeable future. There is therefore a need to provide careplans as an attachment. This is what the Attachment section is for.

All other secctions for clinical content use the same wording for section titles as the  [Composition (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.htmlhttps://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.html):

[sectionMedications](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/StructureDefinition-ch-etoc-composition-definitions.html#Composition.sectionMedications) 
[sectionImmunizations](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/StructureDefinition-ch-etoc-composition-definitions.html#Composition.sectionImmunizations) 
[sectionAllergies](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/sectionAllergies) 
[sectionPastIllnessHx](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/sectionPastIllnessHx) 
[sectionFunctionalStatus](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/ection:sectionFunctionalStatus) 
[sectionProceduresHx](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/sectionProceduresHx) 
[sectionSocialHistory](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/sectionSocialHistory) 
[sectionMedicalDevices](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/sectionMedicalDevices) 
[sectionResults](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/ection:sectionResults) 
[sectionPregnancyHx](https://build.fhir.org/ig/hl7ch/ch-etoc/branches/main/sectionPregnancy) 


As a consequence of the above CH eTOC does not claim to be conformant to IPS for now.

Derivations for use cases in different disciplines are to be defined later. 

eTOC adds a ServiceRequest resource to the clinical content (according to the IPS) in order to depict the reason for a referral, the requested service and some additional information (e.g. coverage, room preferance etc.). 

Header information such as sender, receiver etc. are condsidered as Generic Elements (to all sorts of referral, orders etc.) and follow the definition in the ORF Implementation Guide.  

Copy receiver is ment to receive a copy from the order and all evolving results thereof.

Actors, transactions and security considerations are covered in the corresponding sections of [CH-ORF](http://build.fhir.org/ig/hl7ch/ch-orf/index.html)
    

### Terminology
Value sets and coding are preliminary and not yet approved by eHealth Suisse.
     
