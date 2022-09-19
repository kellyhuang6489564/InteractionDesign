void setup(){
 size(600,600); 
}
void draw(){
 background(#FFFFF2);
 for(int i=0;i<52;i++){
   int x=(i%10)*60; //除法10餘數
   int y =int(i/10)*120;
   rect(x,y,60,120);
 }
}
