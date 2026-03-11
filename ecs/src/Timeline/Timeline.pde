//Ben Stalsberg |Feb 23 2026 | Timeline
void setup() {
size(950,400);
}
void draw() {
  background(#B947E6);
  drawRef();
  histEvent(100,200,"Dec 1984",true,"Lebron is born in Akron, Ohio, The goat was born");
  histEvent(250,300,"Mar 1993",false," Introduced to basketball by his \n coach frank walker at the time. This made in gain interest in basketball.");
  histEvent(350,200,"Mar 2000",true," High school phenomenon became dubbed the chosen one");
  histEvent(500,300,"Nov 2003",false,"No 1 NBA draft pick, This is important because \n this shows he was a very good prospect and was very wanted by the teams.");
  histEvent(600,200,"June 2010",true,"joined the Miami heat and won 2 championships proving he was great.");
  histEvent(680,300,"June 2016",false,"Led the calves to their first \n NBA championship ,this was important to show his worth.");
  histEvent(780,200,"Feb 2023",true," All time leading scorer, \n This is important to show that he is still ok at the game even at 40.");
  histEvent(850,300,"Feb 2025",false,"Philanthropy & Business Empire, \n he started his company called Lebron James family foundation.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(36);
  fill(#E5DF46);
  text("Lebron James: Timeline",width/2,70);
  textSize(20);
  text("By: Ben Stalsberg",width/2,90);
  strokeWeight(5);
  line(50,250,900,250);
  text("1980",50,245);
  text("2026",900,245);
  strokeWeight(2);
  line(50,245,50,255);
  line(900,245,900,255);
  line(150,245,150,255);
  line(250,245,250,255);
  line(350,245,350,255);
  line(450,245,450,255);
  line(550,245,550,255);
  line(650,245,650,255);
  line(750,245,750,255);
  line(850,245,850,255);
}
void histEvent(int x, int y, String title, boolean top,String detail) {
  if(top == true) {
    line(x,y,x-15,y+50);
  } else {
    line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#E5DF46);
  rect(x,y,100,30,10);
  fill(00);
  textSize(15);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    textSize(20);
    text(detail,width/2,350);
  }
}
