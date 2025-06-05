//In Sage, we have determined that the following scheme has dimension 1 and genus 1. 
//We confirm this in Magma and then compute the Cremona label of the elliptic curve.

//superfiguration 45, cpt 3
A<z4, z2, z5> := AffineSpace(RationalField(),3); 
C := Scheme(A,[ 
 z2*z5 - z4*z5 - z2 + z5, 
 z2*z4 - z4*z5 + z5 - 1, 
 z4^2*z5 - z4*z5^2 + z5^2 - 2*z5 + 1
]);
P := ProjectiveClosure(C);
print Genus(Curve(P)), "genus";

//Magma requires a rational point in order to build the elliptic curve
//We found that (1:0:0:0) lies on the projective closure by hand
print P;
p := AmbientSpace(P)![1,0,0,0];
E:= EllipticCurve(Curve(P),p );
CremonaReference(E);


