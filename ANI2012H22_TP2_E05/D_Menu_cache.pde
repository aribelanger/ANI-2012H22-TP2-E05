//fonctions pour implanter le texte dans le menu caché
void menuTexte() {
  pushMatrix();
  translate(width-rect5W/2, height/8*7.4);
  rotate(angleText);
  textFont(typoS1);
  textSize(18);
  fill(90);
  text(rect5text, 0, 0);
  popMatrix();
}

void menuBoucle() {
  pushMatrix();
  translate(width-rect5W/2, height/8*5.75);
  rotate(angleText);
  textFont(typoS1);
  textSize(18);
  fill(90);
  text(rect6text, 0, 0);
  popMatrix();
}

void menuColl() {
  pushMatrix();
  translate(width-rect5W/2, height/8*3.75);
  rotate(angleText);
  textFont(typoS1);
  textSize(18);
  fill(90);
  text(rect4text, 0, 0);
  popMatrix();
}

//fonction pour revéler le menu caché et activer les bouton pour les autres sections
void showMenu() {

  // si la souris passe au-dessus de cette zone, le menu apparait...
  if ( overRect5(rect5X, rect5Y, rect5W, rect5H) ) {
    rect5over = true;
    rectMode(CORNER);
    noStroke();
    fill(rect5Color);
    rect(rect5X, rect5Y, rect5W, rect5H);
    // ... les fonctions permettant de sélectionner les options s'activent...
    menuTexte();
    menuBoucle();
    menuColl();
    // ... et le bouton se déplace de la largeur du menu et la flèche se tourne
    rectMode(CORNER);
    noStroke();
    fill(rect4Color);
    square(rect4X-rect5W, rect4Y, diam);
    pushMatrix();
    translate(rect4X+20-rect5W, rect4Y+20);
    rotate(radians(90));
    noStroke();
    fill(triColor);
    drawTriangle(0, 0, triEdge);
    popMatrix();
  }
}
