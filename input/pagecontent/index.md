### Purpose
The CH eTransition of Care (CH eTOC) Implementation Guide defines the content of a referral from a GP to the hospital, to a specialist, from one hospital to another etc.

CH eTOC is intended primarily for use in directional information exchange and for the use in the SWISS EPR. It however may be implemented in other settings too.

<div markdown="1" class="stu-note">

[Significant Changes, Open and Closed Issues](changelog.html)
</div>

**Download:**
You can download this implementation guide in [npm format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Foundation    
This Implementation Guide uses FHIR defined resources. For details on HL7 FHIR R4 see [http://hl7.org/fhir/r4](http://hl7.org/fhir/r4).

Because the Implementation Guide relies heavily on the FHIR Resources Questionnaire and QuestionnaireResponse, forms are addressed here as Questionnaires.
  
This Implementation Guide is derived from the [CH Order & Referral by Form (CH ORF) Implementation Guide (CH ORF)](http://build.fhir.org/ig/hl7ch/ch-orf/index.html) which relies on HL7 Structured Data Capture Implementation Guide, see [SDC](http://build.fhir.org/ig/HL7/sdc/) and uses the Swiss Core Profiles, see [CH Core](http://build.fhir.org/ig/hl7ch/ch-core/index.html).

April 7, 2022 the HL7 Switzerland Technical Committee discussed #39 and finally voted to set cardinality for the Questionnaire and QuestionnaireResponse to 1.. in the composition resource thus making the use of Questionnaires and QuestionnaireResponses mandatory (see also [CH ORF](http://build.fhir.org/ig/hl7ch/ch-orf/index.html)).

Applications claiming for conformance with an CH ORF derived implementation guide shall:
  
Render (and in case of the Questionnaire Filler allow for data entry) all elements of a questionnaire in the user interface (e.g. on screen, in print). 
Grouping of items and the order of items within shall be adequately reproduced according to the questionnaire.

Vendors of applications with Questionnaire Filler/Questionnaire Receiver actors are strongly recommended to implement interfaces to other applications (such as HIS and PACS) at least for all data in the generics elements of questionnaires.

In the [3rd report of the Interprofessional Working Group on Electronic Patient Dossiers (IPAG) eDischarge Report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2018/D/181206_eTOC-eUeberweisungsbericht-IPAG_d.pdf), recommendations are formulated that are important for the inter-professional exchange of information during transitions of treatment (transition of care). The information relevant to treatment shall be be described in an exchange format that makes suggestions for structuring the content of interprofessional data content.  

At the working group meeting in February 2021, it was decided that a first version of eTOC shall be based on the the [FHIR International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/).

However, this first version of CH eTOC still allows many free text entries. Reason: According to IPAG, in a first step, the items shall be implemented as text.
It can be expected, that users want to copy paste results: it seems sensible, to have multiple entries for lab, but other findings are mostly in freetext and therefore it makes sense to copy all findings in one copy-paste action.
 
Clinical content uses mostly the same resources as the IPS. The resource definitions are however constrained from FHIR base definitions and CH Core definitions and NOT from UVIPS. This decision was made in order to minimize unexpected impact of future changes in IPS and for compatibility with Swiss Core.
    

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
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-medicationstatement">CHCoreMedicationStatement</a></td>
            <td><a href="http://hl7.org/fhir/R4/medicationstatement.html">MedicationStatement</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-medication">CHCoreMedication</a></td>
            <td><a href="http://hl7.org/fhir/R4/medication.html">Medication</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-dosage">CHCoreDosage</a></td>
            <td><a href="http://hl7.org/fhir/R4/datatypes.html#Dosage">Dosage</a></td>
        </tr>
        <tr>
            <td>IPS Allergies and Intolerances</td>
            <td><a href="StructureDefinition-ch-etoc-allergyintolerance.html">ChEtocAllergyIntolerance</a></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-allergyintolerance">CHCoreAllergyIntolerance</a></td>
        </tr>
        <tr>
            <td>IPS Problem List</td>
            <td><a href="StructureDefinition-ch-etoc-primary-diagnosis.html">ChEtocPrimaryDiagnosisCondition</a></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-condition">CHCoreCondition</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="StructureDefinition-ch-etoc-secondary-diagnosis.html">ChEtocSecondaryDiagnosisCondition</a></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-condition">CHCoreCondition</a></td>
        </tr>
        <tr>
            <td>IPS Immunizations</td>
            <td><a href="StructureDefinition-ch-etoc-immunization.html">ChEtocImmunization</a></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-immunization">CHCoreImmunization</a></td>
        </tr>
        <tr>
            <td>IPS History of Procedures</td>
            <td><a href="StructureDefinition-ch-etoc-procedure.html">ChEtocProcedure</a></td>
            <td><a href="http://hl7.org/fhir/R4/procedure.html">Procedure</a></td>
        </tr>
        <tr>
            <td>IPS Medical Devices</td>
            <td><a href="StructureDefinition-ch-etoc-device.html">ChEtocDevice</a></td>
            <td><a href="http://hl7.org/fhir/R4/device.html">Device</a></td>
        </tr>
        <tr>
            <td>IPS Diagnostic Results</td>
            <td><a href="StructureDefinition-ch-etoc-lab-observation.html">ChEtocLabObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="StructureDefinition-ch-etoc-pathology-observation.html">ChEtocPathologyObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="StructureDefinition-ch-etoc-radiology-observation.html">ChEtocRadiologyObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="StructureDefinition-ch-etoc-cardiology-observation.html">ChEtocCardiologyObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="StructureDefinition-ch-etoc-bodyheight-observation.html">ChEtocBodyHeightObservation</a></td>
            <td><a href="http://hl7.org/fhir/StructureDefinition/bodyheight">HL7BodyHeight</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="StructureDefinition-ch-etoc-bodyweight-observation.html">ChEtocBodyWeightObservation</a></td>
            <td><a href="http://hl7.org/fhir/StructureDefinition/bodyweight">HL7BodyWeight</a></td>
        </tr>
        <tr>
            <td>IPS Past history of illnesses</td>
            <td><a href="StructureDefinition-ch-etoc-illness.html">ChEtocPastHistoryofIllnessesCondition</a></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-condition">CHCoreCondition</a></td>
        </tr>
        <tr>
            <td>IPS Pregnancy</td>
            <td><a href="StructureDefinition-ch-etoc-pregnancystatus.html">ChEtocPregnancyStatusObservation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="StructureDefinition-ch-etoc-expecteddeliverydate.html">CH eToc Expected Delivery Date Observation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
        <tr>
            <td>IPS Social History</td>
            <td><a href="StructureDefinition-ch-etoc-socialhistory.html">ChEtocSocialHistoryCondition</a></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-condition">CHCoreCondition</a></td>
        </tr>
        <tr>
            <td>IPS IFunctional Status</td>
            <td><a href="StructureDefinition-ch-etoc-functionalstatus.html">ChEtocFunctionalStatusCondition</a></td>
            <td><a href="http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-condition">CHCoreCondition</a></td>
        </tr>
        <tr>
            <td>IPS Advance Directives</td>
            <td>Not supported yet</td>
            <td>-</td>
        </tr>
    </tbody>
</table>

<sup>&#91;Table 1&#93;</sup> *Resources and datatypes for clinical content*

In addition to the [Composition (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.htmlhttps://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.html), the CH eTOC Composition provides a [sectionPurpose]( StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionPurpose).

CH eTOC  allows to distinguish between primary and secondary diagnosis; both are referenced in [sectionProblems](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionProblems). [sectionAttachment](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionAttachment) allows n for attachment (whatever is considered as important).

There is no sectionVitalSigns  such as provided by the [IPS](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips-definitions.html#Composition.section:sectionVitalSigns). This is in order to prevent duplicate content.

SectionPlanOfCare is omitted for the following reason: It can be assumed that careplans will be available at best as pdf files for the foreseeable future. There is therefore a need to provide careplans as an attachment. This is what the Attachment section is for.

All other sections for clinical content use the same wording for section titles as the  [Composition (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.htmlhttps://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Composition-uv-ips.html):

[sectionMedications](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionMedications)     
[sectionImmunizations](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionImmunizations)        
[sectionAllergies](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionAllergies)     
[sectionPastIllnessHx](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionPastIllnessHx)      
[sectionFunctionalStatus](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionFunctionalStatus)      
[sectionProceduresHx](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionProceduresHx)      
[sectionSocialHistory](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionSocialHistory)      
[sectionMedicalDevices](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionMedicalDevices)      
[sectionResults](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionResults)      
[sectionPregnancyHx](StructureDefinition-ch-etoc-composition-definitions.html#Composition.section:sectionPregnancyHx)     


As a consequence of the above CH eTOC does not claim to be conformant to IPS for now.

Derivations for use cases in different disciplines are to be defined later. 

eTOC adds a ServiceRequest resource to the clinical content (according to the IPS) in order to depict the reason for a referral, the requested service and some additional information (e.g. coverage, room preference etc.). 

Header information such as sender, receiver etc. are considered as Generic Elements (to all sorts of referral, orders etc.) and follow the definition in the ORF Implementation Guide.  

Copy receiver is meant to receive a copy from the order and all evolving results thereof.

Actors, transactions and security considerations are covered in the corresponding sections of [CH ORF](http://build.fhir.org/ig/hl7ch/ch-orf/index.html)
    

### Terminology
Value sets and coding are preliminary and not yet approved by eHealth Suisse.

### Safety Considerations
This implementation guide defines data elements, resources, formats, and methods for exchanging healthcare data between different participants in the healthcare process. As such, clinical safety is a key concern. Additional guidance regarding safety for the specification’s many and various implementations is available at: [https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification does gives users the opportunity to observe data protection and data security regulations, its use does not guarantee compliance with these regulations. Effective compliance must be ensured by appropriate measures during implementation projects and in daily operations. The corresponding implementation measures are explained in the standard. 
In addition, the present specification can only influence compliance with the security regulations in the technical area of standardization. It cannot influence organizational and contractual matters.

### IP Statements
This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
     
