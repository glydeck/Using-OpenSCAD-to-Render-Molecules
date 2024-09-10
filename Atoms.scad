// Open SCAD
// Shows Names, Colors and Size of atoms
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

//$vpr = [70, 0, 30];
//$vpt = [-2, 3, -1];
//$vpd = 30;

include<./MoleculeData/atom.dat>


for (a = [ 0 : len(atomdata) - 1 ]) {
    atom=atomdata[a];
        translate([atom[4]*2.5,atom[5],atom[6]]){
            color([atom[1],atom[2],atom[3]]){
                sphere(r=atom[0], $fn=100);
        }
    }
}
translate([-2,-3,0]){
    text("Carbon            Oxygen       Hydrogen        Nitrogen           Sulfur          Phosphorus      Chlorine        Bromine             Zinc             Sodium            Iron          Magnesium Calcium Unknown",.6);
}
