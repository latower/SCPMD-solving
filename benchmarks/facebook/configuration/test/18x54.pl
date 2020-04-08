10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.998382690730077::trusts('7280','17411').
0.3439::trusts('17426','17411').
0.271::trusts('15251','7280').
0.849905364703001::trusts('17411','7280').
0.7458134171671::trusts('17426','7280').
0.19::trusts('9688','7280').
0.1::trusts('17552','7280').
0.19::trusts('17411','17426').
0.911370618803475::trusts('7280','17426').
0.19::trusts('7280','9688').
0.1::trusts('17521','9688').
0.1::trusts('6363','9688').
0.1::trusts('17519','9688').
0.1::trusts('6292','9688').
0.1::trusts('8364','9688').
0.271::trusts('7280','17552').
0.5217031::trusts('15251','8108').
0.19::trusts('17519','17521').
0.928210201230815::trusts('15251','6363').
0.19::trusts('9688','6363').
0.19::trusts('4692','6363').
0.468559::trusts('17521','17519').
0.19::trusts('9688','6292').
0.993637314558864::trusts('15251','4692').
0.271::trusts('7280','4692').
0.19::trusts('8108','4692').
0.271::trusts('17521','8160').
0.1::trusts('17411','17468').
0.3439::trusts('15251','6423').
0.1::trusts('9688','11310').
0.1::trusts('7280','17716').

person('17411').
person('7280').
person('17426').
person('15251').
person('9688').
person('17552').
person('8108').
person('17521').
person('6363').
person('17519').
person('6292').
person('8364').
person('4692').
person('8160').
person('17468').
person('6423').
person('11310').
person('17716').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17411')).
query(buys('7280')).
query(buys('17426')).
query(buys('15251')).
query(buys('9688')).
query(buys('17552')).
query(buys('8108')).
query(buys('17521')).
query(buys('6363')).
query(buys('17519')).
query(buys('6292')).
query(buys('8364')).
query(buys('4692')).
query(buys('8160')).
query(buys('17468')).
query(buys('6423')).
query(buys('11310')).
query(buys('17716')).
