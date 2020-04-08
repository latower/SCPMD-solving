10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('14638','13994').
0.19::trusts('13994','14638').
0.1::trusts('8843','14638').
0.1::trusts('12488','14638').
0.19::trusts('22094','14638').
0.1::trusts('15040','19149').
0.1::trusts('13994','15040').
0.1::trusts('19149','15040').
0.1::trusts('12488','15040').
0.1::trusts('42361','15040').
0.3439::trusts('8827','8843').
0.271::trusts('12488','8843').
0.1::trusts('32427','8843').
0.19::trusts('8843','8827').
0.19::trusts('8843','12488').
0.19::trusts('14638','12488').
0.1::trusts('15040','12488').
0.19::trusts('35100','12488').
0.19::trusts('8843','32427').
0.468559::trusts('12488','35100').
0.19::trusts('15040','42361').
0.1::trusts('13994','15057').
0.271::trusts('43866','15057').
0.468559::trusts('14638','32426').
0.5217031::trusts('12488','17614').
0.1::trusts('8843','4169').

person('13994').
person('14638').
person('19149').
person('15040').
person('8843').
person('8827').
person('12488').
person('32427').
person('35100').
person('22094').
person('42361').
person('15057').
person('43866').
person('32426').
person('17614').
person('4169').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13994')).
query(buys('14638')).
query(buys('19149')).
query(buys('15040')).
query(buys('8843')).
query(buys('8827')).
query(buys('12488')).
query(buys('32427')).
query(buys('35100')).
query(buys('22094')).
query(buys('42361')).
query(buys('15057')).
query(buys('43866')).
query(buys('32426')).
query(buys('17614')).
query(buys('4169')).
