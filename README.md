What is pcspkr_keyboard?
===============

A program used to control a PC speaker that is hooked up to a computer (such as the Raspberry Pi) that has GPIO pins using PWM.

YouTube video [here](http://www.youtube.com/watch?feature=player_embedded&v=nyYOYrsPZa4). 

How do I use it?
===============

First, obtain a PC speaker. Hook it up to pin #18 and GND (ground). Polarity (+ -) does not matter.
If you want to reduce the volume, simply add a resistor to the circuit.

Then, download the script and execute it.

./keyboard.sh

Keys available: Q 2 W 3 E R 5 T Y U 8 I 9 O 0 P - [ = ] \

Note: Keys TAB and 1 do not work, because the command in the script 'read' cannot take TAB. 1 doesn't work because I'm too lazy to add it. :P

Refer to the below image for key chart:

Inspired by ["Robert Moogs 78th birthday" Google Doodle] (http://www.google.com/doodles/robert-moogs-78th-birthday)

![My image](http://2.bp.blogspot.com/-6sNhc5kVeO4/T7074OkGh2I/AAAAAAAABH0/ECBZTZvTKyg/s640/google+moog+keyboard+synthesizer+layout.png.png)
