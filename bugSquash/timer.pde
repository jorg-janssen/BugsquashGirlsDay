
/*
   Maak in je eigen code (niet hier) een timer aan m.b.v. de methode maakTimer(), dus
   voor een timer die 10 seconden duurt:
   
    long mijnTimer =  maakTimer(10);
	
   Vervolgens kun je op ieder moment (meestal in de draw) kijken of die tijd voorbij
   is dm.v. isEindtijdBereikt():
   
    if(isEindtijdBereikt(mijnTimer)) {
      // doe hetgeen moet gebeuren als tijd voorbij is
    }

  Indien gewenst kun je altijd even opvragen hoe lang het nog duurt voor de tijd
  voorbij is:
    println(secondenOver(mijnTimer));
	
*/


long maakTimer(int seconden) {
  return millis() + 1000*seconden;
}

boolean isEindtijdBereikt(long timer){    // lowerCamelcase
  return millis() >= timer;    
}

String secondenOver(long timer) {
 return nf(float(int(timer)-millis())/1000,0,1);
}
