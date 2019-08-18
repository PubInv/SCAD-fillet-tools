
////////////////////////////////////////////////////////////////////////
$fn = 100;

module rcone(coneTopRadius, coneBottomRadius, h,topCurveRadius, bottomCurveRadius) {

    rct = coneTopRadius;
    rcb = coneBottomRadius;
    
    rcut = topCurveRadius;
    rcub = bottomCurveRadius;
    
    hull(){
        translate([0,0,(h/2 - rcut)])      
       rotate_extrude(convexity = 10)
        translate([rct-rcut, 0, 0])
       circle(r = rcut, $fn = 100);
        
         translate([0,0,-(h/2 - rcub)])      
       rotate_extrude(convexity = 10)
        translate([rcb-rcub, 0, 0])
       circle(r = rcub, $fn = 100);
    }
}

module rcyl(r,h,rc) {
    rcone(r,r,h,rc,rc);
    }
    
    
    
    
// EXAMPLE BUIlDS
translate([100,0,0])
rcylinder(h=25, r1=3, r2=8, radius1 = 1, radius2 = 1, center=false, debug=false);

// EX. BUILD 2

translate([125,0,0]) 
rcylinder(h=1, r1=3, r2=8, radius1 = 2, radius2 = 4, center=false, debug=false);

// REVISED CYLINDER BUILD
translate([0,0,0])
rcyl(4,4,2);

// REVISED CONE BUILD
translate([150,0,0])
rcone(coneTopRadius=5, coneBottomRadius=10, h=20,topCurveRadius=1, bottomCurveRadius=1);
    
// EXTREME BUILD TEST
translate([10,0,0])
color("green")
rcone(coneTopRadius=4, coneBottomRadius=4, h=4,topCurveRadius=2, bottomCurveRadius=2);