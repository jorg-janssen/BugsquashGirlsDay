PImage logo;

float logoXpos, logoYpos;
float logoWidth, logoHeight;
float aspectRatio = 1; // verhouding breedte 1 : hoogte aspectRatio 

void setupLogo() {
  if (height > width) {
    logoWidth = width*0.5;
    logoHeight = logoWidth*aspectRatio; // behoud verhouding
  }
  else {
    logoHeight = height*0.5;
    logoWidth = logoHeight/aspectRatio; // behoud verhouding 
  }
  logoXpos = width/2-0.5*logoWidth;
  logoYpos = height/2-0.5*logoHeight;

  logo = loadImage("images/ict_daar_kun_je_wat_mee.png");
}


void tekenLogo() {
  image(logo, logoXpos, logoYpos, logoWidth, logoHeight);
}
