10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('24923','3958').
0.56953279::trusts('3958','24923').
0.19::trusts('47563','24923').
0.19::trusts('8715','24923').
0.271::trusts('24923','47563').
0.1::trusts('34232','47563').
0.40951::trusts('24923','8715').
0.1::trusts('47563','34232').
0.271::trusts('28089','34232').
0.468559::trusts('47565','34232').
0.1::trusts('47566','34232').
0.1::trusts('28089','53422').
0.1::trusts('60856','53422').
0.1::trusts('56546','53422').
0.40951::trusts('34232','28089').
0.40951::trusts('60856','28089').
0.1::trusts('53422','60856').
0.40951::trusts('28089','60856').
0.1::trusts('58966','60856').
0.878423345409431::trusts('34232','47565').
0.1::trusts('47564','47565').
0.1::trusts('34232','47566').
0.1::trusts('47565','47566').
0.1::trusts('52184','47566').
0.1::trusts('47566','52184').
0.19::trusts('58622','58966').
0.19::trusts('58966','58622').
0.1::trusts('28960','58622').
0.1::trusts('34232','62046').
0.1::trusts('28089','62046').

person('3958').
person('24923').
person('47563').
person('8715').
person('34232').
person('53422').
person('28089').
person('60856').
person('56546').
person('47565').
person('47566').
person('47564').
person('52184').
person('58966').
person('58622').
person('28960').
person('62046').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3958')).
query(buys('24923')).
query(buys('47563')).
query(buys('8715')).
query(buys('34232')).
query(buys('53422')).
query(buys('28089')).
query(buys('60856')).
query(buys('56546')).
query(buys('47565')).
query(buys('47566')).
query(buys('47564')).
query(buys('52184')).
query(buys('58966')).
query(buys('58622')).
query(buys('28960')).
query(buys('62046')).
