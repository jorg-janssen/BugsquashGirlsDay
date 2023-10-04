
int[] maakKnop(int x, int y, int w, int h){
  int[] knop = {x, y, w, h};
  return knop;
}

void tekenKnop(int[] knop, String tekst){
  noStroke();
  fill(150); // donkere randje onder en rechts
  rect(knop[0], knop[1], knop[2]+2,knop[3]+2);  
  fill(250); // lichte randje boven en links
  rect(knop[0]-2, knop[1]-2, knop[2]+2,knop[3]+2);  
  fill(200); // grijze knopoppervlak
  rect(knop[0], knop[1], knop[2],knop[3]);
  fill(0);
  textSize(knop[3]/2);
  textAlign(CENTER, CENTER);
  text(tekst,knop[0]+knop[2]/2,knop[1]+knop[3]/2-3); // in het midden met kleine y-correctie van -3  
}

// Je kunt zelf kiezen welke variant van knopGeklikt je gebruikt. 

// Welke voor- en nadelen zitten er aan knopGekliktInDraw()?
boolean knopGekliktInDraw(int[] knop) {
  if(mousePressed && mouseX > knop[0] && mouseX < knop[0] + knop[2] && mouseY > knop[1] && mouseY < knop[1] + knop[3]) {
    return true;
  }
  else {
    return false;
  }   
}

// Welke voor- en nadelen zitten er aan knopGekliktInMouseClicked()?
boolean gekliktOpKnop(int[] knop) {
  if(mouseX > knop[0] && mouseX < knop[0] + knop[2] && mouseY > knop[1] && mouseY < knop[1] + knop[3]) {
    return true;
  }
  else {
    return false;
  }   
}
