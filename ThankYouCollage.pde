//add thank you code here
PImage nugget;
PImage nuggetv2;
PImage sauce;
PFont some;
float r;
float ry;
int oc= 0;
int X=mouseX;
int Y=mouseY;
float testx = 100;
float testy = 100;
int movedown = 3;

void setup() {
  size(460,460);
  nugget = loadImage ("nuggetv2.png");
  sauce = loadImage("sauce.png");
  some = loadFont ("BellMT-48.vlw");
  nuggetv2 = loadImage("artnug.png");
}

void draw() { 
  background(255);
  fill(0,0,0,oc);
  textFont(some,64);
 text("Thank You",70,100);
 textFont(some,34);
 text("For caring so much",100,150);
 textFont(some,24);
 fill(0,0,0,255);
 text("Dip the nugget",300,400);
 
 
  //image
  float mx = constrain(mouseY, 200,390);
  image(nuggetv2,r,ry,50,50);
  image(sauce,150,400,100,100);
  imageMode(CENTER);
  image(nugget,150,mx,100,100);
 //nugget rain
 ry = ry+movedown;
 
 //mouse if stuff
     if (mouseY > 400) {
     oc = 225;
     }
     if (ry > 400) {
       ry = random(height);
       r = random(width);
     }
     
 
}
