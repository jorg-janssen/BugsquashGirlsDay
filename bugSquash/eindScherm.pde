boolean eindSchermRunning;
int[] opnieuwKnop = new int[4];
int eindScore;

void eindSchermSetup() {
  eindSchermRunning = true;
  opnieuwKnop = maakKnop(width/2-200, height-400, 400, 100);
  eindScore = getScore();
}

void eindSchermDraw() {
  background(255);
  tekenKnop(opnieuwKnop, "Opnieuw");
  fill(0);
  textSize(50);
  textAlign(CENTER, TOP);
  text("Score: " + eindScore, width/2, 300);
}

void eindSchermMousePressed() {
  if (gekliktOpKnop(opnieuwKnop)) {
    snelheid = snelheid + 1;
    eindSchermRunning = false;
  }
}

boolean getEindSchermRunning() {
  return eindSchermRunning;
}
