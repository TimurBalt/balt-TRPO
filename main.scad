use <frame.scad>
use <akkum18650.scad>

d_akkum = 18;
h_akkum = 65;
gap_backlight = 1.5;
thickness_bottom = 2;
w_back = 70;
h_back = 45;

echo("Rabota Baltatchev T");

build_frame();

module build_frame() {
    translate([0, h_back/2 + gap_backlight, h_back/2])
    backlight();
    
    kit_frame();
    
    translate([0, -10, 0])
    akkum18650_set();
}
