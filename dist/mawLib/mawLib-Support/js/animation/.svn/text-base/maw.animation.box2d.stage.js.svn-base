// bounding stage! js
// christopher baker

outlets = 1;

var has_created = 0;

var width = 550;
var height = 550;

var wall_thickness = 5;
var density = 0.0;

var PI_OVER_2 = 1.570796326794897;

var left_wall_body = "left_wall_body";
var right_wall_body = "right_wall_body";
var top_wall_body = "top_wall_body";
var bottom_wall_body = "bottom_wall_body";

var left_wall_poly_shape = "left_wall_shape";
var right_wall_poly_shape = "right_wall_poly_shape";
var top_wall_poly_shape = "top_wall_poly_shape";
var bottom_wall_poly_shape = "bottom_wall_poly_shape";

if (jsarguments.length == 3) {
    width = jsarguments[1];
    height = jsarguments[2];
} 

// global code to set it up 
setoutletassist(0,"stuff to go to box2d"); 

function size(w,h)
{
    width = w;
    height = h;

    // delete the old one
    if(has_created==1) {
        outlet(0,"destroy",left_wall_body);
        outlet(0,"destroy",right_wall_body);
        outlet(0,"destroy",top_wall_body);
        outlet(0,"destroy",bottom_wall_body);
    } else {
        has_created = 1;
    }
    center_x = width/2;
    center_y = height/2;
    half_width = width/2;
    half_height = height/2;
    
    // left wall
    outlet(0, "begin", "body", left_wall_body, -10, center_y);
    outlet(0,"end");
    
    outlet(0, "begin", "box", left_wall_poly_shape, left_wall_body, wall_thickness, half_height);
    outlet(0, "density", density);
    outlet(0, "end");
    
    
    // right wall
    outlet(0, "begin", "body", right_wall_body, width, center_y);
    outlet(0, "end");
    
    outlet(0, "begin", "box", right_wall_poly_shape, right_wall_body, wall_thickness, half_height);
    outlet(0, "density", density);
    outlet(0, "end");

    // top wall
    outlet(0, "begin", "body", top_wall_body, center_x, -10);
    outlet(0, "end");
    
    outlet(0, "begin", "box", top_wall_poly_shape, top_wall_body, half_width, wall_thickness);
    outlet(0, "density", density);
    outlet(0, "end");
    
    // bottom wall
    outlet(0, "begin", "body", bottom_wall_body, center_x, height);
    outlet(0,"end");
    
    outlet(0, "begin", "box", bottom_wall_poly_shape, bottom_wall_body, half_width, wall_thickness);
    outlet(0, "density", density);
    outlet(0, "end");
}
