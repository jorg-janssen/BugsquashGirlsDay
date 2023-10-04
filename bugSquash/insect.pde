final int INSECTBREEDTE = 150;
final int INSECTHOOGTE = 150;
PImage insectNaarRechts;
PImage insectNaarLinks;

int[] maakInsect(int marge) {  
  insectNaarRechts = loadImage("bugright.png");
  insectNaarLinks = loadImage("bugleft.png");
  int xPos = int(random(marge, width-marge));
  int yPos = int(random(marge, height-marge-INSECTHOOGTE));   
  int richting = -1;
  if (xPos < width/2) richting = 1;
  int[] insect = {xPos, yPos, richting};
  return insect;
}

void tekenInsect(int[] insect) {
  if (insect[2] == 1) {
    image(insectNaarRechts, insect[0], insect[1], INSECTBREEDTE, INSECTHOOGTE);
  } else {
    image(insectNaarLinks, insect[0], insect[1], INSECTBREEDTE, INSECTHOOGTE);
  }
}

boolean insectOpRand(int[] insect) {
  return (insect[0] <= 0 || insect[0] >= width-INSECTBREEDTE);
}

boolean gekliktOpInsect(int[] insect) {
  if (mouseX > insect[0] && mouseX < insect[0] + INSECTBREEDTE && mouseY > insect[1] && mouseY < insect[1]+INSECTHOOGTE) {
    return true;
  } else return false;
}
