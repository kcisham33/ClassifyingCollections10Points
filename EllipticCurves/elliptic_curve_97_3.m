//In Sage, we have determined that the following scheme has dimension 1 and genus 1. 
//We confirm this in Magma and then compute the Cremona label of the elliptic curve.

//superfiguration 97, cpt 3
A<z5, y4, z2> := AffineSpace(RationalField(),3); 
C := Scheme(A,[ 
  y4*z5 + z5^2 - z2 - 2*z5 + 1,
   y4*z2 - y4 - z5 + 1, 
   z2*z5^2 - z2^2 - 2*z2*z5 + 2*z2 + z5 - 1
]);
P := ProjectiveClosure(C);
print Genus(Curve(P)), "genus";

//Magma requires a rational point in order to build the elliptic curve
//We found that (0:0:1:0) lies on the projective closure by handprint P;
p := AmbientSpace(P)![0,0,1,0];
E:= EllipticCurve(Curve(P),p );
CremonaReference(E);


