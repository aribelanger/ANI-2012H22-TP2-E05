void displayCollection() {
  background(60);
  //image arrière-plan
  UQAM = loadImage("uqam.png");
  image(UQAM, UQAMX, UQAMY, 1045.5, 790.5);

  //bouton de retour à l'écran principal
  rect6X = 40;
  rect6Y = height-diam-40;
  rectMode(CORNER);
  noStroke();
  fill(135);
  square(rect6X, rect6Y, diam);
  pushMatrix();
  translate(rect6X+20, rect6Y+20);
  rotate(radians(270));
  noStroke();
  fill(255);
  drawTriangle(0, 0, triEdge);
  popMatrix();

  //pour détecter les éléments à bouger
  if (mouseX > dolls0X && mouseX < dolls0X+dolls0W &&
    mouseY > dolls0Y && mouseY < dolls0Y+dolls0H) {
    dolls0over = true;
    if (!locked0);
  } else {
    dolls0over = false;
  }
  image(dolls[0], dolls0X, dolls0Y);

  if (overdolls1(dolls1X, dolls1Y, dolls1W, dolls1H)) {
    dolls1over = true;
    if (!locked1);
  } else {
    dolls1over = false;
  }
  image(dolls[1], dolls1X, dolls1Y);

  if (overdolls2(dolls2X, dolls2Y, dolls2W, dolls2H)) {
    dolls2over = true;
    if (!locked2);
  } else {
    dolls2over = false;
  }
  image(dolls[2], dolls2X, dolls2Y);

  if (overdolls3(dolls3X, dolls3Y, dolls3W, dolls3H)) {
    dolls3over = true;
    if (!locked3);
  } else {
    dolls3over = false;
  }
  image(dolls[3], dolls3X, dolls3Y);

  if (overdolls4(dolls4X, dolls4Y, dolls4W, dolls4H)) {
    dolls4over = true;
    if (!locked4);
  } else {
    dolls4over = false;
  }
  image(dolls[4], dolls4X, dolls4Y);

  // texte d'instructions
  fill(255);
  textFont(typoS1);
  textSize(12);
  text("Utilisez la souris pour déplacer les personnages.\n Utilisez les flèches du clavier pour déplacer l'arrière-plan.\n Appuyez sur la barre d'espacement pour replacer les éléments à leur position initiale.", width/2, 800);
}
