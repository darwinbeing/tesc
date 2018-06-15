use <roundCornersCube.scad>
use <polyhole.scad>

// basiert auf Centronicsweiche
// -Aussparung USB kleiner und genauer
// -etwas niedriger

pcbX = 40;			    // dimension of enclosed PCB
pcbY = 102;			    //
sz = 24;			    // outer height of housing, war 25
wall_thickness = 1.4;	// thickness of the walls of the box (and lid)
distPCBouterBottom =4;	// der Abstand der Unterseite der Platine vom Unterboden-Unterseite, war 5

module standoff(outer_diam, inner_diam, height, hole_depth) {
	/* Generates a standoff for mounting something e.g. a PCB */
	difference(){
		cylinder(r=outer_diam/2, h=height, $fn=50);
		translate([0,0, height - hole_depth]) polyhole(hole_depth + 1, inner_diam); 
	}
}

module cylindrical_lip(outer_diameter, height, wall_thickness) {	
	// Generates a hollow cylindrical lip, quartered.
	difference(){
		cylinder(r=outer_diameter/2, h = height);
		//Core it out
		translate([0,0,-0.5])  cylinder(r=(outer_diameter/2) - wall_thickness, h = height+1);	
		//Cut it into a quarter.
		translate([-outer_diameter/2,0,-0.5]) cube([outer_diameter + 1, outer_diameter/2,height + 1]);
		translate([0, -outer_diameter/2, -0.5]) cube([outer_diameter + 1, outer_diameter/2,height + 1]);
	}
}

module rounded_cube_case (generate_box = true, generate_lid = false){
	//Screw hole details
	screw_hole_dia = 2.5;  		//Diameter of the screws you want to use
	screw_hole_depth = 20;		//Depth of the screw hole
	corner_lip_dia = screw_hole_dia * 3.5;
	corner_standoff_dia = screw_hole_dia * 2.3;	//Durchmesser der Schraubenhalter

	distPCBouterSideX = wall_thickness;		// von der Platine seitlich zur Aussenkante, die Platine liegt an den Aussenwänden an
	distPCBouterSideY = corner_standoff_dia;	// die Schraubenhalter stehen neben der Platine

	//Case details (these are *outer* diameters of the case) 
	sx = pcbX + 2*distPCBouterSideX; 			//X dimension
	sy = pcbY + 2*distPCBouterSideY;			//Y dimension
	r = 2.5;							        //The radius of the curves of the box walls.

	screw_head_dia = 4.5;		//Diameter of the screw head (for the recess)
	screw_head_depth = 1.0;	    //Depth of the recess to hold the screw head
    dHolePCB = 2.8;             //war 3.5
    
	// wo liegen die Schrauben für den Deckel? todo das stimmt nicht, hier darf nur eine Dicke sein
	screw_hole_centres = [ [wall_thickness*2, wall_thickness*2, 0 ]
		, [sx - ( wall_thickness*2), wall_thickness*2, 0]
		, [sx - ( wall_thickness*2), sy - ( wall_thickness*2), 0]
		, [wall_thickness*2, sy - (wall_thickness*2), 0]
		//, [sx - ( wall_thickness*2), sy/2, 0]		// Schrauben in der Mitte
		//, [wall_thickness*2, sy/2, 0]				// ...
		];
	screw_hole_PCB_centres = [ [distPCBouterSideX+dHolePCB, distPCBouterSideY+dHolePCB, 0 ]
		, [distPCBouterSideX+pcbX-dHolePCB, distPCBouterSideY+dHolePCB, 0 ]
		, [distPCBouterSideX+dHolePCB, distPCBouterSideY+pcbY-dHolePCB, 0 ]
		, [distPCBouterSideX+pcbX-dHolePCB, distPCBouterSideY+pcbY-dHolePCB, 0 ]
		];

	if (generate_lid == true){
		translate([sx+5, 0, 0])
		difference(){
			union(){
				translate([sx/2, sy/2, wall_thickness/2]) roundCornersCube(sx,sy,wall_thickness,r); //Create the cube
				//Create the reinforcing lip. Etwas nach innen verschoben
                l_fac = 1.1;
				translate([corner_lip_dia,wall_thickness*l_fac,wall_thickness]) 
							cube([sx-corner_lip_dia * 2,wall_thickness,wall_thickness]);
				translate([wall_thickness,corner_lip_dia,wall_thickness])
							cube([wall_thickness,sy-corner_lip_dia * 2,wall_thickness]);
				translate([sx - wall_thickness*2,corner_lip_dia, wall_thickness])
							cube([wall_thickness,sy-corner_lip_dia * 2,wall_thickness]);	
				translate([corner_lip_dia,sy - wall_thickness*2*l_fac,wall_thickness])
							cube([sx-corner_lip_dia * 2,wall_thickness,wall_thickness]);
				

				//Fit the reinforcing lip around the corner standoffs
				translate([0,0,wall_thickness])
							translate(screw_hole_centres[0])
								rotate(180)  
								cylindrical_lip(corner_lip_dia + (wall_thickness*2), wall_thickness,wall_thickness);
				translate([0,0,wall_thickness]) translate(screw_hole_centres[1]) rotate(270)  
						cylindrical_lip(corner_lip_dia + (wall_thickness*2),
						wall_thickness,wall_thickness);
				translate([0,0,wall_thickness]) translate(screw_hole_centres[2]) 
						cylindrical_lip(corner_lip_dia + (wall_thickness*2),	
						wall_thickness, wall_thickness);
				translate([0,0,wall_thickness]) translate(screw_hole_centres[3]) rotate(90)  
						cylindrical_lip(corner_lip_dia + (wall_thickness*2),
						wall_thickness, wall_thickness);
			}   // union
			for (i = screw_hole_centres){
				/*	Drill two holes in the lid - the screw-hole
					, and the countersink. The screw-hole is made 25% larger here
					, as the idea is for the screw
					to pass through the lid without biting into it */
	
 				translate([0,0,-0.5]) translate(i) polyhole(wall_thickness + 1, screw_hole_dia * 1.25);  //The screw hole.
				translate([0, 0, -1]) translate(i) polyhole(screw_head_depth + 1, screw_head_dia); //The countersink
			}
            zText =.3;  // wie tief ist die Schrift eingelassen?
            for(i=[1:4]){
                #translate([sx*.3,42+(4-i)*16,zText]) rotate([180,0,90]) linear_extrude(zText+.1) {
                    text(str(i), font = "Liberation Sans:style=Bold", 15, halign = "left");
                }
            }
		}
	}

	if (generate_box == true){
		union() {
			difference() {
				// the outer box
				translate([sx/2, sy/2,sz/2 ]) roundCornersCube(sx,sy,sz, r);
				//cut off the 'lid' of the box
				translate([-0.1,-0.1, sz - wall_thickness]) cube([sx+1,sy+1,wall_thickness + 1]);
				//hollow it out
				translate([sx/2, sy/2, sz/2 + wall_thickness])
                    roundCornersCube(sx - (wall_thickness*2) , sy - (wall_thickness*2), sz, r);
				// Aussparungen USB
				translate([22+distPCBouterSideX, -.1, distPCBouterBottom+5])
                    cube([10, wall_thickness*2, 9]);
                
                for(i=[0:11]){  // die Kabelzufuehrung fuer die Relais
                    dy= ((i<6) ? 0:1) *2.56/2;  // zwischen den beiden 6er Blocks ist eine Lücke
                    translate([sx-wall_thickness-.1,dy,0]){
                        translate([0,43+i*2.56*2,5+distPCBouterBottom]) rotate([0,90,0])
                            cylinder(h=wall_thickness*2, d=3.5);
                    }
                }
			}
			
			//Put in the pillars for the screws to go into.
			for (i = screw_hole_centres){
				translate([0,0,wall_thickness]) translate(i) 
					standoff(corner_standoff_dia, screw_hole_dia, sz - (wall_thickness * 2), screw_hole_depth);
			}
			
			// the mounting holes for the PCB
			for (i = screw_hole_PCB_centres){
				translate([0,0,wall_thickness]) translate(i) 
					standoff(corner_standoff_dia, screw_hole_dia, distPCBouterBottom, screw_hole_depth);
			}
		}
	}
}

rounded_cube_case(true, true);	//generate_box, generate_lid
