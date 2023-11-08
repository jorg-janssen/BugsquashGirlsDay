// variabelen:
int snelheid = 1;
String naam = "Sjakie";

/*
 Bovenaan in het programma staan "variabelen". Een variabele wordt gebruikt om iets te 
 onthouden dat later toegepast kan worden, bijvoorbeeld  de snelheid en een naam. De oranje
 woordjes vóór de variabele geven aan wat voor soort gegevens er onthouden moet worden,
 hier een int (een heel getal) en een String (een tekst). 

 Verder bestaat ieder Processing-programma in ieder geval uit de "methoden" setup() en draw(). 
 Dat zie je hieronder. In zo'n methode, tussen { en }, staan de opdrachten die het programma moet
 uitvoeren, steeds afgesloten met ; 
 
 In de methode kun je een paar dingen doen: bijvoorbeeld weer andere methoden aanroepen 
 en de waarden van variabelen gebruiken en aanpassen. 
 
 In de methode setup() wordt alles klaargezet. In de methode draw() draait het programma echt.
*/

// methoden:
void setup() {           // de methode setup() draait automatisch 1 keer bij de start van het programma

  fullScreen();          // blauw: aanroep van een ingebouwde methode, deze maakt het programma fullscreen
  bugSquashSetup();      // zwart: aanroep van een zelfgemaakte methode, de inhoud daarvan vind je op het tabblad "basis"
  println(naam);         // met deze ingebouwde methode kun je iets laten zien in de console, de zwarte balk onderaan (leuk en handig, maar het komt niet in beeld in het uiteindelijke spel)
                         // de methode println() verwacht een parameter (hier de variabele naam) waarmee je vertelt WAT er geprint moet worden
}

void draw() {            // de methode draw() draait na setup() automatisch 25 keer per seconde tot je het programma zelf stopt
  
  bugSquashDraw(snelheid, naam);    // hier zie je dat de parameters snelheid en naam worden doorgeven naar de methode bugSquashDraw(). De inhoud daarvan staat op het tabblad "basis"
  
}

// De methode mousePressed() heb je nodig als je iets wil doen met muiskliks (of touchscreen-aanrakingen):

void mousePressed() {     // deze methode draait automatisch 1 keer als er op een muisknop wordt geklikt

  bugSquashMousePressed();
  
}

/* 
 P.S. Het groene woordje void hoort niet bij de naam van de methode en 
 spreken we niet uit. De haakjes achter de naam spreken we ook niet uit.
 
 Alle grijze tekst met uitleg is voor jou, de computer doet daar niks mee.
*/
