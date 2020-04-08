10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('20533','27515').
0.1::trusts('22770','27515').
0.1::trusts('27515','20533').
0.1::trusts('10709','20533').
0.1::trusts('22770','20533').
0.19::trusts('26574','20533').
0.1::trusts('27515','22770').
0.1::trusts('20533','22770').
0.1::trusts('10709','10707').
0.612579511::trusts('16542','10707').
0.19::trusts('10707','10709').
0.1::trusts('10714','10709').
0.19::trusts('16542','10709').
0.1::trusts('20533','10709').
0.271::trusts('10707','16542').
0.1::trusts('10709','16542').
0.1::trusts('10711','16542').
0.271::trusts('10714','15594').
0.1::trusts('14079','15594').
0.19::trusts('15594','10714').
0.1::trusts('10709','10714').
0.3439::trusts('30084','10714').
0.1::trusts('25318','10714').
0.1::trusts('27515','30084').
0.3439::trusts('10714','30084').
0.1::trusts('10714','25318').
0.1::trusts('16542','10711').
0.1::trusts('16542','26680').
0.1::trusts('16542','57014').
0.1::trusts('10709','34660').

person('27515').
person('20533').
person('22770').
person('10707').
person('10709').
person('16542').
person('15594').
person('10714').
person('14079').
person('30084').
person('25318').
person('10711').
person('26574').
person('26680').
person('57014').
person('34660').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('27515')).
query(buys('20533')).
query(buys('22770')).
query(buys('10707')).
query(buys('10709')).
query(buys('16542')).
query(buys('15594')).
query(buys('10714')).
query(buys('14079')).
query(buys('30084')).
query(buys('25318')).
query(buys('10711')).
query(buys('26574')).
query(buys('26680')).
query(buys('57014')).
query(buys('34660')).
