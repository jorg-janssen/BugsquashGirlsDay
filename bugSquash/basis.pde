/*
 Hier vind je de basisonderdelen van het spel. Het bestaat uit drie schermen, die na elkaar getoond worden.
*/

// variabelen:
int actieveScherm; // dit is de variabele waarin onthouden wordt in welk van de drie schermen we nu zitten

// methoden:
void bugSquashSetup(){
  actieveScherm = 1; // we beginnen met scherm 1 (dat is het startscherm)
  startSchermSetup(); // hier wordt de methode startSchermSetup() aangeroepen. De inhoud vind je op de tab startScherm.
}

void bugSquashDraw(int snelheid, String naam){
  switch(actieveScherm) {
    case (1): 
    {
      startSchermDraw(naam);
      if (!getStartSchermRunning()) {  // als startScherm NIET! meer running
        actieveScherm = 2;
        speelSchermSetup();
      }
      break;
    }
    case (2): 
    {
      speelSchermDraw(snelheid);
      if (!getSpeelSchermRunning()) {
        actieveScherm = 3;
        eindSchermSetup();
      }
      break;
    }
    case (3): 
    {
      eindSchermDraw();
      if (!getEindSchermRunning()) {
        actieveScherm = 1;
        startSchermSetup();
      }
      break;
    }
  }
}

void bugSquashMousePressed() {
    switch(actieveScherm) {
    case (1) :
    {
      startSchermMousePressed();
      break;
    }
    case (2) :
    {
      speelSchermMousePressed();
      break;
    }
    case (3) :
    {
      eindSchermMousePressed();
      break;
    }
  }
}
