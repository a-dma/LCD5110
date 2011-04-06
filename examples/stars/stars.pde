#include <LCD5110.h>

LCD5110 lcd(3,4,5,6,7,9);

void setup(){

  lcd.init();
  lcd.setBacklight(true);
  lcd.setInverseVideo(true);
  
}

void loop(){
  
  int time = 50;
  
  lcd.setOrigin();
  lcd.sendChar('-');
  lcd.setXYChar(lcd.X_CHARS-1,0);
  lcd.sendInvertedChar('\\');
  lcd.setXYChar(0,lcd.Y_CHARS-1);
  lcd.sendInvertedChar('|');
  lcd.setXYChar(lcd.X_CHARS-1,lcd.Y_CHARS-1);
  lcd.sendChar('/');
  delay(time);
  
  lcd.setOrigin();
  lcd.sendChar('\\');
  lcd.setXYChar(lcd.X_CHARS-1,0);
  lcd.sendInvertedChar('|');
  lcd.setXYChar(0,lcd.Y_CHARS-1);
  lcd.sendInvertedChar('/');
  lcd.setXYChar(lcd.X_CHARS-1,lcd.Y_CHARS-1);
  lcd.sendChar('-');
  delay(time);
  
  lcd.setOrigin();
  lcd.sendChar('|');
  lcd.setXYChar(lcd.X_CHARS-1,0);
  lcd.sendInvertedChar('/');
  lcd.setXYChar(0,lcd.Y_CHARS-1);
  lcd.sendInvertedChar('-');
  lcd.setXYChar(lcd.X_CHARS-1,lcd.Y_CHARS-1);
  lcd.sendChar('\\');
  delay(time);
  
  lcd.setOrigin();
  lcd.sendChar('/');
  lcd.setXYChar(lcd.X_CHARS-1,0);
  lcd.sendInvertedChar('-');
  lcd.setXYChar(0,lcd.Y_CHARS-1);
  lcd.sendInvertedChar('\\');
  lcd.setXYChar(lcd.X_CHARS-1,lcd.Y_CHARS-1);
  lcd.sendChar('|');
  delay(time);
}
