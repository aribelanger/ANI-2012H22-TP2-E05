void showMap() {

  //arrière-plan
  carte.loadPixels();
  loadPixels();
  image(carte, 0, 0);

  for (int x = 0; x < carte.width; x++) {
    for (int y = 0; y < carte.height; y++ ) {
      // Calculate the 1D location from a 2D grid
      int loc = x + y*carte.width;
      // Get the R,G,B values from image
      float r, g, b;
      r = red (carte.pixels[loc]);
      g = green (carte.pixels[loc]);
      b = blue (carte.pixels[loc]);
      // Calculate an amount to change brightness based on proximity to the mouse
      float maxdist = 150;
      float d = dist(x, y, mouseX, mouseY)+50;
      float adjustbrightness = 255*(maxdist-d)/maxdist;
      r += adjustbrightness;
      g += adjustbrightness;
      b += adjustbrightness;
      // Constrain RGB to make sure they are within 0-255 color range
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      // Make a new color and set pixel in the window
      color c = color(r, g, b);
      //  color c = color(r);
      pixels[y*width + x] = c;
    }
  }
  updatePixels();
  // bouton retour vers écran principal
  rect6X = 40;
  rect6Y = height-diam-40;
  rectMode(CORNER);
  noStroke();
  fill(100);
  rect(rect6X, rect6Y, diam, diam);
  pushMatrix();
  translate(rect6X+20, rect6Y+20);
  rotate(radians(270));
  noStroke();
  fill(170);
  drawTriangle(0, 0, triEdge);
  popMatrix();
}
