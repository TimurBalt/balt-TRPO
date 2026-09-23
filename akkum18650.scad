echo("Rabota Baltatchev");

module acc18650() {
    color("violet")
    rotate([90, 0, 0])
    cylinder(d=18, h=65, $fn=32, center=true);
}

module akkum18650_set() {
    for (i = [0 : 3]) {

        translate([i * 18.5 - 28, 0, 9]) 
        acc18650();
    }
}
<<<<<<< HEAD
}
=======
}
>>>>>>> 4594bad69d7c3cd5745141c18c44a81d2276f0ef
