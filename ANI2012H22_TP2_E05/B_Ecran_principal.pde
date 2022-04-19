void showMain() { //pour écran principal

  updateMain(mouseX, mouseY, width, height); //pour valider la position de la souris
}

void displayMain() {      //affichage de l'écran principal
  //image
  image(carte, 0, 0);
  filter(GRAY);
  //valeur des couleurs
  rect0Color = color (#37AA49); //maison
  rect1Color = color(#C61212); //Jarry
  rect2Color = color(#F5A21B); //Angrignon
  rect3Color = color(#397EC1); // UQAM
  rect4Color = color(255); // menu bouton
  rect5Color = color (255); //menu
  rect7Color = color (#893EA5); //Windsor
  triColor = color(135); // triangle sur bouton
  textHighlight = color(255);//texte en surbrillance

  //valeurs de positionnement et format
  rect0X = 695;
  rect0Y = 305;
  rect1X = 995;
  rect1Y = 355;
  rect2X = 500;
  rect2Y = 650;
  rect3X = 970;
  rect3Y = 560;
  rect7X = 670;
  rect7Y = 590;
  rect4X = width-diam;
  rect4Y = 90;
  rect5X = width-rect5W;
  rect5Y = height-rect5H;

  rect0W = 128 ;
  rect0H = 32;
  diam = 40;
  rect5W = 60;
  rect5H = height;
  triEdge = 16;

  // valeurs texte
  rect0text = "Maison";
  rect1text = "Parc Jarry";
  rect2text = "Parc Angrignon";
  rect3text = "UQAM";
  rect4text = "se dé[faroucher]";
  rect5text = "envol";
  rect6text = "carte";
  rect7text = "Gare Windsor";

  stroke(rect0Color);
  strokeWeight(5);
  point(820, 330);

  stroke(rect1Color);
  strokeWeight(5);
  point(866, 372);

  stroke(rect2Color);
  strokeWeight(5);
  point(625, 675);

  stroke(rect3Color);
  strokeWeight(5);
  point(840, 582);

  stroke(rect7Color);
  strokeWeight(5);
  point(810, 610);

  // carré pour menu
  rectMode(CORNER);
  noStroke();
  fill(rect4Color);
  square(rect4X, rect4Y, diam);

  pushMatrix(); // pour dessiner le triangle, positionné avec le sommet vers la droite et centré dans le carré
  translate(rect4X+20, rect4Y+20);
  rotate(radians(270));
  noStroke();
  fill(triColor);
  drawTriangle(0, 0, triEdge); // appelle la fonction pour dessiner le triangle avec le positionnement et dimension
  popMatrix();

  showMenu(); //pour afficher le menu caché (voir onglet D)
}

void drawTriangle(int x, int y, int triEdge) //fonction pour dessiner le triangle dans le bouton
{
  // équation l'altitude d'un triangle équilatérale
  float altitude = sqrt(3.0f) / 2.0f * triEdge;

  // calculer la moitié de l'altitude
  float altitudeHalf = altitude / 2.0f;

  // calculer la moitié de la longueur d'une arête
  float triEdgeHalf = triEdge / 2.0f;

  // position du sommet en bas à gauche
  float vertex1X = triEdgeHalf;
  float vertex1Y =  altitudeHalf;

  // position du sommet en bas à droite
  float vertex2X =  -triEdgeHalf;
  float vertex2Y =  altitudeHalf;

  // position du sommet en haut au centre
  float vertex3X =  0;
  float vertex3Y = -altitudeHalf;

  // comme les sommets ont été calculés à l'origine, on fait une translation vers la position passé en paramètre
  triangle(
    vertex1X + x, vertex1Y + y,
    vertex2X + x, vertex2Y + y,
    vertex3X + x, vertex3Y + y);
}
// fonction pour surligner le texte survolé par la souris
void updateMain(int x, int y, int i, int j) {
  if ( overRect0(rect0X, rect0Y, rect0W, rect0H) ) {
    rect0over = true;
    pushMatrix();
    translate(rect0X, rect0Y);
    rectMode(CENTER);
    noStroke();
    fill(rect0Color);
    scale(1.05f, 1.05f);
    rect(0, 0, rect0W, rect0H);
    popMatrix();
    textFont(typoS1);
    textSize(14);
    fill(textHighlight);
    textAlign(CENTER, CENTER);
    text(rect0text, rect0X, rect0Y);
  } else {
    rect0over = false;
    textFont(typoS1);
    textSize(14);
    fill(0);
    textAlign(CENTER, CENTER);
    text(rect0text, rect0X, rect0Y);
  }
  if ( overRect1(rect1X, rect1Y, rect0W, rect0H) ) {
    rect1over = true;
    pushMatrix();
    translate(rect1X, rect1Y);
    rectMode(CENTER);
    noStroke();
    fill(rect1Color);
    scale(1.05f, 1.05f);
    rect(0, 0, rect0W, rect0H);
    popMatrix();
    textFont(typoS1);
    textSize(14);
    fill(textHighlight);
    textAlign(CENTER, CENTER);
    text(rect1text, (rect1X), (rect1Y));
  } else {
    rect1over = false;
    textFont(typoS1);
    textSize(14);
    fill(0);
    textAlign(CENTER, CENTER);
    text(rect1text, (rect1X), (rect1Y));
  }
  if ( overRect2(rect2X, rect2Y, rect0W, rect0H) ) {
    rect2over = true;
    pushMatrix();
    translate(rect2X, rect2Y);
    rectMode(CENTER);
    noStroke();
    fill(rect2Color);
    scale(1.05f, 1.05f);
    rect(0, 0, rect0W, rect0H);
    popMatrix();
    textFont(typoS1);
    textSize(13);
    fill(textHighlight);
    textAlign(CENTER, CENTER);
    text(rect2text, (rect2X), (rect2Y));
  } else {
    rect2over = false;
    textFont(typoS1);
    textSize(13);
    fill(0);
    textAlign(CENTER, CENTER);
    text(rect2text, (rect2X), (rect2Y));
  }
  if ( overRect3(rect3X, rect3Y, rect0W, rect0H) ) {
    rect3over = true;
    pushMatrix();
    translate(rect3X, rect3Y);
    rectMode(CENTER);
    noStroke();
    fill(rect3Color);
    scale(1.05f, 1.05f);
    rect(0, 0, rect0W, rect0H);
    popMatrix();
    textFont(typoS1);
    textSize(14);
    fill(textHighlight);
    textAlign(CENTER, CENTER);
    text(rect3text, (rect3X), (rect3Y));
  } else {
    rect3over = false;
    textFont(typoS1);
    textSize(14);
    fill(0);
    textAlign(CENTER, CENTER);
    text(rect3text, (rect3X), (rect3Y));
  }
  if ( overRect7(rect7X, rect7Y, rect0W, rect0H) ) {
    rect7over = true;
    pushMatrix();
    translate(rect7X, rect7Y);
    rectMode(CENTER);
    noStroke();
    fill(rect7Color);
    scale(1.05f, 1.05f);
    rect(0, 0, rect0W, rect0H);
    popMatrix();
    textFont(typoS1);
    textSize(13);
    fill(textHighlight);
    textAlign(CENTER, CENTER);
    text(rect7text, (rect7X), (rect7Y));
  } else {
    rect7over = false;
    textFont(typoS1);
    textSize(13);
    fill(0);
    textAlign(CENTER, CENTER);
    text(rect7text, (rect7X), (rect7Y));
  }
}
