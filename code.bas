$regfile = "m16def.dat"

config portc = Output
config portd.0 = Output
config portd.1 = Output

config lcdpin = pin , port = PORTc , rs = portd.0 , e = portd.1

config LCD = 16x2

dim sentence as string * 28
dim count as Integer

Cursor OffçÅ

sentence = "This is a test for Micro-Lab"


Do

   CLS
   WaitMs 300
   LCD sentence
   WaitMS 300
   count = 0

   Do

      ShiftLCD LEFT
      WaitMs 50
      count = count + 1

   Loop Until count = 28

Loop


End