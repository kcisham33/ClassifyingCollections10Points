//In Sage, we have determined that the following scheme has dimension 1 and genus 1. 
//We confirm this in Magma and then compute the Cremona label of the elliptic curve.

//superfiguration 37, cpt 1
A<z5, y4, z3> := AffineSpace(RationalField(),3); 
C := Scheme(A,[ 
  y4*z5 - 1, 
  y4*z3 + z3^2 - z3*z5 - y4 - z3 + 1, 
  z3^2*z5 - z3*z5^2 - z3*z5 + z3 + z5 - 1
 ]);
P := ProjectiveClosure(C);
print Genus(Curve(P)), "genus";

  print P;
//Magma requires a rational point in order to build the elliptic curve
//We found that (1:1:0:1) lies on the projective closure by hand
p := AmbientSpace(P)![1,1,0,1];
E:= EllipticCurve(Curve(P),p );
CremonaReference(E);


