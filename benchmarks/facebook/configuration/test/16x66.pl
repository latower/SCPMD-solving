10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('47924','25008').
0.1::trusts('26079','25008').
0.271::trusts('45021','25008').
0.1::trusts('45020','25008').
0.1::trusts('59233','25008').
0.1::trusts('25008','47924').
0.3439::trusts('20450','47924').
0.1::trusts('50008','47924').
0.1::trusts('46446','47924').
0.19::trusts('25008','26079').
0.19::trusts('25008','45021').
0.271::trusts('25008','45020').
0.1::trusts('45021','45020').
0.40951::trusts('47924','20450').
0.1::trusts('46446','20450').
0.19::trusts('43702','20450').
0.19::trusts('53960','20450').
0.19::trusts('20450','43702').
0.1::trusts('58974','43702').
0.19::trusts('20450','53960').
0.271::trusts('47924','50008').
0.1::trusts('26079','57738').
0.271::trusts('20450','61140').
0.1::trusts('26079','54102').
0.19::trusts('20450','37826').

person('25008').
person('47924').
person('26079').
person('45021').
person('45020').
person('59233').
person('20450').
person('46446').
person('43702').
person('53960').
person('50008').
person('58974').
person('57738').
person('61140').
person('54102').
person('37826').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25008')).
query(buys('47924')).
query(buys('26079')).
query(buys('45021')).
query(buys('45020')).
query(buys('59233')).
query(buys('20450')).
query(buys('46446')).
query(buys('43702')).
query(buys('53960')).
query(buys('50008')).
query(buys('58974')).
query(buys('57738')).
query(buys('61140')).
query(buys('54102')).
query(buys('37826')).
