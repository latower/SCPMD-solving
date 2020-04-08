10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('8776','6873').
0.1::trusts('26391','6873').
0.1::trusts('26391','8776').
0.1::trusts('21959','8776').
0.1::trusts('8808','8776').
0.1::trusts('6873','26391').
0.19::trusts('13987','25074').
0.19::trusts('32329','25074').
0.1::trusts('25074','13987').
0.1::trusts('15928','13987').
0.1::trusts('6617','13987').
0.1::trusts('21596','13987').
0.1::trusts('48740','13987').
0.19::trusts('30529','13987').
0.19::trusts('25074','32329').
0.19::trusts('8776','21959').
0.1::trusts('8776','8808').
0.1::trusts('21596','8808').
0.1::trusts('15928','30230').
0.1::trusts('30230','15928').
0.1::trusts('13987','15928').
0.1::trusts('6617','15928').
0.19::trusts('48740','15928').
0.1::trusts('8808','21596').
0.1::trusts('18720','21596').
0.1::trusts('15928','48740').
0.1::trusts('6617','48740').
0.5217031::trusts('13987','30529').
0.1::trusts('21596','30529').
0.1::trusts('30230','21237').
0.1::trusts('13745','8564').
0.1::trusts('32329','24844').
0.1::trusts('13745','24844').

person('6873').
person('8776').
person('26391').
person('25074').
person('13987').
person('32329').
person('21959').
person('8808').
person('30230').
person('15928').
person('6617').
person('21596').
person('48740').
person('30529').
person('18720').
person('21237').
person('8564').
person('13745').
person('24844').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6873')).
query(buys('8776')).
query(buys('26391')).
query(buys('25074')).
query(buys('13987')).
query(buys('32329')).
query(buys('21959')).
query(buys('8808')).
query(buys('30230')).
query(buys('15928')).
query(buys('6617')).
query(buys('21596')).
query(buys('48740')).
query(buys('30529')).
query(buys('18720')).
query(buys('21237')).
query(buys('8564')).
query(buys('13745')).
query(buys('24844')).
