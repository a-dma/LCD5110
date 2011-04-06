#ifndef LCD5110_h
#define LCD5110_h

#include "WProgram.h"

class LCD5110 {

  public:
    static const byte HEIGHT = 48; /**< Display height */
    static const byte WIDTH = 84; /**< Display width */
    static const byte CHAR_HEIGHT = 8;  /**< Character height */
    static const byte CHAR_WIDTH = 7; /**< Character width */
    static const byte X_CHARS = WIDTH/CHAR_WIDTH; /**< Characters per row */
    static const byte Y_CHARS = HEIGHT/CHAR_HEIGHT; /**< Characters per column */
    LCD5110(byte sclk_pin, byte sdin_pin, byte dc_pin, byte reset_pin, byte sce_pint, byte led_pint); /**< Ctor */
    ~LCD5110();
    void clearScreen(void); /**< Clear the display */
    void clearScreenOrigin(void); /**< Clear the display and reset the cursor to (0,0) */
    void init(void); /**< Initialize the display */;
    void printChar(byte c); /**< Clear the display and print the character c at (0,0) */
    void printInvertedChar(byte c); /**< Clear the display and print the inverted character c at (0,0) */
    void printInvertedStr(String s); /**< Clear the display and print the inverted string s starting from (0,0) */
    void printStr(String s); /**< Clear the display and print the string s starting from (0,0) */
    void sendChar(byte c); /**< Send out a character */
    void sendInvertedChar(byte c); /**< Send out an inverted character */
    void sendInvertedStr(String s); /**< Send out an inverted string */
    void sendStr(String s); /**< Send out a string */
    void setBacklight(boolean b); /**< Turn the backlight on or off */
    void setInverseVideo(boolean b); /**< Activate or deactivate inverse video mode */
    void setOrigin(void); /**< Set the cursor to coordinates (0,0) */
    void setXYChar(byte x, byte y); /**< Set the cursor to the character at coordinates (X,Y) */

  private:
    static const byte ASCII[][5]; /**< Characters map */
    static const byte COMMAND = LOW; /**< Command shorthand */
    static const byte DATA = HIGH; /**< Data shorthand */
    void reset(void); /**< Reset the display */
    void sendValue(byte dc, byte data); /**< Send command or data to the display */
    const byte sclk_pin; /**< Serial clock pin */
    const byte sdin_pin; /**< Serial data in pin */
    const byte dc_pin; /**< Data/Command pin */
    const byte reset_pin; /**< Reset pin */
    const byte sce_pin; /**< Serial Chip Enable pin */
    const byte led_pin;/**< Backlight pin */
};

#endif
