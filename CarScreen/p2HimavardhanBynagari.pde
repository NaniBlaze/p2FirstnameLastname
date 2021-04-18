float angle = 0; //<>//
float fuel=359;
PImage img;
int top=0;
int left=0;
int right=0;
float bottom=0;
int setupActive=0;
int Doors[]= new int[6];; 
int engineStarted=0;
int leftActive=0;
int rightActive=0;
int leftCount=0;
int rightCount=0;
int count=0;
int screen=0;
int greenBlur=0;
int redBlur=1;
String driveMode="P";
int cc=0;
int hazardCount=0;
void setup() {
  Doors[0]=0;
  Doors[1]=0;
  Doors[2]=0;
  Doors[3]=0;
  Doors[4]=0;
  Doors[5]=0;  
  background(204);
  size(950, 700);
  if(engineStarted==2 && setupActive==1){
   ScreenOutline();
     stroke(30);
   fill(0);
  circle(400, 183, 100);
  circle(300, 230, 60);
  fill(0,128,0);

   circle(495, 230, 60);
 
  line(660, 0, 660, 700);
  CheckingPage();
   fill(255,255,255);
   text(df.format(random(50, 68))+" °F",440,290);
   fill(0);
  }
} 



void draw() {
  
  
 fill(0,128,0);
if(greenBlur==0){strokeWeight(4); stroke(204, 102, 0); } else {strokeWeight(4); stroke(0, 0, 0); }
 
  rect(10, 20, 150, 30, 7);
  fill(0);
   Arial = createFont("Arial Bold", 18);
 textFont(Arial); 
  text("Engine Start",30, 25, 150, 80);
 fill(255,0,0);
if(redBlur==0){strokeWeight(4); stroke(204, 102, 0);} 
else{ strokeWeight(4); stroke(0, 0, 0);}

//if(redBlur==0) {  redBlur=1; filter( BLUR, 10);}

  rect(10, 60, 150, 30, 7);
  fill(0);
   Arial = createFont("Arial Bold", 18);
 textFont(Arial); 
  text("Engine Stop",30, 65, 150, 80);
  
  
  strokeWeight(1);
  stroke(0, 0, 0);
  if (screen==1 && engineStarted==0){
   
  if(top<100){
  line(400-top,100,400+top,100);  
  top+=1;
  }
  if(left<50){
    stroke(10);
   line(253-left,197+(left*2),253+left,197-(left*2));  

//   point(253-left,197+(left*2));  
//  point(253+left,197-(left*2));
  left+=1;
 
  }
  if(right<50){
    stroke(10);
       line(550-right,197-(right*2),550+right,197+(right*2));  

  // point(550-right,197-(right*2));  
  //point(550+right,197+(right*2));
  right+=1;
 
  }
   if(bottom<200){
    stroke(10);
     line(400-bottom,298,400+bottom,298);  
  bottom+=1.5;
 
  }
   if(top<75){
  line(400-top,130,400+top,130);  
  top+=1;
  }
  if(left<36){
    stroke(10);
     line(292-left,198+(left*2),292+left,198-(left*2));  

  left+=1;
 
  }
  if(right<36){
    stroke(10);
    line(505-right,198-(right*2),505+right,198+(right*2));  
  // point(550-right,197-(right*2));  
  //point(550+right,197+(right*2));
  right+=1;
 
  }
   if(bottom<140){
    stroke(10);
     line(400-bottom,267,400+bottom,267);  
  bottom+=1.5;
 
  }
}

  if(bottom>=200){ if(engineStarted==0)delay(500); engineStarted=2;}
  if(engineStarted==2 && setupActive==0){
      setupActive=1;
      setup();
    }
    if (mousePressed && mouseButton == LEFT && mouseY<(567+30)&& mouseY>567 && mouseX<(760+100)&&mouseX>760){
   //if( mouseY<(467+30)&& mouseY>467 && mouseX<(760+100)&&mouseX>760){
     if (fuel<359){
       fill(255,0,0);
       fuel+=1;

      if(fuel>240)fill(0,128,0);
      else if(fuel>120)fill(255,255,0);
      arc(495, 230, 60, 60, 0, radians(fuel));
     }
   }
  if(engineStarted==2 && screen==1){   

   
   fill(255,255,255);
  rect(360, 235, 82, 30, 7);
  line(420,235,420,265);
fill(0);
 if(key=='p' && angle==0){
     driveMode="P";
    }
  else if(key=='r'){
     driveMode="R";
    }
     else if(key=='d'){
       driveMode="D";
     
    }
    text(driveMode,425, 255,5);
  
  SpeedColor();
  RPMColor();
  SpeedDisplay();
  RPMDisplay();
  FuelColor();
    
  Signals();
  CarDoorIndicators();
AllIndicators();
  
fill(0);
  circle(495, 230, 30);
     img = loadImage("fuel.jpg");
  image(img,488, 220, 15,20);
   }
  
 else if(engineStarted==2 && screen==0){
    if(cc==1){
  img = loadImage("CruiceControlOn.png");
  image(img,380, 270, 30,25);
  //rect(360, 265, 82, 30, 7);
  }
  if(cc==0){ 
    fill(0);
  rect(380, 270, 30, 25, 7);
  }
    fill(255,255,255);
   rect(360, 235, 82, 30, 7);
line(420,235,420,265);
fill(0);
    text(driveMode,425, 255,5);
  
 fill(0,128,0);
  float x;   
  if(fuel==0.0 || screen==0){
     if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(400, 183, 100, 100, 0, radians(angle));
      fill(0);
      x=angle-0.5>0?angle-0.5:0;       
      arc(400, 183, 100, 100, radians(x), radians(angle+2.5));
      angle=x;
      fill(0);
      redBlur=1;
      greenBlur=0;
  }
   SpeedDisplay();
 
  fill(0,128,0);
 
  if(fuel==0.0 || screen==0){
   if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(300, 230, 60, 60, 0, radians(angle));
      fill(0);
      x=angle-0.5>0?angle-0.5:0;       
      arc(300, 230, 60, 60, radians(x), radians(angle+2));
      angle=x;
  }
   RPMDisplay();
   fill(0);
   PFont Font1;
   Font1 = createFont("Arial Bold", 18);
  textFont(Font1);
    text(distance,360, 255,10);
fill(0);
  circle(495, 230, 30);
     img = loadImage("fuel.jpg");
  image(img,488, 220, 15,20);
}
}


void ScreenOutline(){
  fill(0);
  quad(300, 100, 150, 300, 650, 300, 500, 100);
  fill(128, 128, 128);
  quad(330, 130, 220, 270, 580, 270, 470, 130);
}


void SpeedDisplay(){
  PFont Font1;
  fill(234);
  circle(400, 183, 50);
  fill(30);
  
  Font1 = createFont("Arial Bold", 18);
  textFont(Font1);
  
  if(int(angle/2)<10 )text(int(angle/2), 395, 187);
  if(int(angle/2)<100 && int(angle/2)>=10)text(int(angle/2), 390, 187);
  if(int(angle/2)<=360 && int(angle/2)>=100)text(int(angle/2), 385, 187);
  Font1 = createFont("Arial Bold", 10);
  textFont(Font1);
  text("MPH",390,199);
  
 fill(0);
}
void SpeedColor(){  
fill(0,128,0);
  float x;   
  if(fuel==0.0 || screen==0){
     if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(400, 183, 100, 100, 0, radians(angle));
      fill(0);
      x=angle-0.5>0?angle-0.5:0;       
      arc(400, 183, 100, 100, radians(x), radians(angle+2.5));
      angle=x;
      fill(0);
      redBlur=1;
      greenBlur=0;
  }
  if (keyPressed == true) {     
   if(key=='c'){
   if(cc==0){delay(100);cc=1;}
   else{delay(100); cc=0;}
   }
    if (keyCode == UP && angle>=0 && angle<360 && fuel!=0.0 && driveMode!="P") {
     
      angle+=1;
      if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(400, 183, 100, 100, 0, radians(angle));
      fill(0);
      
     

    }
      if (keyCode == DOWN && angle>0 && angle<=360 && fuel!=0.0 && driveMode!="P") {
        if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(400, 183, 100, 100, 0, radians(angle));
      fill(0);
      x=angle-5>0?angle-5:0;       
      arc(400, 183, 100, 100, radians(x), radians(angle+7.5));
      angle=x;
      fill(0);
    }
  }
  fill(0,128,0);
  if(keyPressed==false && cc==0){
  if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(400, 183, 100, 100, 0, radians(angle));
      fill(0);
      x=angle-0.5>0?angle-0.5:0;       
      arc(400, 183, 100, 100, radians(x), radians(angle+2.5));
      angle=x;
      fill(0);
  }
  if(angle!=0 && driveMode!="P"){
   distance+=0.01; 
  }
    fill(0);
    text(distance,360, 255,10);
      
  
}

void RPMDisplay(){
  PFont Font1;
  fill(234);
  circle(300, 230, 30);
  fill(30);
  
  Font1 = createFont("Arial Bold", 12);
  textFont(Font1);

  // String rpm;
   if(df.format(angle/40).length()!=3){
  // rpm= (String.valueOf() + ".0");
   text(df.format(angle/40) + ".0", 293, 233);
   //println("DDD");
   }
   else text(df.format(angle/40), 293, 233); // println("LLL");}
   
 Font1 = createFont("Arial Bold", 7);
  textFont(Font1);
  text("RPM", 293, 240);
  
  
  
  //if((((angle/2)/10)/2)==0)text("0.0", 295, 233);
  //else if((((angle/2)/10)/2)==9)text("9.0", 295, 233);
  //else  
  
 fill(0);
}

void RPMColor(){  
fill(0,128,0);
  float x;
  if(fuel==0.0 || screen==0){
   if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(300, 230, 60, 60, 0, radians(angle));
      fill(0);
      x=angle-0.5>0?angle-0.5:0;       
      arc(300, 230, 60, 60, radians(x), radians(angle+2));
      angle=x;
  }
  if (keyPressed == true) {     
    if (keyCode == UP && angle>=0 && angle<360 && fuel!=0.0  && driveMode!="P") {
     
      angle+=1;
      if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(300, 230, 60, 60, 0, radians(angle));

    }
      if (keyCode == DOWN && angle>0 && angle<=360 && fuel!=0.0 && driveMode!="P" ) {
        if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(300, 230, 60, 60, 0, radians(angle));
      fill(0);
      x=angle-5>0?angle-5:0;       
      arc(300, 230, 60, 60, radians(x), radians(angle+7));
      angle=x;
    }
  }
  fill(0,128,0);
   if(keyPressed==false && cc==0 && fuel!=0){
   if(angle>240)fill(255,0,0);
      else if(angle>120)fill(255,255,0);
      arc(300, 230, 60, 60, 0, radians(angle));
      fill(0);
      x=angle-0.5>0?angle-0.5:0;       
      arc(300, 230, 60, 60, radians(x), radians(angle+2));
      angle=x;
  }
}


void FuelColor(){  
fill(255,0,0);
  float x;
    
    //if (keyCode == UP && angle>=0 && angle<360 ) {
     
    //  angle-=1;
    //  if(angle>240)fill(255,0,0);
    //  else if(angle>120)fill(255,255,0);
    //  arc(495, 230, 60, 60, 0, radians(angle));

    //}

      if (angle/40 !=0.0 && fuel>0 && fuel<=360 && driveMode!="P") {
        
        if(fuel>240)fill(0,128,0);
      else if(fuel>120)fill(255,255,0);
      arc(495, 230, 60, 60, 0, radians(fuel));
      fill(0);
      
      if(angle/2>=0 && angle/2<60)
        x=fuel-0.2>0?fuel-0.2:0;
      else if(angle/2>=60 && angle/2<120)
        x=fuel-0.5>0?fuel-0.5:0;
      else
        x=fuel-0.7>0?fuel-0.7:0;
        
      arc(495, 230, 60, 60, radians(x), radians(fuel+5));
      fuel=x;
    }
  
}



void keyPressed() {
  count=0;
  if (key == CODED) {
    if (keyCode == LEFT) {
      if(leftActive==1){
      leftActive=0;      
    }
    
    else{
     leftActive=1;
    }
     rightActive=0;
     
    
    }
   
     if (keyCode == RIGHT) {
      if(rightActive==1){
      rightActive=0;      
    }
    
    else{
     rightActive=1;
    }
     leftActive=0;
     
    
    }
  } 
}
