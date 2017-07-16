$fn=50;

difference(){

    union(){
        cylinder(d=10, 4.2);
        linear_extrude(4.2){
            polygon([[-4,-1],[-3,14],[-2.3,16.9],[0,17.6],[2.3,16.9],[3,14],[4,-1]]);
        }
    }

    translate([0,0,-.1]){
        linear_extrude(5){
        polygon([[-3,0],[-2.2,14.3],[-1.5,16.2],[0,16.8],[1.5,16.2],[2.2,14.3],[3,0]]);
        }
    }
    
    cylinder(d=8, 10, center=true);
}

