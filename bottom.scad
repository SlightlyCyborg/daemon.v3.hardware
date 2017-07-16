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





 cube([pi_x+x_buffer+(x_clearance)*2
        , pi_y+ usb_buffer + y_buffer + (y_clearance)*2, 
        floor_z], center=true);
    
difference(){

union(){
    
    translate([x_buffer/2,(y_buffer+usb_buffer)/2,(floor_z + pi_z)/2])
    difference(){
    cube([pi_x+(x_clearance+wall_thickness)*2, 
          pi_y+(y_clearance+wall_thickness)*2,
          pi_z], center=true);

    translate([0,0,.01])   
    cube([pi_x+(x_clearance)*2, 
          pi_y+(y_clearance)*2,
          pi_z], center=true);
    }
    
    difference(){
    translate([0,0,pi_z/2])
    cube([pi_x+x_buffer+(x_clearance + wall_thickness)*2
        , pi_y+ usb_buffer + y_buffer + (y_clearance + wall_thickness)*2, 
        floor_z+pi_z], center=true);
    translate([0,0,pi_z/2+.1])
    cube([pi_x+x_buffer+(x_clearance)*2
        , pi_y+ usb_buffer + y_buffer + (y_clearance)*2, 
        floor_z+pi_z], center=true);
    }
}

translate([(pi_x+x_buffer + x_clearance)/2+wall_thickness,
(pi_y + usb_buffer + y_buffer)/2 - y_clearance - 9
,pi_z/2+1])
cube([20, usb_y, pi_z+1],center=true);

translate([(pi_x+x_buffer + x_clearance)/2+wall_thickness,
(pi_y + usb_buffer + y_buffer)/2 - y_clearance - 28 
,pi_z/2+1])
cube([20, usb_y, pi_z+1],center=true);

translate([(pi_x+x_buffer + x_clearance)/2+wall_thickness,
(pi_y + usb_buffer + y_buffer)/2 - y_clearance - 44 
,(pi_z+2)/2])
cube([20, ethernet_y, pi_z+1],center=true);

translate([-(pi_x)/2+4,
(pi_y + usb_buffer + y_buffer)/2 - 27 - 1
,(pi_z+2)/2])
cube([10, 20, pi_z+1],center=true);

translate([-4,-10,pi_z/2+floor_z/2+.1])
cube([55,10,pi_z+.2],center=true);
}




