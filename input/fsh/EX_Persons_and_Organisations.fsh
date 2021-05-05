Instance: ORderplacer 
InstanceOf: ChCorePractitioner
Title: "Dr. O. Rderplacer"
Description: "Example for Practitioner"
* name.family = "Rderplacer "
* name.given = "Otilie"
* name.prefix = "Dr."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #LS
* telecom[0].system = #email
* telecom[0].value = "allzeitbereit@example.com"

Instance: PraxisORderplacer 
InstanceOf: ChCoreOrganization
Title: "Gruppenpraxis Happy Docotors"
Description: "Example for Organization"
* name = "Gruppenpraxis Happy Docotors"

Instance: ORderfiller 
InstanceOf: ChCorePractitioner
Title: "Dr. O. Rderfiller"
Description: "Example for Practitioner"
* name.family = "Rderfiller"
* name.given = "Omar"
* name.prefix = "Dr."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #LS
* telecom[0].system = #email
* telecom[0].value = "roentgenblick@example.com"

Instance: SpitalORderfiller 
InstanceOf: ChCoreOrganization
Title: "Happy Hospital"
Description: "Example for Organization"
* name = "Happy Hospital"

Instance: RadiologieORderfiller 
InstanceOf: ChCoreOrganization
Title: "Radiology Dept. Happy Hospital"
Description: "Example for Organization"
* name = "Radiology Dept. Happy Hospital"

Instance: SUfferer 
InstanceOf: ChCorePatient
Title: "Susanna Ufferer"
Description: "Example for Patient"
* name.family = "Ufferer"
* name.given = "Samuel"
* telecom[0].system = #phone
* telecom[0].value = "+41 79 999 99 99"
* telecom[1].system = #email
* telecom[1].value = "martina.muster@example.com"
* gender = #female 
* birthDate = "1995-01-27"
* address.line = "Leidensweg 15a"
* address.city = "Bern"
* address.postalCode = "3000"