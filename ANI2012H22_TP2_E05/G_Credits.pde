 /**void showText() {

  //arrière-plan
  carte = loadImage ("Carte_MTL_finale.jpg");
  image(carte, 0, 0);
  filter(GRAY);
  // valeurs format et position texte
 rectTextX = width/2-rectTextW/2;
  rectTextW = width/3.5;
  rectTextY = height/2;
  rectTextH = height-40;

  //valeurs position titre
  rectTitre2X = width/2+rectTitreW/2+45;
  rectTitre2Y = (height/2)-rectTitreH*2-5;

  //valeurs format et position crédits
  rectCredX = width/2+rectCredW*1.5;
  rectCredY = height/2+rectTextH/2-rectCredH/2;
  rectCredW = rectTextW/2.5;
  rectCredH = rectTextH/3.8;


  // affichage de la zone et du contenu - texte
  rectMode(CENTER);
  noStroke();
  fill(50);
  rect(rectTextX, rectTextY, rectTextW, rectTextH);
  textFont(typoS1);
  textAlign(LEFT);
  textSize(13);
  fill(248);
  // loop pour afficher texte
  for (int i =0; i <texteContent.length; i++)
    text(texteContent[i], rectTextX-rectTextW/2+15, 65+23*i);

  // affichage de la zone et du contenu - crédits
  rectMode(CENTER);
  noStroke();
  fill(50);
  rect(rectCredX, rectCredY, rectCredW, rectCredH);
  textFont(typoS1);
  textAlign (RIGHT);
  textSize(12);
  fill(248);
  // loop pour afficher les credits
  for (int i =0; i <credit.length; i++)
    text(credit[i], (rectCredX+rectCredW/2)-10, (rectCredH*3)+30+18*i);


  // affichage de la zone et du contenu - titre
  rectMode(CENTER);
  noStroke();
  fill(rectColor);
  rect(rectTitre2X, rectTitre2Y, rectTitreW, rectTitreH);

  textFont(titre);
  fill(50);
  textAlign(RIGHT);
  textSize(20);
  text("Dé[faroucher]", rectTitre2X+rectTitreW/2-10, rectTitre2Y-40);
  textFont(typoS1);
  fill(90);
  textAlign(RIGHT);
  textSize(14.5);
  text("une cartographie d'appartenance\nÀ Tiohtià:ke/Montréal - Canada", rectTitre2X+rectTitreW/2-10, rectTitre2Y);
 // textFont(typoS1);
 // fill(90);
 // textAlign(RIGHT);
 // textSize(16.5);
  //text("À Tiohtià:ke/Montréal - Canada", rectTitre2X+rectTitreW/2-10, rectTitre2Y+20);
  textFont(typoS1);
  fill(90);
  textSize(16);
  text("phase 1 – 2019-2022", rectTitre2X+rectTitreW/2-10, rectTitre2Y+60);

  // bouton retour vers écran principal
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
}*/
