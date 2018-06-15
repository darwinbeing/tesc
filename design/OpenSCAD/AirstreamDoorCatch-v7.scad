$fn=180;
x1 = 31;
y1 = 65.0;
y2 = 71.5;
cx1 = 12.5;
cy1 = 45.0;
cy2 = 48.0;
pocket_outer_x = 21.0;  //was 23.0
pocket_outer_y = 35.0;  //was 38.0
//pocket_wall = 3.0;
pocket_wall_1 = 3.0;
pocket_wall_2 = 1.8;

difference(){
  union(){
    // Outer profile
    linear_extrude(5){
      offset(2) offset(-2)
      polygon(points=[[-x1/2, -y1/2],[x1/2, -y2/2],[x1/2, y2/2],[-x1/2, y1/2]]);
    }
    //Pocket
    linear_extrude(19){
      offset(1) offset(-1)
      square(size = [pocket_outer_x, pocket_outer_y], center = true);
    }
  }
  //Pocket Cutout
  linear_extrude(19.0-pocket_wall_2){
    offset(1) offset(-1)
    translate([(pocket_wall_1-pocket_wall_2)/2,0,0]){
      square(size = [pocket_outer_x -pocket_wall_1 -pocket_wall_2, 38 -pocket_wall_1*2], center = true);
    }
  }
  //pop rivet holes
  linear_extrude(5.0){
    translate([-cx1/2,-cy1/2,0]) circle(d=4);
    translate([+cx1/2,-cy2/2,0]) circle(d=4);
    translate([-cx1/2,+cy1/2,0]) circle(d=4);
    translate([+cx1/2,+cy2/2,0]) circle(d=4);
  }
  //pop rivet relief
  linear_extrude(0.4){
    translate([-cx1/2,-cy1/2,0]) circle(d=7);
    translate([+cx1/2,-cy2/2,0]) circle(d=7);
    translate([-cx1/2,+cy1/2,0]) circle(d=7);
    translate([+cx1/2,+cy2/2,0]) circle(d=7);
  }
  //text
  translate([9.8,0,0]) rotate([90,0,90]) linear_extrude(0.8){
    translate([0,10,0]){
      text("3d@tekmason.com",size=2.6, valign="center", halign="center", font="Arial:style=Bold");
    }
    translate([0,15,0]){
      text("Airstream Door Catch",size=2.4, valign="center", halign="center", font="Arial:style=Bold");
    }
  }
  linear_extrude(height=5,scale=[1.15,1.0]){
    translate([2-x1/2-10/2,0,0]){
      square([10,y1+2],center=true);
    }
  }
}
