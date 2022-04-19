// fonctions booléennes pour déterminer si la souris est au-dessus d'un élément
boolean overRect0(int x, int y, int i, int j) {
  if (mouseX >= rect0X-rect0W && mouseX <= rect0X+rect0W &&
    mouseY >= rect0Y-rect0H && mouseY <= rect0Y+rect0H) {
    return true;
  } else {
    return false;
  }
}

boolean overRect1(int x, int y, int i, int j) {
  if (mouseX >= rect1X-rect0W && mouseX <= rect1X+rect0W &&
    mouseY >= rect1Y-rect0H && mouseY <= rect1Y+rect0H) {
    return true;
  } else {
    return false;
  }
}

boolean overRect2(int x, int y, int i, int j) {
  if (mouseX >= rect2X-rect0W && mouseX <= rect2X+rect0W &&
    mouseY >= rect2Y-rect0H && mouseY <= rect2Y+rect0H) {
    return true;
  } else {
    return false;
  }
}
boolean overRect3(int x, int y, int i, int j) {
  if (mouseX >= rect3X-rect0W && mouseX <= rect3X+rect0W &&
    mouseY >= rect3Y-rect0H && mouseY <= rect3Y+rect0H) {
    return true;
  } else {
    return false;
  }
}
boolean overRect7(int x, int y, int i, int j) {
  if (mouseX >= rect7X-rect0W && mouseX <= rect7X+rect0W &&
    mouseY >= rect7Y-rect0H && mouseY <= rect7Y+rect0H) {
    return true;
  } else {
    return false;
  }
}
boolean overButton(int x, int y, int i, int j) {   // pour identifier si la souris est au-dessus du bouton
  if (mouseX >= rectBX-rectBW && mouseX <= rectBX+rectBW &&
    mouseY >= rectBY-rectBH && mouseY <= rectBY+rectBH) {
    return true;
  } else {
    return false;
  }
}
boolean overRect5(int x, int y, int i, int j) {
  if (mouseX >= rect5X && mouseX <= rect5X+rect5W &&
    mouseY >= rect5Y && mouseY <= rect5Y+rect5H) {
    return true;
  } else {
    return false;
  }
}

boolean overRect6(int x, int y, int i) {
  if (mouseX >= rect6X-diam && mouseX <= rect6X+diam &&
    mouseY >= rect6Y-diam && mouseY <= rect6Y+diam) {
    return true;
  } else {
    return false;
  }
}

//fonctions booléennes pour section se défaroucher
boolean overdolls0(int x, int y, int i, int j) {
  if (mouseX >= dolls0X && mouseX <= dolls0X+dolls0W &&
    mouseY >= dolls0Y && mouseY <= dolls0Y+dolls0H) {
    return true;
  } else {
    return false;
  }
}
boolean overdolls1(int x, int y, int i, int j) {
  if (mouseX > dolls1X && mouseX < dolls1X+dolls1W &&
    mouseY > dolls1Y && mouseY < dolls1Y+dolls1H) {
    return true;
  } else {
    return false;
  }
}
boolean overdolls2(int x, int y, int i, int j) {
  if (mouseX >= dolls2X && mouseX <= dolls2X+dolls2W &&
    mouseY >= dolls2Y && mouseY <= dolls2Y+dolls2H) {
    return true;
  } else {
    return false;
  }
}
boolean overdolls3(int x, int y, int i, int j) {
  if (mouseX >= dolls3X && mouseX <= dolls3X+dolls3W &&
    mouseY >= dolls3Y && mouseY <= dolls3Y+dolls3H) {
    return true;
  } else {
    return false;
  }
}
boolean overdolls4(int x, int y, int i, int j) {
  if (mouseX >= dolls4X && mouseX <= dolls4X+dolls4W &&
    mouseY >= dolls4Y && mouseY <= dolls4Y+dolls4H) {
    return true;
  } else {
    return false;
  }
}
