servo_x = 23;
servo_y = 12.5;
servo_z = 13;

servo_x_offset = servo_x/2 - 6;

servo_x_clearance = 0.5;
servo_y_clearance = 0.5;

wall_thickness = 1;



translate([0,0,servo_z/2])
difference(){
    cube([
        servo_x+servo_x_clearance+wall_thickness, 
        servo_y+servo_y_clearance+wall_thickness,
        servo_z], center=true);
    cube([
        servo_x+servo_x_clearance, 
        servo_y+servo_y_clearance,
        servo_z+1], center=true);
}