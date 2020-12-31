$fn = 20;


//Simple Box with Rounded Edges




// INPUT PARAMETERS:
//box outer length,
//box outer width,
//box outer height,
//box wall thickness,

boxOuterL = 27;
boxOuterW = 23;
boxOuterH = 20;
wallThickness=4;











//'natural fillet'; fillet radius = wall Thickness
filletRadius = wallThickness;
boxInnerL = boxOuterL-wallThickness*2;
boxInnerW = boxOuterW-wallThickness*2;
boxInnerH = boxOuterH-wallThickness*2;
baseWidth = wallThickness;
OBsize = [boxOuterL,boxOuterW,boxOuterH];
IBsize = [boxInnerL,boxInnerW,boxInnerH];
difference(){
    difference(){
        cube(size=OBsize,center=true);
        translate([0,0,baseWidth]){
            cube(size=IBsize,center=true);};
    };
    
    translate([0.5*(boxInnerL),0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([-0.5*(boxInnerL)-wallThickness,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([-0.5*(boxInnerL)-wallThickness,0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};    
    
    translate([0.5*(boxInnerL),-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};

    translate([-0.5*boxInnerL-wallThickness,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[boxOuterL,wallThickness,wallThickness]);};

    translate([-0.5*boxInnerL-wallThickness,0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[boxOuterL,wallThickness,wallThickness]);};
    
    translate([-0.5*boxInnerL-wallThickness,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,boxOuterW,wallThickness]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,boxOuterW,wallThickness]);};
};
intersection(){
    translate([0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,boxOuterW-wallThickness*2,wallThickness]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH)])rotate([-90,0,0]) cylinder(h = boxOuterW,r1 = filletRadius,r2 = filletRadius);
};
    
intersection(){
    translate([-0.5*boxInnerL-wallThickness,-0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,boxOuterW-wallThickness*2,wallThickness]);};
    
    translate([-0.5*boxInnerL,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH)])rotate([-90,0,0]) cylinder(h = boxOuterW,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([-0.5*boxInnerL,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[boxOuterL-2*wallThickness,wallThickness,wallThickness]);};
    
    translate([-0.5*boxInnerL-wallThickness,-0.5*(boxInnerW),-0.5*(boxInnerH)])rotate([0,90,0]) cylinder(h = boxOuterL,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([-0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[boxOuterL-2*wallThickness,wallThickness,wallThickness]);};
    
    translate([-0.5*boxInnerL-wallThickness,0.5*(boxInnerW),-0.5*(boxInnerH)])rotate([0,90,0]) cylinder(h = boxOuterL,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([-0.5*boxInnerL-wallThickness,0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([-0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxOuterH,r1 = filletRadius,r2 = filletRadius);
};
intersection(){
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxOuterH,r1 = filletRadius,r2 = filletRadius);
};
intersection(){
    translate([-0.5*boxInnerL-wallThickness,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([-0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxOuterH,r1 = filletRadius,r2 = filletRadius);
};
intersection(){
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxOuterH,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};

intersection(){
    translate([-0.5*boxInnerL-wallThickness,-0.5*(boxInnerW)-wallThickness,-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([-0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};
intersection(){
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};

intersection(){
    translate([-0.5*boxInnerL-wallThickness,0.5*(boxInnerW),-0.5*(boxInnerH+2*wallThickness)]){cube(size=[wallThickness,wallThickness,boxOuterH]);};
    
    translate([-0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};