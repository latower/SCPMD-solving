10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6454','46794').
0.1::trusts('22797','46794').
0.1::trusts('46794','6454').
0.271::trusts('6455','6454').
0.1::trusts('6457','6454').
0.19::trusts('46794','22797').
0.19::trusts('1631','22797').
0.1::trusts('23418','22797').
0.1::trusts('21693','22797').
0.1::trusts('62681','22797').
0.1::trusts('1631','3766').
0.1::trusts('24603','3766').
0.1::trusts('4114','3766').
0.1::trusts('3766','1631').
0.1::trusts('22797','1631').
0.19::trusts('3766','24603').
0.1::trusts('23418','24603').
0.1::trusts('26261','24603').
0.1::trusts('3766','4114').
0.1::trusts('24603','4114').
0.1::trusts('6454','6457').
0.1::trusts('22797','23418').
0.1::trusts('44449','23418').
0.1::trusts('22797','62681').
0.1::trusts('24603','26261').
0.1::trusts('24603','4115').

person('46794').
person('6454').
person('22797').
person('3766').
person('1631').
person('24603').
person('4114').
person('6455').
person('6457').
person('23418').
person('21693').
person('62681').
person('44449').
person('26261').
person('4115').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('46794')).
query(buys('6454')).
query(buys('22797')).
query(buys('3766')).
query(buys('1631')).
query(buys('24603')).
query(buys('4114')).
query(buys('6455')).
query(buys('6457')).
query(buys('23418')).
query(buys('21693')).
query(buys('62681')).
query(buys('44449')).
query(buys('26261')).
query(buys('4115')).
