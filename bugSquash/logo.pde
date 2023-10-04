PImage logo;

float logoXpos, logoYpos;
float logoWidth, logoHeight;

void setupLogo() {
  if (height > width) {
    logoWidth = width*0.8;
    logoHeight = logoWidth*1.4; // behoud verhouding b:h = 1:1.4
  }
  else {
    logoHeight = height*0.8;
    logoWidth = logoHeight/1.4; // behoud verhouding b:h = 1:1.4    
  }
  logoXpos = width/2-0.5*logoWidth;
  logoYpos = height/2-0.5*logoHeight;

  logo = loadImage("programmeer_wat_je_liket.gif");
}


void tekenLogo() {
  image(logo, logoXpos, logoYpos, logoWidth, logoHeight);
}
