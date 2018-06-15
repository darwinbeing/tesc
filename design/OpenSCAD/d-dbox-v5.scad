// This design is parameterized based on holes in a PCB.
// It assumes that the PCB has 4 holes, evenly spaced as
// corners of a rectangle.

// Note: width refers to X axis, depth to Y, height to Z
bottom = true;
top = true;
usb = true;
reset= true;
flash= true;
leds = true;
buttons = true;
// Edit these parameters for your own board dimensions
wall_thickness = 1.6;
floor_thickness = 1.2;
ceiling_thickness = 1.2;

bottom_wall_height = 6;
top_wall_height = 2;

window_x = 24.6;
window_y = 14.4;
window_ridge = 2;
window_ridge_height = 1.5;
// Total height of box = floor_thickness + ceiling_thickness + bottom_wall_height + top_wall_height

hole_spacing_x = 50.8;
hole_spacing_y = 22.8;

hole_diameter = 2.5;
standoff_diameter = 4.5;
standoff_top = false;

// How much the PCB needs to be raised from the bottom
// to leave room for solderings and whatnot
standoff_height = 3;
board_thickness = 1.6;
facets = 6;

// padding between standoff and wall
padding_left = 0.8;
padding_right = 0.8;
padding_back = 0.8;
padding_front = 0.8;

// ridge where bottom and top off box can overlap
// Make sure this isn't less than top_wall_height
ridge_height = 1.6;

//-------------------------------------------------------------------

// Calculated globals
module case_buttons() {
    cylinder(h=ceiling_thickness+window_ridge_height, r=1.3, center=false, $fn=20);
    cylinder(h=window_ridge_height-1.1, r=1.7, center=false, $fn=20);
    
}

module ceilingless_box(width, depth, height) {
    // Floor
    cube([width, depth, floor_thickness]);
    
    // Left wall
    translate([0, 0, floor_thickness])
        cube([
            wall_thickness,
            depth,
            height]);
    
    // Right wall
    translate([width - wall_thickness, 0, floor_thickness])
        cube([
            wall_thickness,
            depth,
            height]);
    
    // Rear wall
    translate([wall_thickness, depth - wall_thickness, floor_thickness])
        cube([
            width - 2 * wall_thickness,
            wall_thickness,
            height]);
    
    // Front wall
    translate([wall_thickness, 0, floor_thickness])
        cube([
            width - 2 * wall_thickness,
            wall_thickness,
            height]);
}

module bottom_case() {
    floor_width = hole_spacing_x + standoff_diameter + padding_left + padding_right + wall_thickness * 2;
    floor_depth = hole_spacing_y + standoff_diameter + padding_front + padding_back + wall_thickness * 2;
    
    module box() {
        ceilingless_box(floor_width, floor_depth, bottom_wall_height);        
        
        // Left Ridge
        translate([
            wall_thickness / 2,
            wall_thickness / 2,
            floor_thickness + bottom_wall_height])
            cube([
                wall_thickness / 2,
                floor_depth - wall_thickness,
                ridge_height]);
        
        
        // Right Ridge
        translate([
            floor_width - wall_thickness,
            wall_thickness / 2,
            floor_thickness + bottom_wall_height])
            cube([
                wall_thickness / 2,
                floor_depth - wall_thickness,
                ridge_height]);
                
        // Rear Ridge
        translate([
            wall_thickness,
            floor_depth - wall_thickness,
            floor_thickness + bottom_wall_height])
            cube([
                floor_width - wall_thickness * 2,
                wall_thickness / 2,
                ridge_height]);
                
        // Front Ridge
        translate([
            wall_thickness,
            wall_thickness / 2,
            floor_thickness + bottom_wall_height])
            cube([
                floor_width - 2 * wall_thickness,
                wall_thickness / 2,
                ridge_height
            ]);
    }
        
    
    // Place the standoffs and through-PCB pins in the box
    module pcb_holder() {        
        base_offset_x = wall_thickness + padding_left + standoff_diameter / 2;
        base_offset_y = wall_thickness + padding_front + standoff_diameter / 2;
        
        module pin() {
            // Standoff
            translate([0, 0,  standoff_height / 2])
                cylinder(
                    r = standoff_diameter / 2,
                    h = standoff_height,
                    center = true,
                    $fn = facets);
            
            // Through-PCB pin
            translate([0, 0, 3.6])
                cylinder(
                    r = (hole_diameter / 2),
                    h = (board_thickness + 0.6),
                    center = true,
                    $fn = facets);
        }
        
        // Front left
        translate([base_offset_x, base_offset_y, floor_thickness])
            pin();
        
        // Front right
        translate([base_offset_x + hole_spacing_x, base_offset_y, floor_thickness])
            pin();
        
        // Rear left
        translate([base_offset_x, base_offset_y + hole_spacing_y, floor_thickness])
            pin();
        
        // Rear right
        translate([base_offset_x + hole_spacing_x, base_offset_y + hole_spacing_y, floor_thickness])
            pin();
        
    }
    if (usb == true)
    {
    difference () {
        box();
        translate([0, 7.5, floor_thickness+0.5])  cube([3, 9, 3.8]);//usb
        translate([floor_width-wall_thickness*2, 22, floor_thickness+bottom_wall_height-1.4])  cube([wall_thickness*2, 2, 4]);    //antenna
        }
    } else box();
    pcb_holder();
}

module top_case() {
    floor_width = hole_spacing_x + standoff_diameter + padding_left + padding_right + wall_thickness * 2;
    floor_depth = hole_spacing_y + standoff_diameter + padding_front + padding_back + wall_thickness * 2;
    
    module box() {
        ceilingless_box(floor_width, floor_depth, top_wall_height - ridge_height);
        translate([7, 10, ceiling_thickness])  cube([window_x+window_ridge, window_y+window_ridge, window_ridge_height]);

        // Left Ridge
        translate([
            0,
            0,
            floor_thickness + top_wall_height - ridge_height])
            cube([
                wall_thickness / 2,
                floor_depth,
                ridge_height]);
        
        
        // Right Ridge
        translate([
            floor_width - wall_thickness / 2,
            0,
            floor_thickness + top_wall_height - ridge_height])
            cube([
                wall_thickness / 2,
                floor_depth,
                ridge_height]);
                
        // Rear Ridge
        translate([
            wall_thickness / 2,
            floor_depth - wall_thickness / 2,
            floor_thickness + top_wall_height - ridge_height])
            cube([
                floor_width - wall_thickness,
                wall_thickness / 2,
                ridge_height]);
                
        // Front Ridge
        translate([
            wall_thickness / 2,
            0,
            floor_thickness + top_wall_height - ridge_height])
            cube([
                floor_width - wall_thickness,
                wall_thickness / 2,
                ridge_height
            ]);        
    }
    
    module pcb_holder() {
        base_offset_x = wall_thickness + padding_left + standoff_diameter / 2;
        base_offset_y = wall_thickness + padding_back + standoff_diameter / 2;
        
        module pin_receiver() {
           if (standoff_top == true)
           {
               cylinder(
                        r = (standoff_diameter / 2),
                        h = standoff_height,
                        center = false,
                        $fn = facets);
           }
        }
        
        // Keep in mind that this part needs to be turned over to get the correct
        // orientation. In the design, the rear left here looks like the front left.
        
        // Rear left
        translate([base_offset_x, base_offset_y, floor_thickness])
            pin_receiver();
        
        // Rear right
        translate([base_offset_x + hole_spacing_x, base_offset_y, floor_thickness])
            pin_receiver();
        
        // Front left
        translate([base_offset_x, base_offset_y + hole_spacing_y, floor_thickness])
            pin_receiver();
        
        // Front right
        translate([base_offset_x + hole_spacing_x, base_offset_y + hole_spacing_y, floor_thickness])
            pin_receiver();
    }
    
    
    difference () {
        box();
        translate([8, 11, -5])  cube([window_x, window_y, 10]);
        if (reset==true)
            translate([12.8, 28.8,  0]) //reset
                    cylinder(
                        r = 1.5,
                        h = 4,
                        center = true,
                        $fn = 20);
            
        if (flash==true)
            translate([12.8+10.5, 28.8,  0]) //flash
                    cylinder(
                        r = 1.5,
                        h = 4,
                        center = true,
                        $fn = 20);
    
        if (leds==true){
            translate([54, 22,  0]) //led 1
                    cylinder(
                        r = 1,
                        h = 4,
                        center = true,
                        $fn = 20);
            
            translate([54, 15.7,  0]) //led2
                    cylinder(
                        r = 1,
                        h = 4,
                        center = true,
                        $fn = 20);
        }
    }
        
    pcb_holder();
    
}


if (bottom == true) bottom_case();
if (top == true) 
{
translate([
    0,
    15 + hole_spacing_y + standoff_diameter + padding_front + padding_back + wall_thickness * 2,
    0])
    top_case();
}
if(buttons==true) {
    if(reset) translate([-10,
        15 + hole_spacing_y + standoff_diameter + padding_front + padding_back +    wall_thickness * 2,0]) 
        case_buttons();
    if(flash) translate([-20,
        15 + hole_spacing_y + standoff_diameter + padding_front + padding_back + wall_thickness * 2,0]) 
        case_buttons();
}