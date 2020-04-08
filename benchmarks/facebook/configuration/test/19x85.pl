10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('41058','29413').
0.271::trusts('33897','29413').
0.1::trusts('33899','29413').
0.1::trusts('38658','29413').
0.1::trusts('29413','41058').
0.1::trusts('15508','41058').
0.1::trusts('33897','41058').
0.1::trusts('33899','41058').
0.19::trusts('41058','33899').
0.1::trusts('29413','38658').
0.1::trusts('47107','38658').
0.271::trusts('41058','15508').
0.1::trusts('33897','15508').
0.1::trusts('41048','15508').
0.1::trusts('38658','47107').
0.3439::trusts('47112','47107').
0.271::trusts('47107','47112').
0.1::trusts('57644','47112').
0.19::trusts('57636','47112').
0.1::trusts('57886','47112').
0.19::trusts('47106','47112').
0.1::trusts('63332','47112').
0.19::trusts('47112','57644').
0.19::trusts('47112','57636').
0.19::trusts('47112','57886').
0.271::trusts('47112','47106').
0.19::trusts('47112','63332').
0.1::trusts('15508','48532').
0.1::trusts('47112','63339').
0.1::trusts('47112','62198').
0.1::trusts('47112','48701').
0.1::trusts('47107','48701').
0.1::trusts('47107','47109').

person('29413').
person('41058').
person('33897').
person('33899').
person('38658').
person('15508').
person('41048').
person('47107').
person('47112').
person('57644').
person('57636').
person('57886').
person('47106').
person('63332').
person('48532').
person('63339').
person('62198').
person('48701').
person('47109').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29413')).
query(buys('41058')).
query(buys('33897')).
query(buys('33899')).
query(buys('38658')).
query(buys('15508')).
query(buys('41048')).
query(buys('47107')).
query(buys('47112')).
query(buys('57644')).
query(buys('57636')).
query(buys('57886')).
query(buys('47106')).
query(buys('63332')).
query(buys('48532')).
query(buys('63339')).
query(buys('62198')).
query(buys('48701')).
query(buys('47109')).
