
#include <Wire.h>
#include <ESP8266WiFi.h>            // we need wifi to get internet access
#include <time.h>                   // time() ctime()
#include <coredecls.h>              // settimeofday_cb()
#include <ArduinoOTA.h>             // unused because code is blocked by delays
#include <OneWire.h>
#include <DallasTemperature.h>

// Data wire is plugged into port 2 on the Arduino
#define ONE_WIRE_BUS D7

// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature sensors(&oneWire);

const char *ssid     = "xxx";
const char *password = "xxx";

#define DEBUG // activate output to serial

#ifdef DEBUG
#define DEBUG_PRINT(x) Serial.print(x)
#define DEBUG_PRINTF(x, f) Serial.print(x, f)
#define DEBUG_PRINTLN(x) Serial.println(x)
#define DEBUG_PRINTLNF(x, f) Serial.println(x, f)
#else
#define DEBUG_PRINT(x)
#define DEBUG_PRINTF(x, f)
#define DEBUG_PRINTLN(x)
#define DEBUG_PRINTLNF(x, f)
#endif

//Pin connected to latch pin (RCK)
#define latchPin D2
//Pin connected to clock pin (SRCK)
#define clockPin D1
////Pin connected to Data in (SER IN)
#define dataPin D5
////Pin connected to enable (G_bar)
#define enablePin D6

/* Configuration of NTP */
#define MY_NTP_SERVER "de.pool.ntp.org"            // set the best fitting NTP server (pool) for your location
#define MY_TZ "CET-1CEST,M3.5.0,M10.5.0/3"        // https://github.com/nayarsystems/posix_tz_db/blob/master/zones.csv

time_t now;                         // this is the epoch
tm tm;                              // the structure tm holds time information in a more convient way
 
// PWM period (ms)
const float period = 10;

// duration for which last digit is heated fast (ms)
const uint16_t t_fast = 15000;

// duty cycle is adjusted according to ambient temperature and interpolated between two points 
const float P1[2] = {21, 0.6};  // {temperature (°C), duty cycle}
const float P2[2] = {26, 0.4};  // {temperature (°C), duty cycle}


// bits to activate for showing numbers 0...9
//    0
//  5   1
//    6
//  4   2
//    3 
const byte seg[10] = {0b00111111, 0b00000110, 0b01011011, 0b01001111, 0b01100110, 0b01101101, 0b01111101, 0b00000111, 0b01111111, 0b01101111};

// save segments which where previously heated
byte dig1_old = 0;
byte dig2_old = 0;
byte dig3_old = 0;
byte dig4_old = 0;

// callback function that is called whenever time is set
// When using NTP, It is called just *after* time is set by NTP
// This callback is optional and can be used to trigger things when time is set
// It is called each time NTP syncs the time.
// It could potentially be used to update/set an RTC when NTP sets the time
// NOTE:
//   Keep in mind that the callback is called whenever settimeofday() is called.
//  So make sure to take that into account if calling settimeofday()

timeval cbtime;      // when time set callback was called
bool cbtime_set = false;

void time_is_set (void)
{
  time_t t = time (nullptr);

  gettimeofday (&cbtime, NULL);
  cbtime_set = true;
}

void setup() {
  // is called by NTP code when NTP is used and NTP sets the time
  // it is called just *after* NTP sets the time
  settimeofday_cb (time_is_set);
  
  //set pins to output because they are addressed in the main loop
  pinMode(latchPin, OUTPUT);
  pinMode(dataPin, OUTPUT);  
  pinMode(clockPin, OUTPUT);
  pinMode(enablePin, OUTPUT);

  digitalWrite(enablePin, HIGH);  // disable outputs until everything is set up
  
  Serial.begin(115200);
  sensors.begin();

  // delay a little
  delay(1000);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  DEBUG_PRINT("connecting to WiFI");
  while ( WiFi.status() != WL_CONNECTED ) {
    delay ( 500 );
    DEBUG_PRINT ( "." );
  }
  DEBUG_PRINTLN("connected!");

  DEBUG_PRINTLN("configure NTP");
  configTime(MY_TZ, MY_NTP_SERVER); // configure NTP server and timezone
  while(!cbtime_set)
  {
    DEBUG_PRINT("*");
    delay(500);  
  }

/*
  // OTA configuration
  String hname = "ThermochromicClock-" + String(ESP.getChipId(),HEX);
  ArduinoOTA.setHostname(hname.c_str());
  ArduinoOTA.setPassword((const char *)"ThermochromicClockOTA");
  
  ArduinoOTA.onStart([]() {
    Serial.println("Start");
  });
  ArduinoOTA.onEnd([]() {
    Serial.println("\nEnd");
  });
  ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
    Serial.printf("Progress: %u%%\r", (progress / (total / 100)));
  });
  ArduinoOTA.onError([](ota_error_t error) {
    Serial.printf("Error[%u]: ", error);
    if (error == OTA_AUTH_ERROR) Serial.println("Auth Failed");
    else if (error == OTA_BEGIN_ERROR) Serial.println("Begin Failed");
    else if (error == OTA_CONNECT_ERROR) Serial.println("Connect Failed");
    else if (error == OTA_RECEIVE_ERROR) Serial.println("Receive Failed");
    else if (error == OTA_END_ERROR) Serial.println("End Failed");
  });
  ArduinoOTA.begin();
  */

  digitalWrite(enablePin, LOW);   // enable outputs

  delay(2000);
  
}

void loop() {
  //testAllSegments();
  //testDisplayPWM();
  //ArduinoOTA.handle();
  updateDisplayPWM();
}

void showTime() {
  time(&now);                       // read the current time
  localtime_r(&now, &tm);           // update the structure tm with the current time
  DEBUG_PRINT("year:");
  DEBUG_PRINT(tm.tm_year + 1900);  // years since 1900
  DEBUG_PRINT("\tmonth:");
  DEBUG_PRINT(tm.tm_mon + 1);      // January = 0 (!)
  DEBUG_PRINT("\tday:");
  DEBUG_PRINT(tm.tm_mday);         // day of month
  DEBUG_PRINT("\thour:");
  DEBUG_PRINT(tm.tm_hour);         // hours since midnight  0-23
  DEBUG_PRINT("\tmin:");
  DEBUG_PRINT(tm.tm_min);          // minutes after the hour  0-59
  DEBUG_PRINT("\tsec:");
  DEBUG_PRINT(tm.tm_sec);          // seconds after the minute  0-61*
  DEBUG_PRINT("\twday");
  DEBUG_PRINT(tm.tm_wday);         // days since Sunday 0-6
  if (tm.tm_isdst == 1)             // Daylight Saving Time flag
    DEBUG_PRINT("\tDST");
  else
    DEBUG_PRINT("\tstandard");
  DEBUG_PRINTLN();
}


void updateDisplayPWM() {

  // get the current time
  showTime();

  uint16_t dig1 = tm.tm_hour / 10;
  uint16_t dig2 = tm.tm_hour % 10;
  uint16_t dig3 = tm.tm_min / 10;
  uint16_t dig4 = tm.tm_min % 10;

  // calculate duty cycle from ambient temperature
  float duty = calcDuty();

  // heat all new segments with 100% duty cycle for first n seconds
  for(int t=0; t<t_fast; t+=4*period) {
    // loop over all segments
    for(int i=0; i<4; ++i) { 
      // turn 2 segments of each digit on for some time   
      writeByte(seg[dig4] & (0b00000011 << 2*i));
      writeByte(seg[dig3] & (0b00000011 << 2*i));
      writeByte(seg[dig2] & (0b00000011 << 2*i));
      writeByte(seg[dig1] & (0b00000011 << 2*i));
      delay((uint16_t) (period*duty));
      // keep all new segments on
      writeByte(seg[dig4] & (0b00000011 << 2*i) & ~dig4_old);
      writeByte(seg[dig3] & (0b00000011 << 2*i) & ~dig3_old);
      writeByte(seg[dig2] & (0b00000011 << 2*i) & ~dig2_old);
      writeByte(seg[dig1] & (0b00000011 << 2*i) & ~dig1_old);
      delay((uint16_t) (period*(1-duty)));
    }  
  }

  // heat all segments with normal duty cycle for rest of the minute
  for(int t=t_fast; t<60000; t+=4*period) {
    // loop over all segments
    for(int i=0; i<4; ++i) { 
      // turn 2 segments of each digit on for some time   
      writeByte(seg[dig4] & (0b00000011 << 2*i));
      writeByte(seg[dig3] & (0b00000011 << 2*i));
      writeByte(seg[dig2] & (0b00000011 << 2*i));
      writeByte(seg[dig1] & (0b00000011 << 2*i));
      delay((uint16_t) (period*duty));
      // turn all segments off
      for(int i=0; i<4; i++) {
        writeByte(0);
      }
      delay((uint16_t) (period*(1-duty)));
    }
    
  }

  // update heated segments
  dig4_old = seg[dig4];
  dig3_old = seg[dig3];
  dig2_old = seg[dig2];
  dig1_old = seg[dig1];
  
}

void testDisplayPWM() {
   
}

void testAllSegments() {
  // loop over all digits
  for(int i=0; i<4; ++i) {
    // loop over all segments
    for(int j=0; j<7; ++j) {
      DEBUG_PRINT("testing digit ");
      DEBUG_PRINT(i);
      DEBUG_PRINT(", segment ");
      DEBUG_PRINTLN(j);
      switch(i) {
        case 3:
          writeByte(0b00000001 << j);
          writeByte(0);
          writeByte(0);
          writeByte(0); 
          break;
        case 2:
          writeByte(0);
          writeByte(0b00000001 << j);
          writeByte(0);
          writeByte(0); 
          break;
        case 1:
          writeByte(0);
          writeByte(0);
          writeByte(0b00000001 << j);
          writeByte(0);
          break;
        case 0:
          writeByte(0);
          writeByte(0);
          writeByte(0);
          writeByte(0b00000001 << j);
          break;
      }
      delay(10000);
    }
  }
}

// calculate heating time from ambient temperature
float calcDuty() {
  sensors.requestTemperatures();
  float T = sensors.getTempCByIndex(0);
  DEBUG_PRINT("temperature: ");
  DEBUG_PRINTLN(T);
  float duty = (T - P1[0]) * (P2[1] - P1[1]) / (P2[0] - P1[0]) + P1[1];
  if(duty>1) {
    duty = 1;
  }
  else if(duty<0) {
    duty = 0;
  }
  DEBUG_PRINT("duty cycle: ");
  DEBUG_PRINTLN(duty);
  return duty;
}


// This method sends bits to the shift register:
//
void writeByte(byte bitsToSend) {

  // turn off the output so the pins don't light up
  // while you're shifting bits:
  digitalWrite(latchPin, LOW);
  
  // shift the bits out
  shiftOut(dataPin, clockPin, MSBFIRST, bitsToSend);

  // turn on the output so the LEDs can light up:
  digitalWrite(latchPin, HIGH);

  //DEBUG_PRINT("write byte: ");
  //DEBUG_PRINTLNF(bitsToSend,BIN);

}

void registerWrite(int whichPin, int whichState) {
  // the bits you want to send
  byte bitsToSend0 = 0;
  // write number as bits
  bitWrite(bitsToSend0, whichPin, whichState);

  // turn off the output so the pins don't light up
  // while you're shifting bits:
  digitalWrite(latchPin, LOW);
  
  // shift the bits out
  shiftOut(dataPin, clockPin, MSBFIRST, bitsToSend0);

  // turn on the output so the LEDs can light up:
  digitalWrite(latchPin, HIGH);
}
