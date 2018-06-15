//Pi Zero Case Vented and Hinged Remix for adding OLED
//Remix by: David Bunch 1/28/2018
//
//Added options for either:
//Pi Original vents style, OLED screen or Hex pattern cutouts
//Added 3 different clearance amounts, the original was a little tight for me
//I also changed the latch to close better.
//Source of this Remix: https://www.thingiverse.com/thing:1954625
//
Type = 1;               //0 = Vents in top (Original)
                        //1 = Opening for Pi OLED screen
                        //2 = Opening for GPIO pins
                        //3 = Hex Cutouts Top & Bottom
Clearance = 4;          //3 = .3mm clearance (Original)
                        //4 = .4mm clearance
                        //5 = .5mm clearance
Ht = 5.5+3.1;           //Total Height of Case on one side
B_Ht = 2;               //Height of Base

Brd_OD = 2.2;            //2.5mm are the hole OD on the Pi Zero W
Brd_Mnt_OD = 4.0;
Brd_B_Ht = B_Ht + 1.0;   
Brd_Ht = Brd_B_Ht + 5.0;

Tot_Ht = Ht + 1.5;      //Add 1.5mm for the Rounding at Bottom
echo(Tot_Ht = Tot_Ht);
Sect_X = -3;
idx = Clearance - 3;
A_D1 = [3.24, 3.34, 3.542];
A_D2 = [2.0, 2.316, 2.519];
D1 = A_D1[idx];
D2 = A_D2[idx];
echo(D1 = D1);
echo(D2 = D2);
//Outside Corner curve center points
C1_X = 30.5;
C1_Y = -31.0;
C2_Y = -5.0;
C_OD = 10.0;
Rnd_Rad = (C_OD - 3.0) / 2.0;
echo(Rnd_Rad = Rnd_Rad);
//Inside Corner curve center points
C3_X = 29.5;
C3_Y = -30.0;
C4_Y = -6.0;
C_ID = 8.0;
B_X = 29.0;
//Board Mount Offsets
B_Y1 = -29.35;
B_Y2 = -6.35;
B_OD = 4.0;
B_ID = 2.2;
echo(Brd_Mnt_OD = Brd_Mnt_OD);
echo(Brd_OD = Brd_OD);
//%cylinder(d=10,h=7);          //Show for Reference Height
module HexCutout()
{
    for (x = [0:5])
    {
        for (y = [0:4])
        {
            translate([x*8.66,y*5,0])
            cylinder(d=3.46,h=10,$fn=6);
        }
    }
    translate([4.33,2.5,0])
    for (x = [0:5])
    {
        for (y = [0:3])
        {
            translate([x*8.66,y*5,0])
            cylinder(d=3.46,h=10,$fn=6);
        }
    }
}
module RndBot()
{
    rotate_extrude(convexity = 10, $fn = 32)
    translate([3.5, 0, 0])
    circle(d=3, $fn = 12);
}
module RndHinge()
{
    rotate_extrude(convexity = 10, $fn = 20)
    translate([2, 0, 0])
    circle(d=2, $fn = 4);
}
module Corner(C_Ht = Ht)
{
    union()
    {
        cylinder(d=10,h=C_Ht,$fn=48);
        RndBot();
    }
}
module Outside(Out_Ht = Ht)
{
    translate([0,-.25,1.5])
    hull()
    {
        hull()
        {
            translate([-C1_X,C1_Y,0])
            Corner(Out_Ht);
            translate([C1_X,C1_Y,0])
            Corner(Out_Ht);
        }
        hull()
        {
            translate([-C1_X,C2_Y,0])
            Corner(Out_Ht);
            translate([C1_X,C2_Y,0])
            Corner(Out_Ht);
        }
    }
}
module Hinge_Bot()
{
    difference()
    {
        union()
        {
            cylinder(d=4,h=5,$fn=20);
            translate([0,0,5])
            cylinder(d1=2.66,d2=2,h=2,$fn=16);
        }
        RndHinge();
    }
}
module Hinge_Top()
{
    difference()
    {
        cylinder(d=4,h=5,$fn=20);
        translate([0,0,-.1])
        cylinder(d1=D1,d2=D2,h=2.1,$fn=16);    //.3mm, .4mm or .5mm clearance
        translate([0,0,5])
        RndHinge();
    }
}
module Hinge_Top_Inner()
{
    translate([0,0,-.1])
    cylinder(d1=3.34,d2=2.316,h=2.1,$fn=16);    //.3mm, .4mm or .5mm clearance
}
module Brd_Mnt()
{
    cylinder(d=Brd_Mnt_OD,h=Brd_B_Ht,$fn=20);
    cylinder(d=Brd_OD,h=Brd_Ht,$fn=12);
}
module Brd_Mnts()
{
    for (x = [-B_X,B_X])
    {
        for (y = [B_Y2,B_Y1])
        {
            translate([x,y,0])
            Brd_Mnt();
        }
    }
}
module Inside()
{
    translate([0,-.25,0])
    hull()
    {
        hull()
        {
            translate([-C3_X,C3_Y,B_Ht])
            cylinder(d=C_ID,h=Tot_Ht+2,$fn=36);
            translate([C3_X,C3_Y,B_Ht])
            cylinder(d=C_ID,h=Tot_Ht+2,$fn=36);
        }
        hull()
        {
            translate([-C3_X,C4_Y,B_Ht])
            cylinder(d=C_ID,h=Tot_Ht+2,$fn=36);
            translate([C3_X,C4_Y,B_Ht])
            cylinder(d=C_ID,h=Tot_Ht+2,$fn=36);
        }
    }
}
module Latch()
{
    translate([-10.5,35.1,13.9])
    rotate([0,90,0])
    rotate([0,0,90])
    linear_extrude(height = 8, center = false, convexity = 10)polygon(points = 
    [[0,0],[0,-1.5],[0.5,-1],[0,0]]);
}
module LatchCut()
{
    translate([-11.5,35.1,13.9])
    rotate([0,90,0])
    rotate([0,0,90])
    linear_extrude(height = 10, center = false, convexity = 10)polygon(points = 
    [[-0.2,0.85],[-0.2,-1.98],[0.74,-1.04]]);
}
module Top()
{
    difference()
    {
        union()
        {
            translate([0,36.2+.15,0])
            Outside(Ht -.2);
            translate([0,-.1,0])
            for (m = [0,1])
            {
                mirror([m,0,0])
                translate([-24.5,0,Tot_Ht])
                rotate([0,90,0])
                Hinge_Top();
            }
//Add Latch
            translate([-10.5,34.1,Tot_Ht-.2])
            cube([8,1,4]);
            Latch();
        }
        mirror([0,1,0])
        Inside();
//Cut out Vents in Top
        if (Type == 0)
        {
            for (y = [5,14,23])
            {
                translate([-24,y,-1])
                cube([48,5,Ht+2]);
            }
        }
//Cut out for Pi OLED addition
        if (Type == 1)
        {
            translate([-30,10.9,-1])
            cube([30.5,12.2,Ht+2]);
        }
//Cut out for all GPIO pins
//Cut out for Pi OLED addition
        if (Type == 2)
        {
            translate([-26.5,3.1,-1])
            cube([53,7,Ht+2]);
        }
        if (Type == 3)
        {
            mirror([0,1,0])
            translate([-23.81,-28.1,-1])
            HexCutout();
        }
//Cut Out Top for Mini HDMI Slot
        translate([-27.5,33.1,3.8])
        cube([15,4,Ht]);
        for (m = [0,1])
        {
            mirror([m,0,0])
            {
                translate([-30.5,-1,Tot_Ht - 3-.2])
                cube([6,4,Ht]);
                translate([0,-.1,0])
                translate([-24.5,0,Tot_Ht])
                rotate([0,90,0])
                Hinge_Top_Inner();
            }
        }
//        translate([Sect_X,-50,-10])
//        cube([100,100,100]);          //Cut Section for Test
    }
}
module Bottom()
{
    difference()
    {
    union()
    {
        difference()
        {
            translate([0,0,0])
            Outside();
            translate([0,-.15,0])
            Inside();
//Cut out Hex Cuts in Bottom
//            if ((Type == 3) || (Type == 4))
            if (Type > 0)
            {
                translate([-23.81,-28.1,-1])
                HexCutout();
            }
//Cut out Vents in bottom
            if (Type == 0)
            {
                for (y = [-29.0,-20,-11.0])
                {
                    translate([-24,y,-1])
                    cube([48,5,Ht+2]);
                }
            }
//Cut out for Hinges
            for (m = [0,1])
            {
                mirror([m,0,0])
                translate([-25,-3.1,Tot_Ht - 3])
                cube([6,4,Ht]);
            }
//Cut Out Micro SD Card Slot
            translate([-36.5,-23.1,3])
            cube([4,15,Ht]);
//Cut Out for Pi Camera cable slot
            translate([32.5,-27.1,3])
            cube([4,18,Ht]);
//Cut Out Mini HDMI Slot
            translate([-27.5,-37.1,2])
            cube([15,4,Ht]);
//Cut Out for the 2 mini USB slots
            translate([2.5,-37.1,2])
            cube([25,4,Ht]);
//Cut Out indent between HDMI & USB slots
            translate([-11.5,-35.1,5])
            cube([10,2,Ht]);
//Cutout For Latch
            translate([0,0,Tot_Ht])
            rotate([180,0,0])
            translate([0,.05,-Tot_Ht])
            LatchCut();
            translate([-6.5,-35.1,7])
            rotate([90,0,0])
            cylinder(d=2.2,h=6,center=true,$fn=16);
        }
        translate([0,-.25,0])
        Brd_Mnts();
//Add Hinges for Bottom Part
        for (m = [0,1])
        {
            mirror([m,0,0])
            translate([-30,-.1,Tot_Ht])
            rotate([0,90,0])
            Hinge_Bot();
        }
    }
//        translate([Sect_X,-50,-10])
//        cube([100,100,100]);
    }
}
//Uncomment these 3 lines to show case closed
//translate([0,0,Tot_Ht])
//rotate([180,0,0])
//translate([0,.05,-Tot_Ht])
Top();
//union()
//{
    Bottom();
//    Dr_Mount();
//    translate([0,-36.5,0])
//    mirror([0,1,0])
//    mirror([1,0,0])
//    Dr_Mount();
//}