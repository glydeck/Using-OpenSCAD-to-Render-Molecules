// Open SCAD
// Renders molecular 3D data
// as van der Walls Spheres
// Wikipedia:
// https://en.wikipedia.org/wiki/Van_der_Waals_surface

/////////////////////////////////////////////
//    IMPORTING DATA ARAY OF A MOLECULE    //
/////////////////////////////////////////////

/////////////////////////////////////////////
//                                         //
//   1 milimeter = 1 Angstrom              //
//   atom[0] = Atom diameter               //
//   atom[1] = Red                         //
//   atom[2] = Green                       //
//   atom[3] = Blue                        //
//   atom[4] = X                           //
//   atom[5] = Y                           //
//   atom[6] = Z                           //
//                                         //
/////////////////////////////////////////////

$vpr = [70, 0, 30];
$vpt = [-2, 3, -1];
$vpd = 30;

//Name of molecule data file to render
include<./MoleculeData/Caffeine.dat>

for (a = [ 0 : len(atomdata) - 1 ]) {
    atom=atomdata[a];
        translate([atom[4],atom[5],atom[6]]){
            color([atom[1],atom[2],atom[3]]){
                sphere(r=atom[0], $fn=100);
        }
    }
}