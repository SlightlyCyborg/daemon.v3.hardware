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

difference(){

    cylinder(r=top_y/2 - 3.5, 1.5);
    
    translate([0,-12,-.3])
    cylinder(r=7, 3);
    
}

translate([0,0,1.5]){
include<servo_connector.scad>
}