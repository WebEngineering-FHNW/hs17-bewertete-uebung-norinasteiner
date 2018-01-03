# WebEngineering Module, Graded Exercise

## Commit Proposal

Matriculation Number: 15-652-464

Project idea short description: 

Ich würde gerne ihre Socrative Idee umsetzen.
Priorität 1:
Es gibt die beschriebenen Schüler und Lehrer Sektion. 
Lehrer kann offene Fragen erfassen.
Schüler sehen alle Fragen und können diese beantworten.
Der Lehrer kann dann jeweils einen Bericht erstellen lassen.

Priorität 2:
Der Lehrer kann weitere Fragentypen erfassen wie zum Beispiel Multiple Choice Fragen.
Die Schüler finden die Fragen anhand des Gruppennamens und füllen sie aus. 

Priorität 3:
Die Lehrer Sektion ist Passwortgeschützt.


## Project confirmation

confirmed.

Die Passwort-Funktionalität würde ich rausnehmen.
Für diese Übung reicht es, wenn sich der user selbst als Schüler oder Lehrer identifiziert.

## Project delivery <to be filled by student>

How to start the project: (if other than `grailsw run-app`)

How to test the project:  (if other than `grailsw test-app`)

Project description:      (if other than `/index.html`) hs17-bewertete-uebung-norinasteiner/src/main/resources/public/index.html or http://localhost:8080/static/index.html

External contributions:

Other comments: 

I'm particular proud of: Das ist mein erstes Projekt, welches ich für das Web umgesetzt habe. Ich bin stolz darauf, 
dass es doch einiges an Funktionen enhält. Das von Grails beeinhaltende "Scaffolding" hat mir dabei geholfen. Ausserdem habe ich mich auch darauf konzentriert, dass ich ein schönes Design bekomme. 


## Project grading 

Description html is a bit sparse but fully valid.
The "Answer hinzufügen" link in "Question bearbeiten" leads to error 404.
Otherwise, the application works fine.

Functionality:
Basic navigation, user input, a little bit of validation (user input is not escaped when
putting back on the screen, so XSS attacks are possible), small domain with CRUD features.

Engineering:
commit log is fine. Nice testing of the CRUD operations! But one test fails:
"Test that the delete action deletes an instance if it exists" (teacher/question mixup, 
most likely a copy-paste error).
HTML is mostly valid with a few exceptions (button tag inside anchor tag).
Comments and naming is ok. Good use of Web MVC and layout.

I award an extra point for the nice home screen and logo.

Congratulations!
You created a nice web application with comprehensive testing and you made good use
of the Grails framework and Web MVC.

Total Grade: 5.8

