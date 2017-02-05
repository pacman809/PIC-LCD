# PIC-LCD


Garth Madden 
Feb 2017

This is a sample code that runs a Volt meter off a pic 12LF1822
pin ra4 is connected to lcd via serial at 2400 baud
pin ra0 is to vdd ra1 is to whatever is tested.

all is written in assembly a

problems are with paging tables. works only up to approx 2 volts before it gets lost in data tables
