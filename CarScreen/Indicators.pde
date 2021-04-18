
void CarDoorIndicators(){
  
  if(Doors[4]==1){
    img = loadImage("carBonnet.jpg");
  image(img,275, 135, 30,30);
  }
  else if(Doors[5]==1){
    img = loadImage("carTrunk.jpg");
  image(img,275, 135, 30,30);
  }
  else if(Doors[0]==0 && Doors[1]==0 && Doors[2]==0 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoorClosed.jpg");
  image(img,275, 135, 30,30);
  }
  else if(Doors[0]==0 && Doors[1]==0 && Doors[2]==0 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoorClosed.jpg");
  image(img,275, 135, 30,30);
  }
  else if(Doors[0]==1 && Doors[1]==0 && Doors[2]==0 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==0 && Doors[1]==1 && Doors[2]==0 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor2.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==0 && Doors[1]==0 && Doors[2]==1 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor3.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==0 && Doors[1]==0 && Doors[2]==0 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor4.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==1 && Doors[1]==1 && Doors[2]==0 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1,2.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==1 && Doors[1]==1 && Doors[2]==1 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1,2,3.jpg");
  image(img,275, 135, 30,30);
  }
  else if(Doors[0]==1 && Doors[1]==0 && Doors[2]==1 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1,3.4.jpg");
  image(img,275, 135, 30,30);
  }
  else if(Doors[0]==0 && Doors[1]==1 && Doors[2]==1 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor2,3,4.jpg");
  image(img,275, 135, 30,30);
  }
  else if(Doors[0]==1 && Doors[1]==1 && Doors[2]==0 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1,2,4.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==1 && Doors[1]==1 && Doors[2]==1 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1,2,3.4.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==1 && Doors[1]==0 && Doors[2]==1 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1,3.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==1 && Doors[1]==0 && Doors[2]==0 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor1,4.jpg");
  image(img,275, 135, 30,30);
  }
  else  if(Doors[0]==0 && Doors[1]==1 && Doors[2]==1 && Doors[3]==0 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor2,3.jpg");
  image(img,275, 135, 30,30);
  }
   else if(Doors[0]==0 && Doors[1]==1 && Doors[2]==0 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor2,4.jpg");
  image(img,275, 135, 30,30);
  }
  else  if(Doors[0]==0 && Doors[1]==0 && Doors[2]==1 && Doors[3]==1 && Doors[4]==0 && Doors[5]==0){
    img = loadImage("carDoor3,4.jpg");
  image(img,275, 135, 30,30);
  }
}


void AllIndicators(){

  
  
  if(airSuspension==1){
  img = loadImage("AirSuspensionFault.PNG");
  image(img,247, 170, 30,30);
  }
  else{
    img = loadImage("AirSuspensionGood.PNG");
  image(img,247, 170, 30,30);
  }
  if(electricSystem==0){
  img = loadImage("EngineTemperatureNormal.jpg");
  image(img,220, 205, 30,30);
  }
  else{
  img = loadImage("EngineTemperature.jpg");
  image(img,220, 205, 30,30);
  }
  
  if(steering==0){
   img = loadImage("SteeringGood.PNG");
  image(img,192, 243, 30,27);
}
  else{
  img = loadImage("SteeringFault.PNG");
  image(img,192, 243, 30,27);
  }
  if(lights==0){
  img = loadImage("LightOff.PNG");
  image(img,495, 135, 30,30);
  }
  else if (lights==1){
   img = loadImage("DippedBeam.jpg");
  image(img,495, 135, 30,30);
  }
  else{
   img = loadImage("FullBeam.jpg");
  image(img,495, 135, 30,30);
  }
  if(checkEngine==0){
  img = loadImage("CheckEngineGood.PNG");
  image(img,525, 170, 30,30);
  }
  else{
     img = loadImage("CheckEngineFault.PNG");
  image(img,525, 170, 30,30);
  }
  if(battery==0){
  img = loadImage("BatteryGood.PNG");
  image(img,550, 205, 27,27);
  }
  else{
  img = loadImage("BatteryBad.PNG");
  image(img,550, 205, 27,27);
  }
   
  if(transmission==0){
   img = loadImage("TransmissionGood.PNG");
  image(img,578, 243, 30,27);
  }
  else{
  img = loadImage("TransmissionFault.PNG");
  image(img,578, 243, 30,27);
  }
  
 if(cc==1){
  img = loadImage("CruiceControlOn.png");
  image(img,380, 270, 30,25);
  //rect(360, 265, 82, 30, 7);
  }
  if(cc==0){ 
    fill(0);
  rect(380, 270, 30, 25, 7);
  }
 
  
  
  
  
}


void Signals(){
  if(hazard==0){
   img = loadImage("left black.PNG");
  image(img,300, 105, 30,25);
   img = loadImage("Right black.png");
  image(img,470, 105, 30,25);
  if(leftActive==1 && leftCount==0){
  img = loadImage("left color.PNG");
  image(img,300, 105, 33,25);
  count+=1;
  if(count==10){
  leftCount=1;
  count=0;
  }
  }
  else if(leftActive==1 && leftCount==1){
   img = loadImage("left black.PNG");
  image(img,300, 105, 30,25);
  count+=1;
  if(count==10){
  leftCount=0;
  count=0;
  }
  }  
  else if(leftActive==0){
    img = loadImage("left black.PNG");
  image(img,300, 105, 30,25);
  }
  
   if(rightActive==1 && rightCount==0){
  img = loadImage("right color.PNG");
  image(img,470, 105, 33,25);
  count+=1;
  if(count==10){
  rightCount=1;
  count=0;
  }
  }
  else if(rightActive==1 && rightCount==1){
   img = loadImage("Right black.png");
  image(img,470, 105, 30,25);
  count+=1;
  if(count==10){
  rightCount=0;
  count=0;
  }
  }  
  else if(rightActive==0){
    img = loadImage("Right black.png");
  image(img,470, 105, 30,25);
  } 
  }
  else{
    if(hazardCount==0){
  img = loadImage("left color.PNG");
  image(img,300, 105, 33,25);
  img = loadImage("right color.PNG");
  image(img,470, 105, 33,25);
  count+=1;
  if(count==10){
  hazardCount=1;
  count=0;
  }
    }
  else{
   img = loadImage("left black.PNG");
  image(img,300, 105, 30,25);
   img = loadImage("Right black.png");
  image(img,470, 105, 30,25);
  count+=1;
  if(count==10){
  hazardCount=0;
  count=0;
  }
  }
    }
  
}
