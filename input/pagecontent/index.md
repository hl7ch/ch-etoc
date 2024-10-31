### Purpose
The CH eTransition of Care (CH eTOC) Implementation Guide defines the content of a referral from a GP to the hospital, to a specialist, from one hospital to another etc.

CH eTOC is intended primarily for use in directional information exchange and for the use in the SWISS EPR. It however may be implemented in other settings too.

<div markdown="1" class="stu-note">

[Significant changes, open and closed issues.](changelog.html)

</div>

**Download:**
You can download this implementation guide in [npm format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Foundation    
This Implementation Guide uses FHIR defined resources. For details on HL7 FHIR R4 see [http://hl7.org/fhir/r4](http://hl7.org/fhir/r4).

Because the Implementation Guide relies heavily on the FHIR Resources Questionnaire and QuestionnaireResponse, forms are addressed here as Questionnaires.
  
This Implementation Guide is derived from the [CH Order & Referral by Form (CH ORF) Implementation Guide (CH ORF)](https://fhir.ch/ig/ch-orf/3.0.0/index.html) which relies on HL7 Structured Data Capture Implementation Guide, see [SDC](https://hl7.org/fhir/uv/sdc/STU3/) and uses the Swiss Core Profiles, see [CH Core](https://fhir.ch/ig/ch-core/5.0.0/index.html).

April 7, 2022 the HL7 Switzerland Technical Committee discussed #39 and finally voted to set cardinality for the Questionnaire and QuestionnaireResponse to 1.. in the composition resource thus making the use of Questionnaires and QuestionnaireResponses mandatory (see also [CH ORF](https://fhir.ch/ig/ch-orf/3.0.0/index.html)).

Applications claiming for conformance with a CH ORF derived implementation guide shall:     
Render (and in case of the Questionnaire Filler allow for data entry) all elements of a questionnaire in the user interface (e.g. on screen, in print). 
Grouping of items and the order of items within shall be adequately reproduced according to the questionnaire.

Vendors of applications with Questionnaire Filler/Questionnaire Receiver actors are strongly recommended to implement interfaces to other applications (such as HIS and PACS) at least for all data in the generics elements of questionnaires.

In the 3rd report of the Interprofessional Working Group on Electronic Patient Record (IPAG) [eDischarge Report](https://www.e-health-suisse.ch/upload/documents/Bericht_IPAG_eTOC_eUeberweisungsbericht.pdf), recommendations are formulated that are important for the inter-professional exchange of information during transitions of treatment (transition of care). The information relevant to treatment shall be be described in an exchange format that makes suggestions for structuring the content of interprofessional data content.  

#### Relation to the International Patient Summary
At the IPAG working group meeting in February 2021, it was decided that a first version of CH eTOC shall be based on the the HL7 IPS-UV specification, especially regarding the structure. See also the table below where the sections of both formats are compared.

However, this version of CH eTOC still allows many free text entries. The reason for this is that, according to IPAG, the items shall be implemented as text in a first step.
It can be expected, that users will copy and paste results: it seems reasonable to have multiple entries for the lab, but other findings are usually in free text form and therefore it makes sense to copy all findings in one copy and paste action.
 
Clinical content uses mostly the same resources as the IPS. The resource definitions are however constrained from FHIR base definitions and CH Core definitions and NOT from CH IPS or UV IPS. This decision was made in order to focus on the sections relevant to CH eTOC and to minimize the unexpected effects of future changes within the IPS.
    

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th>IPS Section</th>
            <th>CH eTOC Section</th>
            <th>Profile used in CH eTOC</th>
            <th>Comments (on differences)</th>
        </tr>
        <tr>
            <td>IPS Medication Summary</td>
            <td>Medication</td>
            <td><a href="https://fhir.ch/ig/ch-core/5.0.0/StructureDefinition-ch-core-medicationstatement.html">CH Core MedicationStatement</a></td>
            <th>-</th>
        </tr>
        <tr>
            <td>IPS Allergies and Intolerances</td>
            <td>Allergies and intolerances</td>
            <td><a href="StructureDefinition-ch-etoc-allergyintolerance.html">CH eTOC Allergy Intolerance</a></td>
            <th>-</th>
        </tr>
        <tr>
            <td rowspan="2">IPS Problems</td>
            <td rowspan="2">Problems</td>
            <td><a href="StructureDefinition-ch-etoc-primary-diagnosis.html">CH eTOC Primary Diagnosis Condition</a></td>
            <td rowspan="2">CH eTOC allows to distinguish between primary and secondary diagnosis, both are referenced in this section.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-etoc-secondary-diagnosis.html">CH eTOC Secondary Diagnosis Condition</a></td>
        </tr>
        <tr>
            <td>IPS History of Procedures</td>
            <td>History of Procedures</td>
            <td><a href="StructureDefinition-ch-etoc-procedure.html">CH eTOC Procedure</a></td>
            <th>-</th>
        </tr>        
        <tr>
            <td>IPS Immunizations</td>
            <td>Immunizations</td>
            <td><a href="StructureDefinition-ch-etoc-immunization.html">CH eTOC immunizationstatus</a></td>
            <th>-</th>
        </tr>
        <tr>
            <td>IPS Medical Devices</td>
            <td>Medical devices</td>
            <td><a href="StructureDefinition-ch-etoc-device.html">CH eTOC Device</a></td>
            <th>-</th>
        </tr>
        <tr>
            <td rowspan="4">IPS Results</td>
            <td rowspan="6">Diagnostic results</td>
            <td><a href="StructureDefinition-ch-etoc-lab-observation.html">CH eTOC Lab Observation</a></td>
            <th rowspan="4">-</th>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-etoc-pathology-observation.html">CH eTOC Pathology Observation</a></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-etoc-radiology-observation.html">CH eTOC Radiology Observation</a></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-etoc-cardiology-observation.html">CH eTOC Cardiology Observation</a></td>
        </tr>
        <tr>
            <td rowspan="2">IPS Vital Signs</td>
            <td><a href="StructureDefinition-ch-etoc-bodyweight-observation.html">CH eTOC Body Weight Observation</a></td>
            <td rowspan="2">There is no Vital Signs section in CH eTOC, to avoid duplicate content.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-etoc-bodyheight-observation.html">CH eTOC Body Height Observation</a></td>
        </tr>
        <tr>
            <td>IPS History of Past Illness</td>
            <td>History of past illness</td>
            <td><a href="StructureDefinition-ch-etoc-illness.html">CH eTOC Past History of Illnesses Condition</a></td>
            <th>-</th>
        </tr>
        <tr>
            <td>IPS Functional Status</td>
            <td>Functional Status</td>
            <td><a href="StructureDefinition-ch-etoc-functionalstatus.html">CH eTOC Functional Status Condition</a></td>
            <th>-</th>
        </tr>
        <tr>
            <td>IPS Plan of Care</td>
            <td>-</td>
            <td>-</td>
            <td>This section is omitted in CH eTOC for the following reason: It is assumed that care plans will only be available as PDF files in the foreseeable future at best. Therefore, there is a need to provide care plans as attachments. The Attachments section is provided for this purpose.</td>
        </tr>
        <tr>
            <td>IPS Social History</td>
            <td>Social history</td>
            <td><a href="StructureDefinition-ch-etoc-socialhistory.html">CH eTOC Social History Condition</a></td>
            <th>-</th>
        </tr>
        <tr>
            <td rowspan="2">IPS History of Pregnancy</td>
            <td rowspan="2">Pregnancy</td>
            <td><a href="StructureDefinition-ch-etoc-pregnancystatus.html">CH eTOC Pregnancy Status Observation</a></td>
            <td rowspan="2">-</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-etoc-expecteddeliverydate.html">CH eTOC Expected Delivery Date Observation</a></td>
        </tr>
        <tr>
            <td>IPS Advance Directives</td>
            <td>-</td>
            <td>-</td>
            <td>Not defined (yet) in CH eTOC.</td>
        </tr>
        <tr>
            <td>IPS Alerts Section</td>
            <td>-</td>
            <td>-</td>
            <td>Not defined (yet) in CH eTOC.</td>
        </tr>
        <tr>
            <td>IPS Patient Story Section</td>
            <td>-</td>
            <td>-</td>
            <td>Not defined (yet) in CH eTOC.</td>
        </tr>
        <tr>
            <td rowspan="3">-</td>
            <td rowspan="3">Order and Referral</td>
            <td><a href="https://fhir.ch/ig/ch-orf/3.0.0/StructureDefinition-ch-orf-questionnaire.html">CH ORF Questionnaire</a></td>
            <td rowspan="3">Additional section in CH eTOC containing the data that supports the order and referral by form.</td>
        </tr>
        <tr>
            <td><a href="https://fhir.ch/ig/ch-orf/3.0.0/StructureDefinition-ch-orf-questionnaireresponse.html">CH ORF QuestionnaireResponse</a></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-etoc-servicerequest.html">CH eTOC Service Request</a></td>
        </tr>
        <tr>
            <td>-</td>
            <td>Purpose</td>
            <td><a href="StructureDefinition-ch-etoc-servicerequest.html">CH eTOC ServiceRequest</a></td>
            <td>Additional section in CH eTOC to provide information about the purpose/reason.</td>
        </tr>
        <tr>
            <td>-</td>
            <td>Attachments</td>
            <td><a href="https://fhir.ch/ig/ch-orf/3.0.0/StructureDefinition-ch-orf-documentreference.html">CH ORF DocumentReference</a></td>
            <td>Additional section to support multiple attachments (for anything considered important).</td>
        </tr>
    </tbody>
</table>

<sup>&#91;Table 1&#93;</sup> *Comparison between the sections of IPS and CH eTOC*


### Terminology
Value sets and codings are preliminary and not yet approved by eHealth Suisse.

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
     
