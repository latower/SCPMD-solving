10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('5274','283').
0.19::trusts('2835','283').
0.833228183003334::trusts('1641','283').
0.468559::trusts('5267','283').
0.5217031::trusts('283','5274').
0.3439::trusts('283','2835').
0.40951::trusts('3543','2835').
0.935389181107733::trusts('283','1641').
0.5217031::trusts('283','5267').
0.1::trusts('4241','5267').
0.19::trusts('1992','5045').
0.19::trusts('5045','1992').
0.19::trusts('3543','21327').
0.19::trusts('21327','3543').
0.1::trusts('22066','3543').
0.1::trusts('3555','3543').
0.19::trusts('2835','3543').
0.1::trusts('5045','4241').
0.19::trusts('5267','4241').
0.19::trusts('3543','22066').
0.1::trusts('3555','22066').
0.19::trusts('22067','22066').
0.19::trusts('22066','3555').
0.19::trusts('3543','3555').
0.271::trusts('19911','3555').
0.1::trusts('22066','22067').
0.1::trusts('24060','22067').
0.1::trusts('3555','19911').
0.1::trusts('3542','3526').
0.1::trusts('3543','3542').
0.1::trusts('3526','3542').
0.1::trusts('2835','5272').

person('283').
person('5274').
person('2835').
person('1641').
person('5267').
person('5045').
person('1992').
person('21327').
person('3543').
person('4241').
person('22066').
person('3555').
person('22067').
person('19911').
person('3526').
person('3542').
person('24060').
person('5272').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('283')).
query(buys('5274')).
query(buys('2835')).
query(buys('1641')).
query(buys('5267')).
query(buys('5045')).
query(buys('1992')).
query(buys('21327')).
query(buys('3543')).
query(buys('4241')).
query(buys('22066')).
query(buys('3555')).
query(buys('22067')).
query(buys('19911')).
query(buys('3526')).
query(buys('3542')).
query(buys('24060')).
query(buys('5272')).
