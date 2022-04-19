// fonction dictant les fonctions de touche actives dans un écran
void keyPressed() {
  switch(state) {

  case stateCollection:
    keyPressedCollection();
    break;

  case stateUQAM:
    keyPressedExitUQAM();
    break;

  case stateMaison:
    keyPressedExitMaison();
    break;

  case stateJarry:
    keyPressedExitJarry();
    break;

  case stateAngrignon:
    keyPressedExitAngrignon();
    break;

  case stateWindsor:
    keyPressedExitWindsor();
    break;

  case stateMap:
    keyPressedExitBoucle();
    break;
  }
}

// fonction pour déplaceer avec touches du clavier - se défaroucher
void keyPressedCollection() {
  if (key == ' ') {    // initialiser barre d'espacement et actions
    dolls0X = width/12*1;
    dolls1X = width/12*2;
    dolls2X = width/12*9;
    dolls3X = width/12*10;
    dolls4X = width/12*11;
    dolls0Y = height-200;
    dolls1Y = height-200;
    dolls2Y = height-200;
    dolls3Y = height-200;
    dolls4Y = height-200;
    UQAMX = 215.25;
    UQAMY = 0;
    magie.play();
  } // initialiser utilisation des flèches et action
  if (key == CODED) {
    if (keyCode == LEFT) {
      UQAMX --;
    }
    if (keyCode == RIGHT) {
      UQAMX ++;
    }
    if (keyCode == UP) {
      UQAMY --;
    }
    if (keyCode == DOWN) {
      UQAMY ++;
    }
  }
}
//fonctions pour changer d'écran avec ESC
void keyPressedExitUQAM() {
  if (key == ESC) {
    key=0;
    state=1;
  }
}

void keyPressedExitMaison() {
  if (key == ESC) {
    key=0;
    state=1;
  }
}

void keyPressedExitJarry() {
  if (key == ESC) {
    key=0;
    state=1;
  }
}

void keyPressedExitAngrignon() {
  if (key == ESC) {
    key=0;
    state=1;
  }
}
void keyPressedExitWindsor() {
  if (key == ESC) {
    key=0;
    state=1;
  }
}
void keyPressedExitBoucle() {
  if (key == ESC) {
    key=0;
    state=1;
  }
}
