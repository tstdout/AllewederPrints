include <Paraboloid.scad>
$fn=5;
difference(){
  paraboloid (y=80,f=3,rfa= 0,fc=0,detail=120);    
  translate([0,0,3])paraboloid (y=80,f=2.6,rfa= 0,fc=0,detail=120);
  translate([0,0,40])cube([40,7,40]);  
}
//translate([0,0,40])cube([60,60,80], center= true);