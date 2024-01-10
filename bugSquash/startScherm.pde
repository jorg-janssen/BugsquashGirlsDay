/* 
 Hier vind je de onderdelen van het startscherm.
*/

// variabelen:
boolean startSchermRunning = false; // hiermee kunnen we aangeven of dit scherm klaar is (false) of nog actief is (true) - in startSchermSetup() wordt deze dan ook op true gezet!
int[] startKnop = new int[4];

// methoden:
void startSchermSetup() {
  startSchermRunning = true; // vanaf nu is speelScherm actief
  startKnop = maakKnop(width/2-200, height-400, 400, 100); // aanmaken van startknop
}

void startSchermDraw(String naam) { // hier wordt alles van startScherm getekend (25 keer per seconde, dus steeds opnieuw ja)
  background(255);
  fill(0);
  textSize(50);
  textAlign(CENTER, TOP);
  text(fixNaam(naam) + " Bugsquash", width/2, 300);
  text("Snelheid: " + snelheid, width/2, 400);
  textSize(30); 
  text("Plet zo veel mogelijk bugs in 10 seconden", width/2, 500);
  tekenKnop(startKnop, "Start");    
}

void startSchermMousePressed() {
  if (gekliktOpKnop(startKnop) == true) {
    startSchermRunning = false;
  }
}

boolean getStartSchermRunning() {
  return startSchermRunning;
}

String fixNaam(String naam) {
  if (naam.substring(naam.length()-1).equals("s")) {
    naam = naam + "'";
  }
  else {
    naam = naam + "s";
  }
  return naam;
}
