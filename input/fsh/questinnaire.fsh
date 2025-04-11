Profile: ExampleQuestionnaire
Parent: Questionnaire
Id: example.questionnaire
Title: "Example Questionnaire Profile"
Description: "A profile for an example questionnaire."

* item 1..*
* item.linkId 1..1 // Each item must have a linkId.
* item.text 1..1 // Each item must have text.
* item.type 1..1 // Each item must have a type.

Instance: ExampleQuestionnaireInstance
InstanceOf: Questionnaire
Title: "Example Questionnaire"
* status = #draft // Corrected status assignment with FHIR path
* item[0].linkId = "question1"
* item[0].text = "What is your name?"
* item[0].type = #string

* item[1].linkId = "question2"
* item[1].text = "What is your date of birth?"
* item[1].type = #date

* item[2].linkId = "question3"
* item[2].text = "What is your gender?"
* item[2].type = #choice
* item[2].answerOption[0].valueCoding = http://hl7.org/fhir/v3/AdministrativeGender#M // Male
* item[2].answerOption[1].valueCoding = http://hl7.org/fhir/v3/AdministrativeGender#F // Female
* item[2].answerOption[2].valueCoding = http://hl7.org/fhir/v3/AdministrativeGender#UN // Other
