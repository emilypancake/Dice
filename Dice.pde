int total = 0;
void setup(){
  size(500, 500);
  noLoop();
}
void draw(){
    background(0,0,0);
    total = 0;

    for(int x = 30; x < width; x+= width/4){
      for(int y = 30; y < height * 3/4; y+= width/4){
        
        Die bob = new Die(x, y);
        bob.roll();
        bob.show();
      }
    }
    fill(255, 255, 255);
    textSize(60);
    textAlign(CENTER);
    text(total, width/2, height * 7/8);
  
}
void mousePressed(){
    redraw();
}
class Die{ //models one single dice cube
    //member variable declarations here
    int number;
    int myX;
    int myY; 
   
    
    Die(int x, int y){ //constructor
        myX = x;
        myY = y;
    }
    void roll(){
       number = (int)(Math.random()*6)+1;
       total += number;
    }
    void show(){  
        fill(255, 255, 255);
        rect(myX, myY, 70, 70, 20);
        fill(0, 0, 0);

        if(number % 2 == 1){
          ellipse(myX + 70/2, myY + 70/2, 10, 10); // center
        }
        if(number > 1){
          ellipse(myX + 70/4, myY + 70/4, 10, 10); // top left
          ellipse(myX + 70/2 + 70/4, myY + 70/2 + 70/4, 10, 10); // bottom right
        }
        if(number > 3){
          ellipse(myX + 70/2 - 70/4, myY + 70/2 + 70/4, 10, 10); //left bottom
          ellipse(myX + 70/2 + 70/4, myY + 70/2 - 70/4, 10, 10); //top right
        }
        if(number == 6){
          ellipse(myX + 70/2, myY + 70/2 + 70/4, 10, 10); // middle bottom
          ellipse(myX + 70/2, myY + 70/2 - 70/4, 10, 10); // top middle
        }
    }
    void codeThatIsntRunButIWannaKeepInTheBackOfMyCodeSoHereItIs(){
      ellipse(myX + 70/2, myY + 70/2, 10, 10); // center
      ellipse(myX + 70/4, myY + 70/4, 10, 10); // top left
      ellipse(myX + 70/2 + 70/4, myY + 70/2 + 70/4, 10, 10); // bottom right
      ellipse(myX + 70/2 + 70/4, myY + 70/2 - 70/4, 10, 10); //top right
      ellipse(myX + 70/2, myY + 70/2 - 70/4, 10, 10); // top middle
      ellipse(myX + 70/2, myY + 70/2 + 70/4, 10, 10); // middle bottom
      ellipse(myX + 70/2 - 70/4, myY + 70/2 + 70/4, 10, 10); //left bottom
    }
}
