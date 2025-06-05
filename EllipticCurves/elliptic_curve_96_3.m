//In Sage, we have determined that the following scheme has dimension 1 and genus 1. 
//We confirm this in Magma and then compute the Cremona label of the elliptic curve.

//superfiguration 96, cpt 3
A<z1, y2, y4> := AffineSpace(RationalField(),3); 
C := Scheme(A,[ 
 y4*z1 + y2 - 2*y4, 
 y2^2*z1 + 2*y2*z1^2 + z1^3 - y2^2 - 5*y2*z1 - 5*z1^2 + 2*y2 + 6*z1 - 1, 
 y2^3 - y2^2*y4 - 3*y2*z1^2 - 2*z1^3 + y2^2 + 7*y2*z1 + 10*z1^2 - 4*y2 + y4 - 12*z1 + 2
 ]);
P := ProjectiveClosure(C);
print Genus(Curve(P)), "genus";

//Magma requires a rational point in order to build the elliptic curve
//We found that (0:1:1:0) lies on the projective closure by hand
print P;
p := AmbientSpace(P)![0,1,1,0];
E:= EllipticCurve(Curve(P),p );
CremonaReference(E);


