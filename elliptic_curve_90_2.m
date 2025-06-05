//In Sage, we have determined that the following scheme has dimension 1 and genus 1. 
//We confirm this in Magma and then compute the Cremona label of the elliptic curve.

//superfiguration 90, cpt 2
A<z4, z3, y4> := AffineSpace(RationalField(),3); 
C := Scheme(A,[ 
  y4*z3 - z3*z4 - y4 - z3 + 2*z4,
  z4^3 - y4*z4 + z3*z4 - 2*z4^2 + y4,
  y4*z4^2 - y4^2 - y4*z4 + z3*z4 - 2*z4^2 + 2*y4
]);
P := ProjectiveClosure(C);
print Genus(Curve(P)), "genus";

//Magma requires a rational point in order to build the elliptic curve
//We found that (1:1:1:1) lies on the projective closure by handprint P;
p := AmbientSpace(P)![1,1,1,1];
E:= EllipticCurve(Curve(P),p );
CremonaReference(E);


