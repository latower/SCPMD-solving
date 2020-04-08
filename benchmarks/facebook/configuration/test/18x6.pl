10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('51938','18485').
0.19::trusts('35928','18485').
0.1::trusts('24595','18485').
0.1::trusts('32770','18485').
0.1::trusts('18485','51938').
0.1::trusts('2201','51938').
0.1::trusts('18485','35928').
0.1::trusts('45716','35928').
0.1::trusts('18485','32770').
0.1::trusts('291','2201').
0.1::trusts('40614','2201').
0.1::trusts('51938','2201').
0.19::trusts('2201','291').
0.1::trusts('4992','291').
0.1::trusts('2201','40614').
0.1::trusts('291','4992').
0.1::trusts('6717','45716').
0.1::trusts('35928','45716').
0.1::trusts('35928','51939').
0.1::trusts('54168','51939').
0.19::trusts('54170','54168').
0.1::trusts('2201','40612').
0.1::trusts('4225','40612').
0.271::trusts('54168','54170').
0.1::trusts('35928','54171').
0.1::trusts('54170','54171').
0.1::trusts('54168','54171').
0.1::trusts('32770','52013').

person('18485').
person('51938').
person('35928').
person('24595').
person('32770').
person('2201').
person('291').
person('40614').
person('4992').
person('45716').
person('6717').
person('51939').
person('54168').
person('40612').
person('4225').
person('54170').
person('54171').
person('52013').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18485')).
query(buys('51938')).
query(buys('35928')).
query(buys('24595')).
query(buys('32770')).
query(buys('2201')).
query(buys('291')).
query(buys('40614')).
query(buys('4992')).
query(buys('45716')).
query(buys('6717')).
query(buys('51939')).
query(buys('54168')).
query(buys('40612')).
query(buys('4225')).
query(buys('54170')).
query(buys('54171')).
query(buys('52013')).
