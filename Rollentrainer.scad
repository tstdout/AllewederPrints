
$fn= 60;
ld= 22.2;
lw= 7.4;


module halfRoll(){
  difference(){
    translate([0,0,-60])cylinder(r=30, h=60);
    cylinder(r=4.1, h= 120, center= true);    
    rotate_extrude(convexity = 10) translate([370, 0, 0]) circle(r = 350, $fn = 100);
  }
}

module halfBlock(bh=33, bw=25){ 
  difference(){  
    cube([40,bw,bh], center=true);
    translate([0,0,bh/2]) rotate([90,0,0]) cylinder(r=ld/2, h=lw, center=true);  
    translate([0,0,bh/2]) rotate([90,0,0]) cylinder(r=8.8, h=bw+1, center=true);  
    translate([15,0,0]) cylinder(r=2.6, h=bh, center = true);
    translate([-15,0,0]) cylinder(r=2.6, h=bh, center = true);
  }
}




//halfBlock(33, 20);

//halfBlock(15, 19);

//cd
halfRoll();