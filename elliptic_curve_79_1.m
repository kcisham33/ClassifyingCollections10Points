//In Sage, we have determined that the following scheme has dimension 1 and genus 1. 
//We confirm this in Magma and then compute the Cremona label of the elliptic curve.

//superfiguration 79, cpt 1
A<z4, z3> := AffineSpace(RationalField(),2); 
C := Scheme(A,[ 
 z3^2*z4 - z3*z4 - z4^2 + 2*z4 - 1 
]);

P := ProjectiveClosure(C);
print Genus(Curve(P)), "genus";

//Magma requires a rational point in order to build the elliptic curve
//We found that (1:1:1) lies on the projective closure by hand
print P;
p := AmbientSpace(P)![1,1,1];
E:= EllipticCurve(Curve(P),p );
CremonaReference(E);


