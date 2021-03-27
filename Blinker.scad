
h= 9;
ledR=16.4;
len = 18;

module reflector(){
  difference()
  {
    linear_extrude(height = 21) scale(0.32,1,1) import("Blinker.dxf");
    translate([18,-3,6]) linear_extrude(height = 21) scale(0.27,1,1) import("Blinker.dxf");
  }
}


module frontBlinker(){
 difference(){ 
   sphere(r=ledR);
   sphere(r=ledR-1.2);
   translate([0,0,-ledR]) cube([2*ledR, 2*ledR, 2*ledR], center=true);
 } 
}

module Arow(l,ra){
  minkowski(){
    linear_extrude(height=h)
	   polygon(points = [ [-l, 0], [l, 0], [0, 2*l]]);
    cylinder(r=ra);
  }
}

module mountPoint(mr, mheight){
  difference(){
    cylinder(r=0, r2= mr, h=mheight);
    translate([0,0,2]) cylinder(r=1.4, h = mheight-2);
  }
}


module rearBlinker(){
  difference(){
    Arow(len+2,5);
    translate([0,1.5,2.2]) Arow(len,3.5);
  }
  translate([len,1,2]) mountPoint(6,h-1);
  translate([-(len),1,2]) mountPoint(6,h-1);
  translate([0,2*len+2,2]) mountPoint(6,h-1);
}

$fn=19;
frontBlinker();
translate([0,25,0]) rearBlinker();

