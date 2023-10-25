final int SPEELTIJD = 10; // seconden
int MARGE = 100;

long timer;

int[] insect = new int[3]; // insect bevat 3 "ingekapselde" variabelen 0, 1, 2: x-positie, y-positie en richting
int score;

boolean speelSchermRunning = false;


void speelSchermSetup() {
  speelSchermRunning = true; // moet op false als de tijd voorbij is...
  timer = maakTimer(SPEELTIJD);
  score = 0;
  insect = maakInsect(MARGE); // insect krijgt een willekeurige positie binnen de marges
  setupLogo();
}

void speelSchermDraw(int snelheid) {
  background(255);
  tekenLogo();
  tekenTijd(secondenOver(timer));
                                 // <--- voeg hier de aanroep van de methode tekenScore() toe, met score als parameter
  
  // Om het insect te laten lopen, moet zijn x-positie steeds veranderen. De x-positie zit in insect[0].
  // De richting zit in insect[2] en is -1 of 1.
  // We geven insect[0] een nieuwe waarde: zijn oude positie + een aantal pixels * de richting. 
  insect[0] = insect[0] + snelheid*5 * insect[2]; 
  tekenInsect(insect);  

  if (isEindtijdBereikt(timer)) {
    speelSchermRunning = false;
  }  
  
  if (insectOpRand(insect)) { // niet geklikt op insect voordat het de rand bereikt
    score--;
    insect = maakInsect(MARGE); // nieuw insect klaarzetten (oude wordt overschreven)
  }
}

void speelSchermMousePressed() {
  if (gekliktOpInsect(insect)) { // wel geklikt op insect voordat het de rand bereikt
    score++;
    insect = maakInsect(MARGE); // nieuw insect klaarzetten (oude wordt overschreven)
  }
}

boolean getSpeelSchermRunning() {
  return speelSchermRunning;
}

int getScore() {
  return score;
}

void tekenScore(int score){
  fill(0, 0, 255); // fill() gebruikt RGB (rood, groen, blauw) als parameters met waarden tussen 0 en 255
  textAlign(LEFT, TOP);
  text(score, 20, 50);
}

void tekenTijd(String tijd) {
  fill(0); // fill() kan ook met één parameter, als je R en B en G alledrie dezelfde waarde wil geven
  textAlign(RIGHT, TOP);
  text(tijd, width-20, 50);
}
