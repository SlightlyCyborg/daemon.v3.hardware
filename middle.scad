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

gpio_hole_x = 55;
gpio_hole_y = 8;


difference(){
 cube([middle_x, middle_y, middle_z], center=true);
 translate([0,0,-2])
 cube([middle_x_hole, middle_y_hole, middle_z], center=true);
    
    translate([servo_x_offset,0,middle_z/2-1 + servo_z/2])
    cube([
        servo_x + servo_x_clearance *2,
        servo_y + servo_y_clearance *2,
        servo_z
    ], center=true);

   translate([
    -(wall_thickness+x_clearance) - gpio_hole_x/2 + middle_x_hole/2 - 27,
    -(wall_thickness+y_clearance) - gpio_hole_y/2 + middle_y_hole/2,
    0
    ])
    cube([gpio_hole_x, gpio_hole_y, 10], center=true);

    translate([0,-29,0])
    cylinder(r=16, 10, center=true);
    
     translate([0,29,0])
    cylinder(r=16, 10, center=true);
   
    
    translate([-33,0,0])
    cylinder(r=16, 10, center=true);

    translate([(pi_x+x_buffer + x_clearance)/2+wall_thickness-10.4,
    (pi_y + usb_buffer + y_buffer)/2 - y_clearance - 9
    ,pi_z/2+1])
    cube([27, usb_y, pi_z+15],center=true);

    translate([(pi_x+x_buffer + x_clearance)/2+wall_thickness-10.4,
    (pi_y + usb_buffer + y_buffer)/2 - y_clearance - 28 
    ,pi_z/2+1])
    cube([27, usb_y+10, pi_z+15],center=true);

    translate([(pi_x+x_buffer + x_clearance)/2+wall_thickness -10.4,
    (pi_y + usb_buffer + y_buffer)/2 - y_clearance - 44 
    ,(pi_z+2)/2])
    cube([27, ethernet_y, pi_z+15],center=true);


}







