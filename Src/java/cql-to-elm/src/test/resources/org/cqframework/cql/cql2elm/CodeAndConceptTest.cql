library CodeAndConceptTest

codesystem "SNOMED-CT:2014": 'http://snomed.info/sct' version '2014'
codesystem "ICD-9CM:2014": '2.16.840.1.113883.6.103' version '2014'
codesystem "ICD-9CM3:2014": '2.16.840.1.113883.6.104' version '2014'
codesystem "ICD-10:2014": '2.16.840.1.113883.6.3' version '2014'
code "XYZ Code": 'XYZ' from "SNOMED-CT:2014" display 'XYZ Code'
code "ABC Code": 'ABC' from "ICD-9CM:2014" display 'ABC Code'
concept "XYZ Concept": { "XYZ Code", "ABC Code" } display 'XYZ Concept'

define CodeRef: "XYZ Code"
define ConceptRef: "XYZ Concept"
define CodeSelector: Code 'XYZ' from "SNOMED-CT:2014" display 'XYZ Code'
define CodeInstanceSelector: Code { code: 'XYZ', display: 'XYZ Code', system: 'http://snomed.info/sct', version: '2014' }
define ConceptSelector: Concept { Code 'XYZ' from "SNOMED-CT:2014" display 'XYZ Code', Code 'ABC' from "ICD-9CM:2014" } display 'XYZ Concept'
define ConceptInstanceSelector: Concept { codes: { CodeSelector, Code 'ABC' from "ICD-9CM:2014" }, display: 'XYZ Concept' }
