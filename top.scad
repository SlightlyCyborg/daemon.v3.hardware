$fn=50;

pi_x = 85;
pi_y = 56;
pi_z = 13;

x_clearance = 1;
y_clearance = 1;

wall_thickness = 1.5;

x_buffer = 15;
y_buffer = 15;

usb_buffer = 24;

floor_z = 1;

usb_y = 15;

ethernet_y = 20;

middle_x = pi_x+x_buffer + (wall_thickness + x_clearance) * 4;
middle_x_hole = pi_x+x_buffer + (wall_thickness + x_clearance*2) * 2;

middle_y = pi_y+ usb_buffer + y_buffer + (y_clearance + wall_thickness)*4;
middle_y_hole = pi_y+ usb_buffer + y_buffer + (y_clearance * 2 + wall_thickness)*2;

middle_z = 8;

servo_x = 23;
servo_y = 12.5;
servo_z = 1.5;

servo_x_offset = servo_x/2 - 6;

servo_x_clearance = 0.5;
servo_y_clearance = 0.5;

top_x_clearance = 0.3;
top_y_clearance = 0.3;

top_x = middle_x + (wall_thickness + top_x_clearance) * 2;
top_y = middle_y + (wall_thickness + top_y_clearance) * 2;

top_x_large_hole = middle_x + top_x_clearance*2;
top_y_large_hole = middle_y + top_y_clearance*2;

top_x_small_hole = middle_x - wall_thickness;
top_y_small_hole = middle_y - wall_thickness;
lip = 7;
top_z = 26.5 + lip;

ethernet_hole_x = 22+(wall_thickness + x_clearance)*3;


difference(){
    cube([top_x, top_y, top_z], center=true);
    
    translate([0,0, -top_z/2 + lip/2-.1])
    cube([top_x_large_hole, top_y_large_hole, lip], center=true);
    
    translate([0,0, (top_z)/2-lip-6])
    cube([top_x_large_hole, top_y_large_hole, top_z-lip-5], center=true);
    
    translate([0,0, -2])
    cube([top_x_small_hole, top_y_small_hole, top_z], center=true);
    
    cylinder(r=top_y/2 - 5, 20);
    
    translate([0,0,top_z/2 - 1])
    cylinder(r=top_y/2 - 2, 2);

    translate([
        top_x/2 - ethernet_hole_x/2 + .1,
        -60/2 + top_y/2 - (wall_thickness + y_clearance)*3 ,
        -top_z/2 + lip - 8/2 +.1])
    cube([22+(wall_thickness + x_clearance)*3,60,8.2], center=true);
    
    translate([top_x/2,-30])
    rotate([0,90,0])
    cylinder(d=9, 10, center=true);


}




    
    