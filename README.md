# gufo2alloy

Download RapidMiner 9.7 (studio or educational, no payment is needed) or later
Run RapidMiner, go to Settings -> Preferences -> Start-Up
Enable "Initialize Extensions" and copy the "Extensions Directory" path
Shut down RapidMiner
Copy "rmx_ontology.jar" and "rmx_text-ANY-9.3.1.jar" into the directory "Extensions"
Run RapidMiner
Import "OWL+DL2Alloy.xml"
Import "Alloy2Owl.xml"

Additional requirements:
RapidMiner Python Scripting Extension

install Python for every Process
install these libraries:
	bs4
	pathlib
	request
	pandas
	time
	bs4
	rdflib
	ontospy
