projectWidth=58;
projectHeight=29;
projectDepth=26;
holeDis=3;

caseWidthB=80;
caseHeightB=40;
caseDepthB=28;

caseWidthT=80;
caseHeightT=40;
caseDepthT=2;

dispayWidth=48;
displayHeight=16;



/*********************** MAIN ************************************/

/* *
difference() {	
	bottomCase(caseWidthB,caseHeightB,caseDepthB);
	translate([0,-2,0]) firebeetle(projectWidth+1,projectHeight+1,projectDepth+2,holeDis,false,dispayWidth,displayHeight+1);
}
/* */

/* *
difference() {
	translate([0,0,10]) topCase(caseWidthT,caseHeightT,caseDepthT);
	translate([0,-2,5]) firebeetle(projectWidth+1,projectHeight+1,projectDepth+2,holeDis,false,dispayWidth,displayHeight+1);
}
/* */

/* */
translate([0,15.5,0]) snooze(caseWidthB-1,caseHeightB-1);
/* */

/*********************** MODULE **********************************/

module firebeetle(x,y,z,hd,hole,dW,dH) {
	color("blue")
	difference() {
		translate([0,0,3.5]) cube([x,y,z-7],center=true); // firebeetle ESP32+matrix
		if (hole) {
			translate([(x/2)-hd,(y/2)-hd,0]) cylinder(r=1.3, h=z+4, center=true, $fn=96);
			translate([-(x/2)+hd,(y/2)-hd,0]) cylinder(r=1.3, h=z+4, center=true, $fn=96);
			translate([(x/2)-hd,-(y/2)+hd,0]) cylinder(r=1.3, h=z+4, center=true, $fn=96);
			translate([-(x/2)+hd,-(y/2)+hd,0]) cylinder(r=1.3, h=z+4, center=true, $fn=96);
		}
	}
	if (!hole) {
		translate([(x/2)-hd,(y/2)-hd,0]) cylinder(r=1.3, h=z, center=true, $fn=96);
		translate([-(x/2)+hd,(y/2)-hd,0]) cylinder(r=1.3, h=z, center=true, $fn=96);
		translate([(x/2)-hd,-(y/2)+hd,0]) cylinder(r=1.3, h=z, center=true, $fn=96);
		translate([-(x/2)+hd,-(y/2)+hd,0]) cylinder(r=1.3, h=z, center=true, $fn=96);
	}
	
	hull() {
		translate([(dW/2),(dH/2),(z/2)+5]) cylinder(r=1.5, h=10, center=true, $fn=96);
		translate([-(dW/2),(dH/2),(z/2)+5]) cylinder(r=1.5, h=10, center=true, $fn=96);
		translate([(dW/2),-(dH/2),(z/2)+5]) cylinder(r=1.5, h=10, center=true, $fn=96);
		translate([-(dW/2),-(dH/2),(z/2)+5]) cylinder(r=1.5, h=10, center=true, $fn=96);
	}
}

module bottomCase(x,y,z) {
	color("white")
		difference() {
			hull() {
				translate([(x/2),(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2),(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([(x/2),-(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2),-(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
			}
			
			hull() {
				translate([(x/2)-1.5,(y/2)-(holeDis*2)-2,0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2)+1.5,(y/2)-(holeDis*2)-2,0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([(x/2)-1.5,-(y/2)+(holeDis*2),0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2)+1.5,-(y/2)+(holeDis*2),0]) cylinder(r=1.5, h=z, center=true, $fn=96);
			}
			hull() {
				translate([(x/2)-(holeDis*2)-1.5,(y/2)-2,0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2)+(holeDis*2)+1.5,(y/2)-2,0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([(x/2)-(holeDis*2)-1.5,-(y/2)+2,0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2)+(holeDis*2)+1.5,-(y/2)+2,0]) cylinder(r=1.5, h=z, center=true, $fn=96);
			}
			
			translate([0,y/2,0]) rotate([90,0,0])
			hull() {
				translate([(x/3),(y/12),0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/3),(y/12),0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([(x/3),-(y/12),0]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/3),-(y/12),0]) cylinder(r=1.5, h=z, center=true, $fn=96);
			}
			
			/*** button holes ***/
			translate([x/2,3,0]) rotate([90,0,90]) cylinder(r=2,h=5,center=true,$fn=96);
			translate([x/2,-8,0]) rotate([90,0,90]) cylinder(r=2,h=5,center=true,$fn=96);
			
			/*** nuts holes ***/
			translate([(x/2)-(holeDis/2)-1,(y/2)-(holeDis/2)-1,2]) cylinder(r=1.3,h=z,center=true,$fn=96);
			translate([-(x/2)+(holeDis/2)+1,(y/2)-(holeDis/2)-1,2]) cylinder(r=1.3,h=z,center=true,$fn=96);
			translate([(x/2)-(holeDis/2)-1,-(y/2)+(holeDis/2)+1,2]) cylinder(r=1.3,h=z,center=true,$fn=96);
			translate([-(x/2)+(holeDis/2)+1,-(y/2)+(holeDis/2)+1,2]) cylinder(r=1.3,h=z,center=true,$fn=96);
			
			/*** power hole ****/
			translate([-40,-(projectHeight/2)+8,-(z/2)+12]) cube([20,16,10],center=true);
			
			/*** support hole ***/
			hull() {
				translate([(x/2)+(holeDis/2)-.5,12,0]) rotate([90,0,90]) cylinder(r=2,h=2,center=true,$fn=96);
				translate([(x/2)+holeDis/1.5,12,-z]) rotate([90,0,90]) cylinder(r=2,h=2,center=true,$fn=96);
			}
			hull() {
				translate([-(x/2)-(holeDis/2)+.5,12,0]) rotate([90,0,90]) cylinder(r=2,h=2,center=true,$fn=96);
				translate([-(x/2)-holeDis/1.5,12,-z]) rotate([90,0,90]) cylinder(r=2,h=2,center=true,$fn=96);
			}
		}
		
		/*** firebeetle mount ***/
		pW=projectWidth-4;
		pH=projectHeight-4;
		pD=projectDepth-2.5;
		
		translate([(pW/2)-.5,(pH/2)-2.5,-(pD/2)]) cylinder(r=3, h=5, center=true, $fn=96);
		translate([-(pW/2)+.5,(pH/2)-2.5,-(pD/2)]) cylinder(r=3, h=5, center=true, $fn=96);
		translate([(pW/2)-.5,-(pH/2)-1.5,-(pD/2)]) cylinder(r=3, h=5, center=true, $fn=96);
		translate([-(pW/2)+.5,-(pH/2)-1.5,-(pD/2)]) cylinder(r=3, h=5, center=true, $fn=96);
		
		/*** separator; snowooze button support ***/
		difference() {
			hull() {
				translate([(x/2)-(holeDis),(y/2)-5.5,-.5]) cylinder(r=.8, h=z-1, center=true, $fn=96);
				translate([-(x/2)+(holeDis),(y/2)-5.5,-.5]) cylinder(r=.8, h=z-1, center=true, $fn=96);
			}
			translate([-20,17,0]) rotate([90,0,0]) union() { // button support
				cube([7,7,2],center=true);
				translate([0,4,0]) cube([7,2,7],center=true);
				translate([0,-4,0]) cube([7,2,7],center=true);
			}
			translate([0,17,0]) rotate([90,0,0]) union() { // button support
				cube([7,7,2],center=true);
				translate([0,4,0]) cube([7,2,7],center=true);
				translate([0,-4,0]) cube([7,2,7],center=true);
			}
			translate([20,17,0]) rotate([90,0,0]) union() { // button support
				cube([7,7,2],center=true);
				translate([0,4,0]) cube([7,2,7],center=true);
				translate([0,-4,0]) cube([7,2,7],center=true);
			}
		}
		
		// settings buttons
		difference() {
			translate([(x/2)-1.5,3,0]) cube([5,10,15],center=true);
			translate([(x/2)-1.5,3,0]) cube([6,7,17],center=true);
		}
		difference() {
			translate([(x/2)-1.5,-8,0]) cube([5,10,15],center=true);
			translate([(x/2)-1.5,-8,0]) cube([6,7,17],center=true);
		}
		
}

module topCase(x,y,z) {
	
	z=z*2;
	
	color("white")
		difference() {
			hull() {
				translate([(x/2),(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2),(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([(x/2),-(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
				translate([-(x/2),-(y/2),-(z-projectDepth)/2]) cylinder(r=1.5, h=z, center=true, $fn=96);
			}
			
			/*** nuts holes ***/
			translate([(x/2)-(holeDis/2)-1,(y/2)-(holeDis/2)-1,-(z-projectDepth)/2]) cylinder(r1=1.4,r2=3.3,h=z+1,center=true,$fn=96);
			translate([-(x/2)+(holeDis/2)+1,(y/2)-(holeDis/2)-1,-(z-projectDepth)/2]) cylinder(r1=1.4,r2=3.3,h=z+1,center=true,$fn=96);
			translate([(x/2)-(holeDis/2)-1,-(y/2)+(holeDis/2)+1,-(z-projectDepth)/2]) cylinder(r1=1.4,r2=3.3,h=z+1,center=true,$fn=96);
			translate([-(x/2)+(holeDis/2)+1,-(y/2)+(holeDis/2)+1,-(z-projectDepth)/2]) cylinder(r1=1.4,r2=3.3,h=z+1,center=true,$fn=96);
			
			/*** hole head firebeetle ***/
			fx=projectWidth+1;
			fy=projectHeight+1;
			fz=projectDepth+2;
			hd=3;
			hull() {
				translate([(fx/2)-hd,(fy/2)-hd,fz/2-4]) cylinder(r=2.5, h=3, center=true, $fn=96);
				translate([-(fx/2)+hd,(fy/2)-hd,fz/2-4]) cylinder(r=2.5, h=3, center=true, $fn=96);
				translate([(fx/2)-hd,-(fy/2)+hd,fz/2-4]) cylinder(r=2.5, h=3, center=true, $fn=96);
				translate([-(fx/2)+hd,-(fy/2)+hd,fz/2-4]) cylinder(r=2.5, h=3, center=true, $fn=96);
			}
		}
}


module snooze(x,y) {
		translate([0,y/2,0]) rotate([90,0,0]) {
			difference() {
				union() {	
					hull() {
						translate([(x/3)-.5,(y/12)-.5,1]) cylinder(r=1.5, h=4, center=true, $fn=96);
						translate([-(x/3)+.5,(y/12)-.5,1]) cylinder(r=1.5, h=4, center=true, $fn=96);
						translate([(x/3)-.5,-(y/12)+.5,1]) cylinder(r=1.5, h=4, center=true, $fn=96);
						translate([-(x/3)+.5,-(y/12)+.5,1]) cylinder(r=1.5, h=4, center=true, $fn=96);
					}
					
				}
				
				translate([-20,0,2]) cylinder(r=1.8, h=4, center=true, $fn=96);
				translate([0,0,2]) cylinder(r=1.8, h=4, center=true, $fn=96);
				translate([20,0,2]) cylinder(r=1.8, h=4, center=true, $fn=96);
			}
		}
}
