# kellyhuang.github.io

Week01 
------
```C
    void setup(){
      size(500,500);
      background(#FFFFF2);
      stroke(255,0,0); //筆觸紅色
    }
    void draw(){  ///每秒60次
        if(mousePressed){
        line(mouseX,mouseY,pmouseX,pmouseY); 
      }
    }
    void keyPressed(){  ///如果有按下按鍵
         if(key == '1') stroke(#FA0834);
         if(key == '2') stroke(#FACA08);
         if(key == '3') stroke(#FAF208);
    }
```
------
Week02 
------
```C
void setup(){
 size(500,500); 
 PFont font = createFont("標楷體",40);
 textFont(font);
 String[]flower ={"黑桃","紅心","方塊","梅花"};///陣列
 face1 = flower[int(random(4))] + int(random(13)+1);
 face2 = flower[int(random(4))] + int(random(13)+1);
 face3 = flower[int(random(4))] + int(random(13)+1);
 face4 = flower[int(random(4))] + int(random(13)+1);
 //取整數0..12,所以再加1
}///洗牌的英文Shuffle
String face1,face2,face3,face4;
void draw(){
 drawPokerCard(100,100,face1); ///使用函式
 drawPokerCard(130,150,face2);
 drawPokerCard(160,200,face3);
 drawPokerCard(190,250,face4);
}///牌面:黑桃Spade Heart,Dimaind,Club
void drawPokerCard(int x, int y,String face){
  int W=25;
  fill(255);
  rect(x-W/2,y-W/2,150+W,250+W, 20);
  fill(#D064FF);
  rect(x,y,150,250,20); //弧度
  //fill(0);
  if(face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1 )fill(#FF0000);
  else fill(0);
  textSize(40);
  text(face,x,y+40);
}
```
