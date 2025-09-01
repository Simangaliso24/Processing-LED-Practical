// |NAME         : SURNAME   |
// |-------------------------|
// |SLEKA       : SANGWENI   |
// |-------------------------|

int defC = #0000FF;
int c1 = #FF0000;
int c2 = #00FF00;

int led1 = defC;
int led2 = defC;
int led3 = defC;
int led4 = defC;

String led1L = "Blue";
String led2L = "Blue";
String led3L = "Blue";
String led4L = "Blue";

int gaugeLevel = 0;

void setup() {
  size(450, 180);
  background(255);
}

void draw() {
   background(255);
  // Draw grid lines
  stroke(200); // Set grid line color (light gray)
  for (int x = 0; x <= width; x += 10) {
    line(x, 0, x, height); // Vertical grid lines
  }
  for (int y = 0; y <= height; y += 10) {
    line(0, y, width, y); // Horizontal grid lines
  }
  
    //textAlign(CENTER); // Center-align labels
 // textSize(20);
  
  // Draw LEDs
  fill(led1);  // Default color is blue
  ellipse(75, 65, 50, 50); // LED1
  textSize(20);
  fill(0);
  text(led1L, 50, 20); // Label for LED1
  
  fill(led2);  // Default color is blue
  ellipse(175, 65, 50, 50);
  textSize(20);
  fill(0);
  text(led2L, 150, 20);
  
  fill(led3);  // Default color is blue
  ellipse(275, 65, 50, 50); // LED3
  textSize(20);
  fill(0);
  text(led3L, 250, 20);
  
  fill(led4);  // Default color is blue
  ellipse(375, 65, 50, 50); // LED4
  textSize(20);
  fill(0);
  text(led4L, 350, 20);
  
  fill(200);
  rect(50, 120, 350, 20);
  if(gaugeLevel >= 50){
    fill(c1);
  }else {
  fill(c2);}
  rect(50, 120, 3.5 * gaugeLevel, 20);
  fill(0);
  text(gaugeLevel + "%", 50, 160);
}

void mousePressed() {
  // Left click: Change clicked LED to c1 and reset others to defC
  if (mouseButton == LEFT) {
    if (mouseY >= 40 && mouseY <= 90 && mouseX >= 50 && mouseX <= 100) {
      led1 = c1;
      led1L = "Red";
      led2 = defC; led2L = "Blue";
      led3 = defC; led3L = "Blue";
      led4 = defC; led4L = "Blue";
    } else if (mouseY >= 40 && mouseY <= 90 && mouseX >= 150 && mouseX <= 200) {
      led2 = c1;
      led2L = "Red";
      led1 = defC; led1L = "Blue";
      led3 = defC; led3L = "Blue";
      led4 = defC; led4L = "Blue";
    } else if (mouseY >= 40 && mouseY <= 90 && mouseX >= 250 && mouseX <= 300) {
      led3 = c1;
      led3L = "Red";
      led1 = defC; led1L = "Blue";
      led2 = defC; led2L = "Blue";
      led4 = defC; led4L = "Blue";
    } else if (mouseY >= 40 && mouseY <= 90 && mouseX >= 350 && mouseX <= 400) {
      led4 = c1;
      led4L = "Red";
      led1 = defC; led1L = "Blue";
      led2 = defC; led2L = "Blue";
      led3 = defC; led3L = "Blue";
    }
  }

  // Right click: Change clicked LED to c2 and reset others to defC
  if (mouseButton == RIGHT) {
    if (mouseY >= 40 && mouseY <= 90 && mouseX >= 50 && mouseX <= 100) {
      led1 = c2;
      led1L = "Green";
      led2 = defC; led2L = "Blue";
      led3 = defC; led3L = "Blue";
      led4 = defC; led4L = "Blue";
    } else if (mouseY >= 40 && mouseY <= 90 && mouseX >= 150 && mouseX <= 200) {
      led2 = c2;
      led2L = "Green";
      led1 = defC; led1L = "Blue";
      led3 = defC; led3L = "Blue";
      led4 = defC; led4L = "Blue";
    } else if (mouseY >= 40 && mouseY <= 90 && mouseX >= 250 && mouseX <= 300) {
      led3 = c2;
      led3L = "Green";
      led1 = defC; led1L = "Blue";
      led2 = defC; led2L = "Blue";
      led4 = defC; led4L = "Blue";
    } else if (mouseY >= 40 && mouseY <= 90 && mouseX >= 350 && mouseX <= 400) {
      led4 = c2;
      led4L = "Green";
      led1 = defC; led1L = "Blue";
      led2 = defC; led2L = "Blue";
      led3 = defC; led3L = "Blue";
    }
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    gaugeLevel = max(gaugeLevel - 1, 0);
  } else if (keyCode == RIGHT) {
    gaugeLevel = min(gaugeLevel + 1, 100);
  }
}
