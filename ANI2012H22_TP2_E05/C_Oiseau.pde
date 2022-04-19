void bird1() { //pour animer l'oiseau 1

  if (millis() > previousDisplayTime1 + deltaTime1) {//si le temps est plus grand que le temps écoulé depuis le dernier frame + le temps entre chaque frame
    currentFrame++; //avancer d'un frame
    if (currentFrame > 2 ) { //si le frame courant est plus que 2
      currentFrame = (currentFrame+1) % numFrames; //avancer l'image
      posX1 += 10;
      posY1 += 0;
    }
    if (posX1 >= width) { //si l'oiseau et arrivé hors de l'écran, repositionner au début
      posX1 = -40;
    }
    previousDisplayTime1 = millis();
  }

  image(images[currentFrame], posX1, posY1); // dessiner oiseau à la position 1
}

void bird2() {
  if (millis() > previousDisplayTime2 + deltaTime2) {
    currentFrame++;
    if (currentFrame > 2) {
      currentFrame = (currentFrame+1) % numFrames;
      posX2 += 10;
      posY2 += 0;
    }
    if (posX2 >= width) {
      posX2 = -340;
    }
    previousDisplayTime2 = millis();
  }

  image(images[currentFrame], posX2, posY2);
}


void bird3() {
  if (millis() > previousDisplayTime3 + deltaTime3) {
    currentFrame++;
    if (currentFrame > 2) {
      currentFrame = (currentFrame+1) % numFrames;
      posX3 += 10;
      posY3 += 0;
    }
    if (posX3 >= width) {
      posX3 = -160;
    }
    previousDisplayTime3 = millis();
  }

  image(images[currentFrame], posX3, posY3);
}
