float t;
void setup(){
  background(0);
size(500,500);

}

void draw(){
   background(0);
stroke(255);
strokeWeight(5);
translate(width/2, height/2);

for(float i=0 ; i < 200 ; i++){
  stroke(random(0,255), random(0,255), random(0,255));
  line(x1(t+i),y1(t+i), x2(t+i),y2(t+i));
  
}
line(x1(t), y1(t),x2(t), y2(t));
//point(x1(t), y1(t));
//point(x2(t), y2(t));
t++;
}

float x1(float t) {
return sin(t/10)*100 + sin(t/15)*20;
}

float y1(float t) {
return cos(t/10)*100;
}

float x2(float t) {
return sin(t/10)*200 + sin(t)*2;
}

float y2(float t) {
return cos(t/20)*200 + cos(t/12)*20;
}