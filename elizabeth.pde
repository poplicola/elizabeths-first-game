PImage elizabeth_face, plate, bun, ostrich, bite;
PGraphics the_background, the_ostrich, drawing;
int x = 1;
boolean biting=false;

void setup(){
  size(700,700);
  elizabeth_face = loadImage("elizabeth.png");
  plate = loadImage("plate.png");
  bun = loadImage("bun.png");
  ostrich = loadImage("ostrich.png");
  bite = loadImage("bite.png");
  the_background = createGraphics(width,height);
  the_ostrich = createGraphics(width,height);
  drawing = createGraphics(width,height);
}

void draw(){
  the_background.beginDraw();
  the_background.background(#FFB4F6);
  // the_background.image(plate,50,50,800,800);
  the_background.image(bun,230,20,450,800);
  the_background.image(elizabeth_face,250,20,width/4,800);
  the_background.endDraw();
  
  drawing.beginDraw();
  if(x==1){
    drawing.fill(#FF0000);
    drawing.stroke(#FF0000);
    x++;
  }
    
  if (keyPressed){
    if (key=='k' || key=='K'){
      drawing.fill(#FF0000);
      drawing.stroke(#FF0000);
    } else if (key=='m' || key=='M'){
      drawing.fill(#F6FF00);
      drawing.stroke(#F6FF00);
    } else if (key=='e' || key=='E'){
      x=1;
    } else if (key=='o' || key=='O'){
      biting=true;
    }
  }
  
  if (mousePressed){
    if(!biting){
      drawing.ellipse(mouseX,mouseY,40,40);
    } else if(biting){
      drawing.stroke(#FFB4F6);
      drawing.image(bite,mouseX-200,mouseY-57);
    }
    
  }
  drawing.endDraw();
  
  
  image(the_background,0,0);
  if(biting){
    image(ostrich,mouseX-200,mouseY-237);
  } 
  image(drawing,0,0);
}