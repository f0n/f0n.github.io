// Global variables
float Rotation1;
float Rotation2;
float Rotation3;
PImage gear1;
PImage gear2;
PImage gear3;
float gearratio1 = 8/14;
float gearratio2 = 14/18;
float RPM = 0.005;

// Setup the Processing Canvas
void setup(){
  size( 1920, 1200 );
  frameRate( 200 );
  gear1 = loadImage("gear1.png");
  gear2 = loadImage("gear2.png");
  gear3 = loadImage("gear3.png");


  
}

// Main draw loop
void draw(){
   background(#800000);
   imageMode(CENTER);

     
   Rotation1 += RPM;
   Rotation2 -= RPM*gearratio1;
   Rotation3 += RPM*gearratio1*gearratio2;
   
   pushMatrix(); 
    translate(172, 100);
    rotate(Rotation1);
    image(gear1, 0, 0, 50, 50);
   popMatrix();
   
   pushMatrix(); 
    translate(100, 100);
    rotate(Rotation2);
    image(gear2, 0, 0, 100, 100);
   popMatrix();
   
   pushMatrix(); 
    translate(104, 229);
    rotate(Rotation3+radians(7));
    image(gear3, 0, 0, 200, 200);
   popMatrix();

}


