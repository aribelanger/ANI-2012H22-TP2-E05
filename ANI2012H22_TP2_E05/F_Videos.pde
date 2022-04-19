// fonctions pour visionner les vidéos
void showVideo3() {
  background (0);
  image(videos[3], 738-(width*0.33), 415-(height*0.33), width*0.66, height*0.66);
  fill(255);
  textFont(typoS1);
  textSize(12);
  text("Pour retourner au menu principal, appuyez sur la touche ESC de votre clavier", width/2, 800);
}

void showVideo2() {
  background (0);
  image(videos[2], 738-(width*0.33), 415-(height*0.33), width*0.66, height*0.66);
  fill(255);
  textFont(typoS1);
  textSize(12);
  text("Pour retourner au menu principal, appuyez sur la touche ESC de votre clavier", width/2, 800);
}

void showVideo1() {
  background (0);
  image(videos[1], 738-(width*0.33), 415-(height*0.33), width*0.66, height*0.66);
  fill(255);
  textFont(typoS1);
  textSize(12);
  text("Pour retourner au menu principal, appuyez sur la touche ESC de votre clavier", width/2, 800);
}

void showVideo0() {
  background (0);
  image(videos[0], 738-(width*0.33), 415-(height*0.33), width*0.66, height*0.66);
  fill(255);
  textFont(typoS1);
  textSize(12);
  text("Pour retourner au menu principal, appuyez sur la touche ESC de votre clavier", width/2, 800);
}

void showVideo4() {
  background (0);
  image(videos[4], 738-(width*0.33), 415-(height*0.33), width*0.66, height*0.66);
  fill(255);
  textFont(typoS1);
  textSize(12);
  text("Pour retourner au menu principal, appuyez sur la touche ESC de votre clavier", width/2, 800);
}

// fonction pour faire jouer les videos
void movieEvent(Movie m) {
  m.read();
}
