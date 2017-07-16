cube([4.2,35,2], center=true);

translate([-2.1,-66/2,0]){
    rotate([0,90,0]){
    include<servo_connector.scad>;
    }
}
