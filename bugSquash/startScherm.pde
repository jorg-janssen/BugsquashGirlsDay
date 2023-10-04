/* 
 Hier vind je de onderdelen van het startscherm.
*/

// variabelen:
boolean startSchermRunning = false;
int[] startKnop = new int[4];
PImage plaatje; 

// methoden:
void startSchermSetup() {
  startSchermRunning = true;
  startKnop = maakKnop(width/2-200, height-400, 400, 100); 
  plaatje = loadImage("bugright.png");
}

void startSchermDraw(String naam) {
  background(255);
  tekenKnop(startKnop, "Start");  
  fill(0);
  textSize(50);
  textAlign(CENTER, TOP);
  text(fixNaam(naam) + " Bugsquash", width/2, 300);
  text("Snelheid: " + snelheid, width/2, 400);
  image(plaatje, width/2-75, 600, 150, 150);
  textSize(30); 
  text("Plet zo veel mogelijk bugs in 10 seconden", width/2, 800);
}

void startSchermMouseClicked() {
}

void startSchermMousePressed() {
  if (gekliktOpKnop(startKnop)) {
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
