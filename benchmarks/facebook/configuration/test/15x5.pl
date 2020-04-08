10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('2495','13629').
0.19::trusts('8268','13629').
0.1::trusts('10781','13629').
0.19::trusts('13629','2495').
0.1::trusts('13631','2495').
0.19::trusts('13629','8268').
0.1::trusts('13629','10781').
0.271::trusts('7594','10781').
0.271::trusts('10766','10781').
0.271::trusts('2495','13631').
0.1::trusts('14339','13631').
0.40951::trusts('13631','14339').
0.1::trusts('57912','32928').
0.19::trusts('35080','32928').
0.271::trusts('7594','32928').
0.19::trusts('42345','32928').
0.19::trusts('32928','57912').
0.3439::trusts('32928','35080').
0.40951::trusts('32928','7594').
0.19::trusts('10781','7594').
0.19::trusts('32928','42345').
0.1::trusts('30018','42345').
0.19::trusts('10781','10766').
0.1::trusts('8268','8748').
0.1::trusts('8268','18305').

person('13629').
person('2495').
person('8268').
person('10781').
person('13631').
person('14339').
person('32928').
person('57912').
person('35080').
person('7594').
person('42345').
person('30018').
person('10766').
person('8748').
person('18305').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13629')).
query(buys('2495')).
query(buys('8268')).
query(buys('10781')).
query(buys('13631')).
query(buys('14339')).
query(buys('32928')).
query(buys('57912')).
query(buys('35080')).
query(buys('7594')).
query(buys('42345')).
query(buys('30018')).
query(buys('10766')).
query(buys('8748')).
query(buys('18305')).
