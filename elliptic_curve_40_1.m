//In Sage, we have determined that the following scheme has dimension 1 and genus 1. 
//We confirm this in Magma and then compute the Cremona label of the elliptic curve.

//superfiguration 40, cpt 1
A<z1, z3> := AffineSpace(RationalField(),2); 
C := Scheme(A,[ 
  z1^2*z3^2 - z1^2*z3 + z1*z3^2 - z1 + z3
]);
P := ProjectiveClosure(C);
print Genus(Curve(P)), "genus";

//Magma requires a rational point in order to build the elliptic curve
//We found that (1:0:0) lies on the projective closure by hand
print P;
p := AmbientSpace(P)![1,0,0];
E:= EllipticCurve(Curve(P),p );
CremonaReference(E);


