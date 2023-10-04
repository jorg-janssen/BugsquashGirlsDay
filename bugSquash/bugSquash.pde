// variabelen:
int snelheid = 1;
String naam = "Sjakie";

/*
 Bovenaan het programma staan "variabelen". Een variabele wordt gebruikt om iets in te onthouden, bijvoorbeeld
 de snelheid en een naam. De oranje woordjes vóór de variabele geven aan wat voor soort gegevens er onthouden moet worden,
 hier een int (een heel getal) en een String (een tekst). 

 Verder bestaat ieder Processing-programma in ieder geval uit de "methoden" setup() en draw(). Dat zie je hieronder. 
 Het groene woordje void hoort niet bij de naam van de methode en spreken we niet uit. De haakjes achter de naam 
 spreken we ook niet uit. In zo'n methode (tussen { en }) staan de opdrachten die het programma moet doen, steeds 
 afgesloten met ; In de methode kun je een paar dingen doen: bijvoorbeeld andere methoden laten uitvoeren 
 en de waarden van variabelen gebruiken en aanpassen. 
 
 In de methode setup() wordt alles klaargezet. In de methode draw() draait het programma echt.
*/

// methoden:
void setup() { 
  fullScreen(); // de groene opdracht is een ingebouwde methode, die maakt het programma fullscreen
  bugSquashSetup(); // dit is een zelfgemaakte methode, de inhoud daarvan vind je op het tabblad "basis"
  println(naam); // met deze methode kun je iets laten zien in de console, de zwarte balk onderaan (leuk en handig, maar het komt niet in beeld in het uiteindelijke spel)
}


void draw() {
  bugSquashDraw(snelheid, naam); // hier zie je dat snelheid en naam worden doorgeven naar de rest van het programma
}

// De methode mousePressed() heb je nodig als je iets wil doen met muiskliks (of touchscreen-aanrakingen)
void mousePressed() {
  bugSquashMousePressed();
}
