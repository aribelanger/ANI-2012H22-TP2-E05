class Shape
{
  float positionX;   // position en X de la forme
  float positionY;   // position en Y de la forme
  color colorFill;   // couleur de remplissage
  // constructeur
  Shape(float x, float y, color f)
  {
    positionX = x;
    positionY = y;
    colorFill = f;
  }

  // fonction abstraite d'affichage
  void render() {
  }
}

// classe de type Rectangle (classe enfant)
class Rectangle extends Shape
{
  float sizeX; // largeur du rectangle
  float sizeY; // hauteur du rectangle

  // constructeur
  Rectangle(float x, float y, color f, float w, float h)
  {
    // invoquer le constructeur de la classe parent
    super(x, y, f);

    // initialisation des attributs propres au rectangle
    sizeX = w;
    sizeY = h;
  }

  // fonction d'affichage du rectangle
  void render()
  {
    noStroke();
    fill(colorFill);
    rect(positionX, positionY, sizeX, sizeY);
  }
}


class Line extends Shape
{
  float lineXx, lineYy;

  // constructeur
  Line(float x, float y, color f, float a, float b)
  {
    // invoquer le constructeur de la classe parent
    super(x, y, f);

    lineXx = a;
    lineYy = b;
  }

  // fonction d'affichage du cercle
  void render()
  {
    stroke(colorFill);
    strokeWeight(3);
    fill(colorFill);
    line(positionX, positionY, lineXx, lineYy);
  }
}

// référence vers une forme
Shape rectangle0;
Shape line0;
Shape line00;
Shape rectangle1;
Shape line1;
Shape line11;
Shape rectangle2;
Shape line2;
Shape line22;
Shape rectangle3;
Shape line3;
Shape line33;
Shape rectangle4;
Shape line4;
Shape line44;

void displayShape() {

  rectMode(CENTER);
  ellipseMode(CENTER);

  rectangle0 = new Rectangle(rect0X, rect0Y, rect0Color, rect0W, rect0H);
  rectangle0.render();
  line0 = new Line(765, 295, rect0Color, 775, 295);
  line00 = new Line(775, 295, rect0Color, 815, 325);
  line0.render();
  line00.render();
  rectangle1 = new Rectangle(rect1X, rect1Y, rect1Color, rect0W, rect0H);
  rectangle1.render();
  line1 = new Line(925, 345, rect1Color, 915, 345);
  line11 = new Line(915, 345, rect1Color, 871, 369);
  line1.render();
  line11.render();
  rectangle2 = new Rectangle(rect2X, rect2Y, rect2Color, rect0W, rect0H);
  rectangle2.render();
  line2 = new Line(570, 640, rect2Color, 580, 640);
  line22 = new Line(580, 640, rect2Color, 620, 670);
  line2.render();
  line22.render();
  rectangle3 = new Rectangle(rect3X, rect3Y, rect3Color, rect0W, rect0H);
  rectangle3.render();
  line3 = new Line(900, 550, rect3Color, 890, 550);
  line33 = new Line(890, 550, rect3Color, 845, 577);
  line3.render();
  line33.render();
  rectangle4 = new Rectangle(rect7X, rect7Y, rect7Color, rect0W, rect0H);
  rectangle4.render();
  line4 = new Line(740, 580, rect7Color, 750, 580);
  line44 = new Line(750, 580, rect7Color, 805, 605);
  line4.render();
  line44.render();
}
