import processing.sound.*;
import processing.video.*;

SoundFile bird; //bande son
SoundFile click; // son des boutons
SoundFile magie; // son section jeu
ParticleSystem ps0;
ParticleSystem ps1;
ParticleSystem ps2;
ParticleSystem ps3;

Flock flock; //boids
PImage birds; //image pour boids
Movie[] videos = new Movie[5]; // array vidéos
PImage carte; // image arrière-plan principal
PImage UQAM; // image arrière-plan jeu
PImage [] dolls = new PImage [5]; // image poupées

PFont titre; //fonte pour titre
PFont typoS1; //fonte pour texte général
String [] texteContent; // array pour fichier texte.txt
String [] credit; // array pour fichier credits.txt

// variables pour animation
int numFrames = 3;  // quantité frames (images) pour timeline
int currentFrame = 0; // pour savoir si revenu au premier frame
PImage[] images = new PImage[numFrames]; // array - images pour animation
int posX1, posY1; // positionnement oiseau0
int posX2, posY2; // positionnement oiseau1
int posX3, posY3; // positionnement oiseau3
float previousDisplayTime1;  // savoir temps écoulé depuis dernier frame pour chaque oiseau
float deltaTime1;            // temps entre chaque frame pour chaque oiseau - permet de le varier si voulu
int previousDisplayTime2;  //
int deltaTime2;            //
int previousDisplayTime3;  //
int deltaTime3;            //

// variables de positionnement
int rect0X, rect0Y; // boutons écran principal
int rect1X, rect1Y;
int rect2X, rect2Y;
int rect3X, rect3Y;
int rect7X, rect7Y;
int rect4X, rect4Y; // bouton retour et menu caché
int rect5X, rect5Y;
int rectTitreX, rectTitreY; // rectangle titre accueil
int rectBX, rectBY; // bouton entrée
float rectTextX, rectTextY; // rectangle texte écran crédits
float rectCredX, rectCredY, rectCredW, rectCredH; // + format rectangle crédits
float rectTitre2X, rectTitre2Y; // rectangle titre écran crédits
int rect6X, rect6Y; // carré bouton retour vers écran principal

// section se défaroucher
int dolls0X, dolls0Y, dolls0W, dolls0H;
int dolls1X, dolls1Y, dolls1W, dolls1H;
int dolls2X, dolls2Y, dolls2W, dolls2H;
int  dolls3X, dolls3Y, dolls3W, dolls3H;
int dolls4X, dolls4Y, dolls4W, dolls4H;
float UQAMX, UQAMY;
int xOffset0 = 0;
int yOffset0 = 0;
int xOffset1 = 0;
int yOffset1 = 0;
int xOffset2 = 0;
int yOffset2 = 0;
int xOffset3 = 0;
int yOffset3 = 0;
int xOffset4 = 0;
int yOffset4 = 0;


//variables de format
int rect0W, rect0H; // boutons video
int rect5W, rect5H; // délimiter zone menu caché
int rectTitreW, rectTitreH; // titre accueil
int rectBW, rectBH; // bouton entrée
int triEdge; // triangle - bouton retour et menu
int diam; // carré bouton retour  et menu
float rectTextW, rectTextH; // rectangle texte écran crédits


//variables de couleur
color triColor; // variable couleur triangle
color rect0Color, rect1Color, rect2Color, rect3Color, rect4Color, rect5Color, rect7Color; // variables couleur boutons vidéo et menu
color rectColor = color(255); //couleur bouton entrée
color textHighlight; // variable couleur du texte interaction souris - boutons vidéo

// variables booléenne
// pour interaction souris - boutons et menus
boolean rect0over = false;
boolean rect1over = false;
boolean rect2over = false;
boolean rect3over = false;
boolean textOver = false;
boolean rect5over = false;
boolean rect6over = false;
boolean rect7over = false;
//pour bouton entrée
boolean overButton = false;

// pour déplacement avec souris section se défaroucher
boolean locked0 = false;
boolean locked1 = false;
boolean locked2 = false;
boolean locked3 = false;
boolean locked4 = false;
boolean dolls0over = false;
boolean dolls1over = false;
boolean dolls2over = false;
boolean dolls3over = false;
boolean dolls4over = false;


// variable pour entrer le texte sur boutons video
String rect0text;
String rect1text;
String rect2text;
String rect3text;
String rect7text;
String rect4text; // variables pour menu caché
String rect5text ;
String rect6text;

float angleText = radians(270); // variable pour pivoter le texte menu caché

// variables immuables pour déclarer les différents états (écrans)
final int stateEntry  = 0; //accueil
final int stateMain = 1; //principal
final int stateSnow = 2; //crédit
final int stateUQAM = 3; //vidéo
final int stateAngrignon = 4;
final int stateMaison = 5;
final int stateJarry = 6;
final int stateCollection = 7; // se défaroucher
final int stateMap = 8; // carte couleur
final int stateWindsor = 9; //vidéo


int state= stateEntry; // pour identifier l'état de départ

void setup() {
  size(1476, 830);

  //pour animation oiseaux
  deltaTime1 = 90;
  previousDisplayTime1 = 0;
  deltaTime2 = 90;
  previousDisplayTime2 = 0;
  deltaTime3 = 90;
  previousDisplayTime3 = 0;
  // positionnement oiseaux
  posX1 = 0;
  posY1 = 30;
  posX2 = -300;
  posY2 = 400;
  posX3 = -120;
  posY3 = 750;

  images[0]  = loadImage("oiseau0.png");
  images[1]  = loadImage("oiseau1.png");
  images[2]  = loadImage("oiseau2.png");

  // chargement des vidéos
  videos[0] = new Movie (this, "video0.mp4");//maison
  videos[1] = new Movie (this, "video1.mp4"); //Jarry
  videos[2] = new Movie (this, "video2.mp4");//Angrignon
  videos[3] = new Movie (this, "video3.mp4");//UQAM
  videos[4] = new Movie (this, "video4.mp4"); //Windsor


  //pour faire jouer les vidéos en boucle
  videos[0].loop();
  videos[1].loop();
  videos[2].loop();
  videos[3].loop();
  videos[4].loop();

  //chargement des textes
  texteContent = loadStrings ("texte.txt");
  credit = loadStrings ("credits.txt");

  //chargement bande-son
  bird = new SoundFile(this, "son.mp3");
  bird.play();
  bird.loop();
  //chargement son
  click = new SoundFile (this, "click.wav");
  magie = new SoundFile (this, "magic.mp3");
  // système de particules
  ps0 = new ParticleSystem(new PVector(width/6*1, -100));
  ps1 = new ParticleSystem(new PVector(width/6*2, -100));
  ps2 = new ParticleSystem(new PVector(width/6*4, -100));
  ps3 = new ParticleSystem(new PVector(width/6*5, -100));
  //setup boids
  birds  = loadImage("oiseau2.png");
  flock = new Flock();
  for (int i = 0; i < 80; i++) {
    flock.addBoid(new Boid(-300, 600));
  }
  //pour les images à déplacer section se défaroucher
  for (int i = 0; i< dolls.length; i++) {
    dolls[i] = loadImage("avatar"+i +".png");
  }
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

  dolls0W = 34;
  dolls0H = 124;
  dolls1W = 78;
  dolls1H = 105;
  dolls2W = 65;
  dolls2H = 124;
  dolls3W = 88;
  dolls3H = 91;
  dolls4W = 93;
  dolls4H = 157;
  UQAMX = 215.25;
  UQAMY = 0;
}

void draw() {
  switch(state) { //pour indiquer les fonctions de "dessin" actives lorsque nous sommes dans un écran

  case stateEntry:
    entrydisplay();
    showEntry();

    break;

  case stateMain:
    displayMain();
    displayShape();
    showMain();
    bird1();
    bird2();
    bird3();
    break;

  case stateUQAM:
    showVideo3();
    break;

  case stateMaison:
    showVideo0();
    break;

  case stateJarry:
    showVideo1();
    break;

  case stateAngrignon:
    showVideo2();
    break;

  case stateWindsor:
    showVideo4();
    break;

  case stateSnow:
    displaySnow();
    displayFlock();
    break;

  case stateCollection:
    displayCollection();
    break;

  case stateMap:
    showMap();
    break;
  }
}
