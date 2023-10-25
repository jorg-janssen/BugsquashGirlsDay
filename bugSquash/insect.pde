final int INSECTBREEDTE = 150;
final int INSECTHOOGTE = 150;
PImage insectNaarBoven;
PImage insectNaarRechts;
PImage insectNaarLinks;

int[] maakInsect(int marge) {  
  insectNaarBoven = loadImage("bugup.png");
  insectNaarRechts = loadImage("bugright.png");
  insectNaarLinks = loadImage("bugleft.png");
  int xPos = int(random(marge, width-marge));
  int yPos = int(random(marge, height-marge-INSECTHOOGTE));   
  int richting = -1;
  if (xPos < width/2) richting = 1;
  int[] insect = {xPos, yPos, richting};
  return insect;
}

void tekenInsect(int[] insect) { // insect[2] bevat de richting: 0 is naar boven, 1 is naar rechts, -1 is naar links
  switch(insect[2]) {
    case(0): {
      image(insectNaarBoven, insect[0], insect[1], INSECTBREEDTE, INSECTHOOGTE);  
      break;
    }
    case(1): {
      image(insectNaarRechts, insect[0], insect[1], INSECTBREEDTE, INSECTHOOGTE);
      break;
    } 
    case(-1): {
      image(insectNaarLinks, insect[0], insect[1], INSECTBREEDTE, INSECTHOOGTE);
      break;
    }
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
