$fn=50;

translate([0,0,66])
cube([12,12,3], center=true);


difference(){
translate([0,0,60 + 26/2])
cube([10,10,26], center=true);
    translate([0,6,60])
rotate([90,0,0])
cylinder(d=6, 6);
}

translate([0,0,53.2])
rotate([90,0,0]){
include<servo_holder.scad>
}

translate([0,0,46.4]){
    difference(){
        rotate([90,0,0]){
            cylinder(d=6, 13);
        }
        translate([-3,-50,0])
        cube([6,100,6]);
    }
}

