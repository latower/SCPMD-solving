10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.961847957552305::trusts('48692','48696').
0.1::trusts('28348','48696').
0.1::trusts('48695','48696').
0.1::trusts('48694','48696').
0.1::trusts('48693','48696').
0.1::trusts('48696','28348').
0.1::trusts('34145','28348').
0.1::trusts('48696','48694').
0.271::trusts('48692','48694').
0.1::trusts('48695','48694').
0.19::trusts('48696','48693').
0.271::trusts('48692','48693').
0.1::trusts('34145','18445').
0.1::trusts('26032','18445').
0.3439::trusts('52972','18445').
0.1::trusts('18445','34145').
0.1::trusts('29351','34145').
0.1::trusts('28348','34145').
0.19::trusts('52972','34145').
0.1::trusts('28756','34145').
0.1::trusts('34144','34145').
0.1::trusts('18445','26032').
0.1::trusts('26502','26032').
0.3439::trusts('18445','52972').
0.1::trusts('34145','52972').
0.1::trusts('26032','26502').
0.1::trusts('34145','42685').
0.19::trusts('34144','42685').
0.271::trusts('42685','34144').
0.1::trusts('34145','34144').
0.19::trusts('34145','29351').
0.1::trusts('34145','28756').
0.1::trusts('48696','55813').

person('48696').
person('48692').
person('28348').
person('48695').
person('48694').
person('48693').
person('18445').
person('34145').
person('26032').
person('52972').
person('26502').
person('42685').
person('34144').
person('29351').
person('28756').
person('55813').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('48696')).
query(buys('48692')).
query(buys('28348')).
query(buys('48695')).
query(buys('48694')).
query(buys('48693')).
query(buys('18445')).
query(buys('34145')).
query(buys('26032')).
query(buys('52972')).
query(buys('26502')).
query(buys('42685')).
query(buys('34144')).
query(buys('29351')).
query(buys('28756')).
query(buys('55813')).
