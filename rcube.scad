
//A simple Box with Rounded Edges


module rcube(size,fR) {
    bL = size[0];
    bW = size[1];
    bH = size[2];

    hull() union() {
        // first, we add the central object....
        union(){
            cube(size=[bL-2*fR,bW-2*fR,bH],center=true);       
            cube(size=[bL,bW-2*fR,bH-2*fR],center=true);  
            cube(size=[bL-2*fR,bW,bH-2*fR],center=true);  
        }
        // next we add the corner spheres
        union() {
            for(xdim = [-1:2:1])
                for(ydim = [-1:2:1]) 
                    for(zdim = [-1:2:1]) 
            translate([xdim*(bL/2 -fR),ydim*(bW/2 -fR),zdim*(bH/2 -fR)])
            sphere(fR);
         }
     }
}

boxLength = 25;
boxWidth = 35;
boxHeight = 15;
fR  = 4;
rcube([boxLength,boxWidth,boxHeight],fR);