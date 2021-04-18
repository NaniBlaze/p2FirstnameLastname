PFont Arial;
int airSuspension=0;
int electricSystem=0;
int steering=0;
int lights=0;
int checkEngine=0;
int battery=0;
int transmission=0;
float distance=0;

int hazard=0;

import java.io.*;
import java.text.*;
DecimalFormat df = new DecimalFormat("#.#");

void CheckingPage(){
  fill(0);
   Arial = createFont("Arial Bold", 18);
 textFont(Arial);
  text("Checking Page", 760, 10, 150, 80); 
  text("Doors:", 680,50, 70, 80); 
  
  text("Indicators:", 680,250, 100, 80);
  text("Fuel:", 680,540, 100, 80);
  
  fill(125);
  rect(730, 120, 30, 30, 7);
  fill(0);
  text("1", 740, 124, 70, 80);
  
  fill(125);
  rect(730, 170, 30, 30, 7);
  fill(0);
  text("3", 740, 174, 70, 80); 
  
  fill(125);
  rect(850, 170, 30, 30, 7);
  fill(0);
  text("4", 860, 174, 70, 80); 
  
  fill(125);
  rect(850, 120, 30, 30, 7);
  fill(0);
  text("2", 860, 124, 70, 80); 
  
  fill(125);
  rect(750, 80, 110, 30, 7);
  fill(0);
  text("Bonnet", 775, 84, 70, 80); 
  
  fill(125);
  rect(750, 210, 110, 30, 7);
  fill(0);
  text("Trunk", 780, 214, 70, 80); 
  
  img = loadImage("CheckingCar.png");
  image(img,770, 120, 70,80);
  
   Arial = createFont("Arial Bold", 13);
 textFont(Arial);
  fill(125);
  rect(700, 280, 100, 30, 7);
  fill(0);
  text(" ", 703, 285, 110, 80);
  
    fill(125);
  rect(830, 280, 100, 30, 7);
  fill(0);
  text("Lights", 860, 287, 110, 80);
    
      fill(125);
  rect(700, 320, 100, 30, 7);
  fill(0);
  text("Air Suspension", 703, 325, 110, 80);
  
    fill(125);
    rect(830, 320, 100, 30, 7);
  fill(0);
  text("Check Engine", 838, 327, 110, 80);
  
   fill(125);
  rect(700, 360, 100, 30, 7);
  fill(0);
  text("E-Temperature", 703, 366, 150, 80);
  
  
    fill(125);
    rect(830, 360, 100, 30, 7);
  fill(0);
  text("Battery", 858, 367, 110, 80);
  
  fill(125);
  rect(700, 400, 100, 30, 7);
  fill(0);
  text("Steering Lock", 707, 406, 110, 80);
  
  fill(125);
  rect(830, 400, 100, 30, 7);
  fill(0);
  text("Transmission", 838, 407, 110, 80);
 
   img = loadImage("hazardLight.jpg");
   image(img,720, 450, 70,70);
   
  img = loadImage("Reset.png");
  image(img,820, 450, 70,70);
  

 
 
  
  fill(125);
  rect(760, 567, 100, 30, 7);
  fill(0);
  text("Fuel Refill", 778, 575, 110, 80);
  
}

 void mousePressed(){
   //if (mouseButton == RIGHT){
   ////if( mouseY<(467+30)&& mouseY>467 && mouseX<(760+100)&&mouseX>760){
   //    fuel+=5;
   
   //   if(fuel>240)fill(255,0,0);
   //   else if(fuel>120)fill(255,255,0);
   //   arc(495, 230, 60, 60, 0, radians(fuel));
   //}
   
   if( mouseY<(120+30)&& mouseY>120 && mouseX<(730+30)&&mouseX>730){
     if(Doors[0]==0){
      Doors[0]=1;
     }
     else{
       Doors[0]=0;
     }
    }
     else if(mouseY<(120+30)&& mouseY>120 && mouseX<(850+30)&&mouseX>850){
    if(Doors[1]==0){
      Doors[1]=1;
     }
     else{
       Doors[1]=0;
     }
    }
     else if(mouseY<(170+30)&& mouseY>170 && mouseX<(730+30)&&mouseX>730){
    if(Doors[2]==0){
      Doors[2]=1;
     }
     else{
       Doors[2]=0;
     }
    }
     else if(mouseY<(170+30)&& mouseY>170 && mouseX<(850+30)&&mouseX>850){
    if(Doors[3]==0){
      Doors[3]=1;
     }
     else{
       Doors[3]=0;
     }
    }
    else if(mouseY<(80+30)&& mouseY>80 && mouseX<(750+110)&&mouseX>750){
   if(Doors[4]==0){
      Doors[4]=1;
     }
     else{
       Doors[4]=0;
     }
    }
   else if(mouseY<(210+30)&& mouseY>210 && mouseX<(750+110)&&mouseX>750){
    if(Doors[5]==0){
      Doors[5]=1;
     }
     else{
       Doors[5]=0;
     }
    }
    if(mouseY<(280+30)&& mouseY>280 && mouseX<(830+100)&&mouseX>830){
      if(lights==0) lights=1;
      else if(lights==1) lights=2;
      else if(lights==2) lights=0;
    }
   
    if(mouseY<(320+30)&& mouseY>320 && mouseX<(700+100)&&mouseX>700){
    if(airSuspension==0) airSuspension=1;
    else airSuspension=0;
    }
    
     if(mouseY<(320+30)&& mouseY>320 && mouseX<(830+100)&&mouseX>830){
    if(checkEngine==0) checkEngine=1;
    else checkEngine=0;
    }
    if(mouseY<(360+30)&& mouseY>360 && mouseX<(700+100)&&mouseX>700){
    if(electricSystem==0) electricSystem=1;
    else electricSystem=0;
    }
    if(mouseY<(360+30)&& mouseY>360 && mouseX<(830+100)&&mouseX>830){
    if(battery==0) battery=1;
    else battery=0;
    }
    if(mouseY<(400+30)&& mouseY>400 && mouseX<(700+100)&&mouseX>700){
    if(steering==0) steering=1;
    else steering=0;
    }
    if(mouseY<(400+30)&& mouseY>400 && mouseX<(830+100)&&mouseX>830){
    if(transmission==0) transmission=1;
    else transmission=0;
    }
    if(mouseY<(20+30)&& mouseY>20 && mouseX<(10+150)&&mouseX>10){
    screen=1;
    //engineStarted=2;
    greenBlur=1;
    redBlur=0;
    }
    if(mouseY<(60+30)&& mouseY>60 && mouseX<(10+150)&&mouseX>10){
      screen=0;
      engineStarted=0;
      cc=0;
    greenBlur=0;
    redBlur=1;
    }
    if(mouseY<(450+70)&& mouseY>450 && mouseX<(820+70)&&mouseX>820){
     distance=0;
    }
     if(mouseY<(450+70)&& mouseY>450 && mouseX<(720+70)&&mouseX>720){
     if(hazard==0 && screen==1){
       hazard=1;
       img = loadImage("hazardLight.jpg");
      image(img,350, 270, 30,25);
      
     }
     else{
     fill(0);
  rect(350, 270, 30, 25, 7);
  hazard=0;
     }
    }
    
    
 }
