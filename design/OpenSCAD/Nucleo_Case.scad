
//  Christian Daigneault-St-Arnaud
$fn = 50;
/*  Nucleo Dimensions   */
nucleo_width = 70;
nucleo_length = 82.5;
nucleo_bump_width = 33.5;
nucleo_bump_angle_width = 2;
nucleo_bump_length = 2;
nucleo_height = 10;

/* Screws position  */
screw_id = 3;
screw_od = screw_id + 2;
screw_bottom_x = 43.89;
screw_bottom_y = 0.5;
screw_top_right_x = 59.13;
screw_top_right_y = 50.8;
screw_top_left_x = 10.87;
screw_top_left_y = 52.57;

/*  Case dimension  */
wall_width = 2.5;
case_width = nucleo_width + 2*wall_width;
case_length = nucleo_length + 2*wall_width;
case_height = nucleo_height + wall_width+1;

/*  Case opening dimension  */
extra_width = 0.6;
extra_length = 0.6;
opening_width = nucleo_width + extra_width;
opening_length = nucleo_length + extra_length;
opening_bump_width = nucleo_bump_width + extra_width;
opening_bump_angle_width = nucleo_bump_angle_width+0.0;
opening_bump_length = nucleo_bump_length+0.4;
opening_height = case_height-wall_width;


/*      Model       */

module opening(){
    cube([opening_width,opening_length-nucleo_bump_length,opening_height]);
    translate([10.87+extra_width/2+opening_bump_angle_width,-opening_bump_length,0]) cube([opening_bump_width,opening_bump_length,opening_height]);
    translate([10.87+extra_width/2+opening_bump_angle_width,-opening_bump_length,0]) rotate([0,0,45]) cube([opening_bump_angle_width,opening_bump_length*2,opening_height]);
    translate([10.87+extra_width/2+opening_bump_width+opening_bump_angle_width,-opening_bump_length,0]) rotate([0,0,45]) cube([opening_bump_angle_width*2,opening_bump_length,opening_height]);
}

module enclosure(){
    $fn = 50;

    r = 5;
   difference(){
        cube([case_width,case_length,case_height]);
        cube([r,r,case_height]);
        translate([case_width-r,0,0]) cube([r,r,case_height]);
        translate([case_width-r,case_length-r,0]) cube([r,r,case_height]);
        translate([0,case_length-r,0]) cube([r,r,case_height]);
    }
    translate([r,r,0]) cylinder(r=r,h=case_height);
    translate([case_width-r,r,0]) cylinder(r=r,h=case_height);
    translate([case_width-r,case_length-r,0]) cylinder(r=r,h=case_height);
    translate([r,case_length-r,0]) cylinder(r=r,h=case_height);
}

module screw(){
    difference(){
        union(){
            //hull(){
                translate([screw_bottom_x+extra_width/2,screw_bottom_y+extra_length/2,0]) cylinder(d = screw_od, h =nucleo_height);
                translate([screw_bottom_x+extra_width/2,screw_bottom_y+extra_length/2,0]) cylinder(d = screw_od*1.5, h =nucleo_height/2);
            //}
            //hull(){
                translate([screw_top_right_x+extra_width/2,screw_top_right_y+extra_length/2,0]) cylinder(d = screw_od, h =nucleo_height);
                translate([screw_top_right_x+extra_width/2,screw_top_right_y+extra_length/2,0]) cylinder(d = screw_od*1.5, h =nucleo_height/2);
           // }
           // hull(){
                translate([screw_top_left_x+extra_width/2,screw_top_left_y+extra_length/2,0]) cylinder(d = screw_od, h =nucleo_height);
                translate([screw_top_left_x+extra_width/2,screw_top_left_y+extra_length/2,0]) cylinder(d = screw_od*1.5, h =nucleo_height/2);
           // }
        }
        translate([screw_bottom_x+extra_width/2,screw_bottom_y+extra_length/2,wall_width]) cylinder(d = screw_id, h =nucleo_height);
        translate([screw_top_right_x+extra_width/2,screw_top_right_y+extra_length/2,wall_width]) cylinder(d = screw_id, h =nucleo_height);
        translate([screw_top_left_x+extra_width/2,screw_top_left_y+extra_length/2,wall_width]) cylinder(d = screw_id, h =nucleo_height);
    }
}

module nucleo_case(){
    difference(){
       enclosure();         
        translate([wall_width,wall_width+1.5,wall_width]) opening();
    }
    translate([wall_width,wall_width+1.5,wall_width]) screw();
}

nucleo_case();
//opening();
//enclosure();
