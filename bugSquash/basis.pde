/*
 Hier vind je de basisonderdelen van het spel. Het bestaat uit drie schermen, die na elkaar getoond worden:
 startScherm, speelScherm en eindScherm.
*/

// variabelen:
int actieveScherm; // dit is de variabele waarin onthouden wordt in welk van de drie schermen we nu zitten

// methoden:
void bugSquashSetup(){
  actieveScherm = 1; // we beginnen met scherm 1 (dat is het startscherm)
  startSchermSetup(); // hier wordt de methode startSchermSetup() aangeroepen. De inhoud vind je op de tab startScherm.
}

void bugSquashDraw(int snelheid, String naam){ // de bij de aanroep doorgegeven parameters worden ontvangen in nieuwe tijdelijke variabelen
  switch(actieveScherm) {  // hier wordt het juiste van de drie schermen uitgevoerd.
    case(1): // scherm 1 (startScherm)
    {
      startSchermDraw(naam); // voer scherm 1 uit, naam wordt doorgegeven
      if (!getStartSchermRunning()) {  // ALS startScherm NIET! meer draait (na druk op startknop)
        actieveScherm = 2; // dan moeten we naar scherm 2 (speelScherm)
        speelSchermSetup(); // eerst alles van speelScherm klaarzetten
      }
      break;
    }
    case(2): // scherm 2 (speelScherm)
    {
      speelSchermDraw(snelheid); // voer nu scherm 2 uit
      if (!getSpeelSchermRunning()) { // ALS speelScherm niet meer draait (als timer voorbij is)
        actieveScherm = 3;
        eindSchermSetup();
      }
      break;
    }
    case(3): // scherm 3 (eindScherm)
    {
      eindSchermDraw();
      if (!getEindSchermRunning()) { // (na druk op opnieuw-knop)
        actieveScherm = 1; // terug naar speelScherm
        startSchermSetup();
      }
      break;
    }
  }
}

void bugSquashMousePressed() {
    switch(actieveScherm) {  // afhankelijk van in welk scherm we zitten, wordt er verschillend gereageerd op een muisklik
    case(1) :
    {
      startSchermMousePressed();
      break;
    }
    case(2) :
    {
      speelSchermMousePressed();
      break;
    }
    case(3) :
    {
      eindSchermMousePressed();
      break;
    }
  }
}
