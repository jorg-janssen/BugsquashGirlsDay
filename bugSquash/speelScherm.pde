final int SPEELTIJD = 10;
int MARGE = 100;

long timer;

int[] insect = new int[3]; // xpos, ypos, richting;
int score;

boolean speelSchermRunning = false;


void speelSchermSetup() {
  speelSchermRunning = true; // moet op false als de tijd voorbij is...
  timer = maakTimer(SPEELTIJD);
  score = 0;
  insect = maakInsect(MARGE);
  setupLogo();


}

void speelSchermDraw(int snelheid) {
  background(255);
  tekenLogo();

  if (isEindtijdBereikt(timer)) {
    speelSchermRunning = false;
  }



  tekenTijd(secondenOver(timer));

  insect[0] = insect[0] + snelheid*5 * insect[2];

  if (insectOpRand(insect)) {
    score--;
    insect = maakInsect(MARGE);
  }
  tekenInsect(insect);
}

void speelSchermMousePressed() {
  if (gekliktOpInsect(insect)) {
    score++;
    insect = maakInsect(MARGE);
  }
}

boolean getSpeelSchermRunning() {
  return speelSchermRunning;
}

int getScore() {
  return score;
}

void tekenTijd(String tijd) {
  fill(0);
  textAlign(RIGHT, TOP);
  text(tijd, width-20, 50);
  textAlign(LEFT, TOP);
  text(score, 20, 50);
}
