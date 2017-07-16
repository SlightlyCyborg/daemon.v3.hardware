$fn=50;

cylinder(d=35);

translate([0,0,90/2])
cube([10,10,90], center=true);

translate([0,0,66])
cube([12,12,3], center=true);

servo_x = 23;
servo_x_offset = servo_x/2 - 6;



translate([servo_x_offset,12,0]){
    include<servo_holder.scad>
}