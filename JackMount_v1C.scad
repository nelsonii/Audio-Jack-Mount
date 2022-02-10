fileDescription = "Jack Mount (4)";
fileType = "JM-4";
fileVersion = "1C";

// Based on Audio Jack Breakout boards found on Amazon
// https://amzn.to/3oxYOGj


//The Belfry OpenSCAD Library
//https://github.com/revarbat/BOSL
include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>

slotDistanceX = 10;
switchCount = 4;

mountWidthX = (slotDistanceX*switchCount*1.10);
mountDepthY = 15;
mountHeightZ = 2; 


$fn=90; //circle smoothness

//main
difference() {
  base();
}

module base() {  
  color("steelblue") cube([mountWidthX+5, mountDepthY, mountHeightZ]);
  color("deepskyblue") up(1.5) right(slotDistanceX*0) rotate([0,45,0]) cube([2, mountDepthY, 10]);
  color("deepskyblue") up(1.5) right(slotDistanceX*1) rotate([0,45,0]) cube([2, mountDepthY, 10]);
  color("deepskyblue") up(1.5) right(slotDistanceX*2) rotate([0,45,0]) cube([2, mountDepthY, 10]);
  color("deepskyblue") up(1.5) right(slotDistanceX*3) rotate([0,45,0]) cube([2, mountDepthY, 10]);
  color("deepskyblue") up(1.5) right(slotDistanceX*4) rotate([0,45,0]) cube([2, mountDepthY, 10]);
  color("cornflowerblue") back(13) cube([mountWidthX+5, 2, 10]);
}

  

