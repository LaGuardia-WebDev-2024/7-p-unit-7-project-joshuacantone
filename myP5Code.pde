//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
r1y = 10;
r2y = 250;
r2Size = 50;
r3y = 350;
r1Speed = 1;
timer = 0;
x1 = 100;
x2 = 275;
x3 = 450;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,);
  //showXYPositions();


  fill(255, 255, 255)
    ellipse(mouseX, 200, 20, 20);


    fill(50, 100, 255)
    rect(x1,r1y,50,50);

    fill(50, 100, 255)
    rect(x2,r2y,r2Size,r2Size);

    fill(50, 100, 255)
    rect(x3,r3y,50,50);





  timer++;
  if (timer > 50)
  {
    r1Speed = random(10);
  }
     
    r1y +=(r1Speed);
    r2y -=(5);
    r2Size ++;
    r3y -=(r1Speed * 2);

    

  //Show x y values when mousepressed
 showXYPositions();

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
        if (r1y > 400)
    {
      r1y = 10;
      x1 = random (400);
    }

    if (r2y <100)
    {
      r2y = 250;
      r2Size = 50;
      x2 = random(400);
    }

    if (r3y < 10 )
    {
      r3y = 350;
      x3 = random(400);
    }

}
