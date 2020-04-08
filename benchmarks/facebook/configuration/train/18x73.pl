10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('14955','19707').
0.19::trusts('19707','14955').
0.1::trusts('14677','14955').
0.19::trusts('34603','14955').
0.1::trusts('25557','14955').
0.1::trusts('14955','14677').
0.3439::trusts('12918','14677').
0.1::trusts('11267','14677').
0.1::trusts('32503','14677').
0.1::trusts('14955','34603').
0.1::trusts('14955','25557').
0.1::trusts('14955','19521').
0.1::trusts('12918','19112').
0.1::trusts('31201','19112').
0.1::trusts('19112','12918').
0.3439::trusts('14677','12918').
0.1::trusts('19112','31201').
0.1::trusts('14677','11267').
0.19::trusts('34513','11267').
0.271::trusts('14677','32503').
0.1::trusts('12918','32503').
0.1::trusts('19112','19119').
0.19::trusts('11267','34513').
0.1::trusts('14955','18037').
0.1::trusts('14955','9903').
0.1::trusts('14955','29911').
0.1::trusts('11267','3642').
0.1::trusts('14955','63877').

person('19707').
person('14955').
person('14677').
person('34603').
person('25557').
person('19521').
person('19112').
person('12918').
person('31201').
person('11267').
person('32503').
person('19119').
person('34513').
person('18037').
person('9903').
person('29911').
person('3642').
person('63877').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19707')).
query(buys('14955')).
query(buys('14677')).
query(buys('34603')).
query(buys('25557')).
query(buys('19521')).
query(buys('19112')).
query(buys('12918')).
query(buys('31201')).
query(buys('11267')).
query(buys('32503')).
query(buys('19119')).
query(buys('34513')).
query(buys('18037')).
query(buys('9903')).
query(buys('29911')).
query(buys('3642')).
query(buys('63877')).
