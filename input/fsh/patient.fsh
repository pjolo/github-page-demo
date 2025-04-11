Profile: CovidDiagnosis
Parent: Condition
Id: covid-diagnosis
Title: "Covid Diagnosis"
Description: "How to report COVID"
* code = $icd#U07.1
* severity from CovidSeverityVS (required)
* subject only Reference(Patient)
* extension contains ConditionCertainty named certainty 0..1 MS
* extension contains Laterality named laterality 0..1 MS

Alias: $icd = http://hl7.org/fhir/sid/icd-10-cm

ValueSet: CovidSeverityVS
Id: CovidSeverityVS
Title: "CovidSeverityVS"
Description: "Values for COVID severity"
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-severity
* include $sct#442452003 "Life threatening severity (qualifier value)"

Alias: $sct = http://snomed.info/sct

Instance: DiagnosisExample
InstanceOf: CovidDiagnosis
Usage: #example
Title: "Diagnosis Example"
Description: "Diagnosis Example"
* subject.reference = "Patient/JaneDoe"
* code = $icd#U07.1
* severity = $sct#24484000 "Severe"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/Laterality"	
* extension[=].valueCodeableConcept = $sct#51440002 "Bilateral"


Instance: JaneDoe
InstanceOf: Patient
Usage: #example
Title: "JaneDoe"
Description: "Patient"
* name.family = "Doe"
* name.given = "Jane"

Extension: ConditionCertainty
Id: condition-certainty
Title: "Condition Certainty"
Description: "The certainty of diagnosis"
* value[x] only CodeableConcept
* value[x] from ConditionCertaintyVS

Extension: Laterality
Id: Laterality
Title: "Laterality"
Description: "Laterality"
* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/ValueSet/bodysite-laterality (required)

ValueSet: ConditionCertaintyVS
Id: ConditionCertaintyVS
Title: "ConditionCertaintyVS"
Description: "Degree of confidence the condition is present"
* $sct#415684004 "Supspected (qualifier vlaue)"
* $sct#410592001 "Probably present (qualifier value)"
* $sct#410605003 "Confirmed present (qualifier value)" 


CodeSystem: PatrickCS
Id: PatrickCS
Title: "PatrickCS"
Description: "Patricks Codesystem"
* #1 "Code1"
* #2 "Code2"
* #3 "Code3"
* #4 "Code4"

Alias: $pat = http://example.org/CodeSystem/PatrickCS

ValueSet: PatrickVS
Id: PatrickVS
Title: "PatrickVS"
Description: "A ValueSet from Patrick"
* $pat#1 "Code1"
* $pat#2 "Code2"
* $pat#3 "Code3"

Profile: PatricksMedication
Parent: Medication
Id: PatricksMedication
Title: "PatricksMedication"
Description: "Medication"
* form ^short = "Form der Medikation"

Extension: TestExtenstionMedication
Id: TestExtenstionMedication
Title: "TestExtenstionMedication"
Description: "This is a Test"
* value[x] only string

Instance: MedicationExample
InstanceOf: PatricksMedication
Usage: #example
Title: "MedicationExample"
Description: "Example"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/TestExtenstionMedication"	
* extension[=].valueString = "Aspirin"

// @Name: Complex Extensions
// @Description: Examples of extensions with sub-extensions. Note that an extension cannot have BOTH a value and extensions.

Extension: PatientContactDetails
Id:        patient-contact-details
Title:     "Patient Contact Details"
Description: "Details about a patient's contact information. This extension is used on the Patient resource."
* insert ExtensionContext(Patient)
* extension contains
    homeAddress 1..1 MS and
    homePhone 0..1 MS and
    homeEmail 0..1 MS
* extension[homeAddress].value[x] only Address
* extension[homePhone].value[x] only ContactPoint
* extension[homePhone].valueContactPoint.system = #phone
* extension[homeEmail].value[x] only ContactPoint
* extension[homeEmail].valueContactPoint.system = #email

// Definitions of in-line extensions
* insert DocumentExtension (
    homeAddress,
    "Home Address",
    "The home address of the patient.")
* insert DocumentExtension (
    homePhone,
    "Home Phone Number",
    "The home phone number of the patient.")
* insert DocumentExtension (
    homeEmail,
    "Home Email Address",
    "The home email address of the patient.")

// This rule set limits the application of an extension to the given path
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

// The strings defined for short and definition should not be quoted, and any comma must be escaped with a backslash.
RuleSet: DocumentExtension(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}