void showEntry() {

  updaterollover(mouseX, mouseY, width, height); //valider positionnement de la souris
}
void entrydisplay() {    // gestion de l'affichage d'accueil

  // image
  carte = loadImage ("Carte_MTL_finale.jpg");
  image(carte, 0, 0);
  filter(GRAY);
  filter(BLUR, 4);

  //valeurs pour dessins vectoriels
  rectTitreX = width/2;
  rectTitreY = (height/2)-40;
  rectTitreW = 300;
  rectTitreH = 155;

  rectBX = width/2;
  rectBY = (height/2)+125;
  rectBW = 115;
  rectBH = 47;

  //valeur des typos utilisées dans le programme
  typoS1 = loadFont("LucidaConsole-48.vlw");
  titre = createFont("Pokemon Classic.ttf", 48);

  //Section Titre
  rectMode(CENTER);
  noStroke();
  fill(rectColor);
  rect(rectTitreX, rectTitreY, rectTitreW, rectTitreH);

  textFont(titre);
  fill(50);
  textAlign(RIGHT);
  textSize(20);
  text("Dé[faroucher]", rectTitreX+rectTitreW/2-15, rectTitreY-35);

  textFont(typoS1);
  fill(90);
  textAlign(RIGHT);
  textSize(14.5);
  text("une cartographie d'appartenance\nÀ Tiohtià:ke/Montréal - Canada", rectTitreX+rectTitreW/2-15, rectTitreY-5);
  textFont(typoS1);
  fill(90);
  textAlign(RIGHT);
  textSize(16);
  text("phase 1 – 2019-2022", rectTitreX+rectTitreW/2-15, rectTitreY+55);
}

void updaterollover(int x, int y, int i, int j) {         //pour modifier la transparence du bouton entrer
  if ( overButton(rectBX, rectBY, rectBW, rectBH) ) {
    overButton = true;
    pushMatrix();
    translate(rectBX, rectBY);
    rectMode(CENTER);
    noStroke();
    fill(240, 240, 240, 150);
    scale(1.05f, 1.05f);
    rect(0, 0, rectBW, rectBH);
    popMatrix();
    fill(90);
    textFont(typoS1);
    textAlign(CENTER, CENTER);
    textSize(16);
    text("entrer", rectBX, rectBY);
  } else {
    overButton = false;
    rectMode(CENTER);
    noStroke();
    fill(rectColor);
    rect(rectBX, rectBY, rectBW, rectBH);
    fill(90);
    textFont(typoS1);
    textAlign(CENTER, CENTER);
    textSize(16);
    text("entrer", rectBX, rectBY);
  }
}
