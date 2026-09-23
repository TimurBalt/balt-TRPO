use <akkum18650.scad>

echo("Rabota Baltatchev");

thickness_frame = 4;
thickness_walls = 2;
thickness_bottom = 2;

w_back = 70;
h_back = 45;
thickness_back = 1;
h_walls = 4;

d_akkum = 18;
h_akkum = 65;
gap_backlight = 1.5;

module kit_frame() {
    color("red") {
        bottom();
        translate([0, 0, h_walls/2 + thickness_bottom/2])
        walls();
    }
}

module walls() {
    difference() {
        cube([w_back + 2*thickness_walls + gap_backlight, h_back + 2*thickness_walls + gap_backlight, h_walls], center = true);
        cube([w_back + gap_backlight, h_back + gap_backlight, h_walls + 2], center = true);
    }
}

module backlight() {
    color("lightgreen")
    rotate([90, 0, 0])
    cube([w_back, h_back, thickness_back], center = true);
}

module bottom() {
    cube([w_back + 2*thickness_walls + gap_backlight, h_back + 2*thickness_walls + gap_backlight, thickness_bottom], center = true);
}


