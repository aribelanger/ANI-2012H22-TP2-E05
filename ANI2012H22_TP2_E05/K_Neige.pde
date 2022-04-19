void displaySnow() {
  image(carte, 0, 0);
  filter(GRAY);
  float dx = map(mouseX, 0, width, -0.2, 0.2);
  PVector wind = new PVector(dx, 0);
  ps0.applyForce(wind);
  ps1.applyForce(wind);
  ps2.applyForce(wind);
  ps3.applyForce(wind);
  ps0.run();
  ps1.run();
  ps2.run();
  ps3.run();

  for (int i = 0; i < 2; i++) {
    ps0.addParticle();
  }
  for (int i = 0; i < 2; i++) {
    ps1.addParticle();
  }
  for (int i = 0; i < 2; i++) {
    ps2.addParticle();
  }
  for (int i = 0; i < 2; i++) {
    ps3.addParticle();
  }

  rect6X = 40;
  rect6Y = height-diam-40;
  rectMode(CORNER);
  noStroke();
  fill(rect4Color);
  rect(rect6X, rect6Y, diam, diam);
  pushMatrix();
  translate(rect6X+20, rect6Y+20);
  rotate(radians(270));
  noStroke();
  fill(triColor);
  drawTriangle(0, 0, triEdge);
  popMatrix();
}
class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  PVector acc;


  Particle(PVector l) {

    acceleration = new PVector(0, 0.01);
    velocity = new PVector(random(-3, 3), random(-2, 4));
    position = l.copy();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }
  void applyForce(PVector f) {
    acceleration.add(f);
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 0.5;
    acceleration.mult(0); // clear Acceleration
  }

  // Method to display
  void display() {
    stroke(255, lifespan);
    fill(255, lifespan);
    ellipse(position.x, position.y, 2, 4);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }
  // Method to add a force vector to all particles currently in the system
  void applyForce(PVector dir) {
    // Enhanced loop!!!
    for (Particle p : particles) {
      p.applyForce(dir);
    }
  }
  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
