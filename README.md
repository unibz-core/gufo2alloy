# gufo2alloy
* "OWL+DL2Alloy.xml" is the process by which any .ttl/.rdf theory can be converted into alloy specifications
* "Alloy2Owl.xml" is the process by which a theory populated with the corressponding Alloy simulation can be generated

## Installation
* Download RapidMiner 9.7 or later (studio or educational, no payment is needed) 
* Run RapidMiner, 
* Go to Settings -> Preferences -> Start-Up
* Enable "Initialize Extensions" and copy the "Extensions Directory" path
* Shut down RapidMiner
* Copy "rmx_ontology.jar" and "rmx_text-ANY-9.3.1.jar" into the directory "Extensions"
* Run RapidMiner
* Import "OWL+DL2Alloy.xml"
* Import "Alloy2Owl.xml"

## Additional requirements:

* RapidMiner Python Scripting Extension
* Install Python for every Process
* Install these libraries:
* * bs4
* * pathlib
* * request
* * pandas
* * time
* * bs4
* * rdflib
* * ontospy
