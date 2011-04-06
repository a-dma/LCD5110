#include <LCD5110.h>

LCD5110 lcd(3,4,5,6,7,9);

void setup(){

  lcd.init();
  lcd.setBacklight(true);
  Serial.begin(9600);
}

void loop(){
  
  if (Serial.available() > 0){
    lcd.clearScreenOrigin();
    while (Serial.available() > 0)
      lcd.sendChar(Serial.read());
  }
  else {
    delay(500); 
  }
}
