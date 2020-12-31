
//A simple Box with Rounded Edges
$fn = 20;







// INPUT PARAMETERS:
//box outer length,
//box outer width,
//box outer height,
//box wall thickness,

boxLength = 25;
boxWidth = 25;
boxHeight = 25;
filletRadius=6;













//'natural fillet'; fillet radius = wall Thickness

boxInnerL = boxLength-filletRadius*2;
boxInnerW = boxWidth-filletRadius*2;
boxInnerH = boxHeight-filletRadius*2;


OBsize = [boxLength,boxWidth,boxHeight];
//IBsize = [boxInnerL,boxInnerW,boxInnerH];
difference(){
    
    cube(size=OBsize,center=true);
    
    translate([0.5*(boxInnerL),0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([-0.5*(boxInnerL)-filletRadius,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([-0.5*(boxInnerL)-filletRadius,0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};    
    
    translate([0.5*(boxInnerL),-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};

    translate([-0.5*boxInnerL-filletRadius,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[boxLength,filletRadius,filletRadius]);};

    translate([-0.5*boxInnerL-filletRadius,0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[boxLength,filletRadius,filletRadius]);};
    
    translate([-0.5*boxInnerL-filletRadius,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,boxWidth,filletRadius]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,boxWidth,filletRadius]);};
};
intersection(){
    translate([0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,boxWidth-filletRadius*2,filletRadius]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH)])rotate([-90,0,0]) cylinder(h = boxWidth,r1 = filletRadius,r2 = filletRadius);
};
    
intersection(){
    translate([-0.5*boxInnerL-filletRadius,-0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,boxWidth-filletRadius*2,filletRadius]);};
    
    translate([-0.5*boxInnerL,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH)])rotate([-90,0,0]) cylinder(h = boxWidth,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([-0.5*boxInnerL,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[boxLength-2*filletRadius,filletRadius,filletRadius]);};
    
    translate([-0.5*boxInnerL-filletRadius,-0.5*(boxInnerW),-0.5*(boxInnerH)])rotate([0,90,0]) cylinder(h = boxLength,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([-0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[boxLength-2*filletRadius,filletRadius,filletRadius]);};
    
    translate([-0.5*boxInnerL-filletRadius,0.5*(boxInnerW),-0.5*(boxInnerH)])rotate([0,90,0]) cylinder(h = boxLength,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([-0.5*boxInnerL-filletRadius,0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([-0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxHeight,r1 = filletRadius,r2 = filletRadius);
};
intersection(){
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxHeight,r1 = filletRadius,r2 = filletRadius);
};
intersection(){
    translate([-0.5*boxInnerL-filletRadius,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([-0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxHeight,r1 = filletRadius,r2 = filletRadius);
};
intersection(){
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])cylinder(h = boxHeight,r1 = filletRadius,r2 = filletRadius);
};

intersection(){
    translate([0.5*boxInnerL,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};

intersection(){
    translate([-0.5*boxInnerL-filletRadius,-0.5*(boxInnerW)-filletRadius,-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([-0.5*boxInnerL,-0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};
intersection(){
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};

intersection(){
    translate([-0.5*boxInnerL-filletRadius,0.5*(boxInnerW),-0.5*(boxInnerH+2*filletRadius)]){cube(size=[filletRadius,filletRadius,boxHeight]);};
    
    translate([-0.5*boxInnerL,0.5*(boxInnerW),-0.5*(boxInnerH)])sphere(r = filletRadius,center = true);
};