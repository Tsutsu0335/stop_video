PImage img;
PImage eyes, body;

boolean update_flag = true;
float pos = -height * 0.75;

void setup(){
  size(640, 480);
  background(255, 255, 255);
  img = loadImage("fall_guy.png");
  eyes = loadImage("fall_guy1.png");
  body = loadImage("fall_guy2.png");
  frameRate(60);
}

void draw(){
  background(255, 255, 255);
  if (update_flag){
  pos+=5;
  }
  if (pos >= height * 0.75) {
   pos = -height * 0.75; 
  }
  image(body, 0, 0, width, height);
  image(eyes, 0, pos, width, height);
  
  if (pos >= -0.1 && pos <= 0.1){
   image(img, 0, 0, width, height); 
  }
}

void keyTyped(){
  if (key == ' ' && update_flag){
   update_flag = false; 
  }else if (key == ' '){
   update_flag = true; 
  }
}
