// production quality or not
production = 0;

$resolution = production ? 150 : 25;

if (production) {
    echo("Producing PRODUCTION quality");
    echo("Resolution",$resolution);
} else {
    echo("Producing DRAFT quality");
    echo("Resolution",$resolution);
}

remote_depth = 5.75;
remote_width = 50;
remote_height = 88;
remote_extra = 55;
round_radius = 3;

inner_round_radius = 10.5;
ir_gap = 7;

thickness = 2;


module remote_basic() {
	cube([
		remote_height
		, remote_width
		, remote_depth
		]);
}

// round the corners of the remote
module remote() {
	difference() {
		remote_basic();

		difference() {
			remote_basic();

			// lower right
			translate([
				inner_round_radius
				, inner_round_radius
				, 0]) {
				cylinder(
					h = remote_depth
					, r = inner_round_radius
				);
			}

			union() {
				// lower left
				translate([
					inner_round_radius
					, remote_width - inner_round_radius
					, 0]) {
					cylinder(
						h = remote_depth
						, r = inner_round_radius
					);
				}

				// upper right
				translate([
					remote_height - inner_round_radius
					, inner_round_radius
					, 0]) {
					cylinder(
						h = remote_depth
						, r = inner_round_radius
					);
				}

				// lower left
				translate([
					remote_height - inner_round_radius
					, remote_width - inner_round_radius
					, 0]) {
					cylinder(
						h = remote_depth
						, r = inner_round_radius
					);
				}

				// x-axis remove
				translate([
					inner_round_radius
					, 0
					, 0
					]) {
					cube([
						remote_height - (inner_round_radius*2)
						, remote_width
						, remote_depth
						]);
				}

				// y-axis remove
				translate([
					0
					, inner_round_radius
					, 0
					]) {
					cube([
						remote_height
						, remote_width - (inner_round_radius*2)
						, remote_depth
						]);
				}
			}
		}
	}
}

difference() {

	// outer shell
	color([
			.7
			,.9
			,.9
		])
	minkowski() {
		cube([
			remote_height + remote_extra
			, remote_width
			, remote_depth
			]);
		translate([
			round_radius
			, round_radius
			, round_radius]) {
			sphere(r = round_radius
				   , $fn=$resolution);
		}
	}

	// remote gap
	union() {
		translate([
			remote_extra + round_radius
			, round_radius
			, remote_depth+1
			]) {
			color([.9,.9,.9]) {
				remote();
			}
		}

		translate([
			remote_extra + round_radius
			, round_radius
			, thickness+.5
			]) {
			color([.9,.9,.9]) {
				remote();
			}
		}
	}

	// IR gap
	translate([
		remote_height+remote_extra
		, ((remote_width+(thickness*2))/2)+1
		, (remote_depth+(round_radius*2))/2
		]) {
		//cube([ir_gap,ir_gap,ir_gap]);
		rotate([0,90,0]) {
			resize([8,20,0]) {
			cylinder(
					 h = ir_gap
					 , r1 = 1
					 , r2 = (ir_gap/2)+2
					 , $fn = $resolution
					 );
			}
		}
	}

	// Remote release hole
	translate([
		remote_extra + 15
		, ((remote_width+(thickness*2))/2)+1
		, 0-(ir_gap/2)
		]) {
		cylinder(
				 h = 10
				 , d = ir_gap+2
				 , $fn = $resolution
				 );
	}

/*
	union() {
		translate([
			30
			, 17
			, -6.9
			]) {
			mirror() {
				rotate([0,0,90]) {
					linear_extrude(4) {
						text("NWS"
							 , size=5
							 , font = "Calisto MT");
					}
				}
			}
		}

		translate([
			22
			, 19
			, -6.9
			]) {
			mirror() {
				rotate([0,0,90]) {
					linear_extrude(4) {
						text("2018"
							 , size = 5
							 , font = "Calisto MT");
					}
				}
			}
		}
	}
*/

}

