#include <LCD5110.h>

LCD5110 lcd(3,4,5,6,7,9);

void setup(){

  lcd.init();
  lcd.setBacklight(true);
  
}

void loop(){
  
  byte i=0;
  while (i < lcd.X_CHARS*lcd.Y_CHARS){
    lcd.sendChar(i+' ');
    i++;
  }
  delay(3000);
  lcd.clearScreenOrigin();
  i=0;
  while (i < lcd.X_CHARS*lcd.Y_CHARS){
    lcd.sendInvertedChar(i+' ');
    i++;
    }
  delay(3000);
}
