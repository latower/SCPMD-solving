10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2577','2398').
0.1::trusts('2580','2398').
0.19::trusts('2398','2577').
0.1::trusts('39961','2577').
0.1::trusts('2398','2580').
0.1::trusts('9311','2580').
0.3439::trusts('42791','2580').
0.1::trusts('59363','2580').
0.271::trusts('2580','9311').
0.19::trusts('42791','9311').
0.1::trusts('7444','9311').
0.3439::trusts('2580','42791').
0.19::trusts('38089','42791').
0.19::trusts('9311','42791').
0.19::trusts('42790','42791').
0.271::trusts('2580','59363').
0.1::trusts('10052','2620').
0.1::trusts('2620','10052').
0.1::trusts('14833','10052').
0.1::trusts('38089','28730').
0.40951::trusts('28730','38089').
0.1::trusts('14833','38089').
0.271::trusts('42791','38089').
0.1::trusts('28730','14833').
0.1::trusts('9311','7444').
0.1::trusts('42791','42790').
0.1::trusts('39961','39962').
0.1::trusts('28730','34191').
0.1::trusts('2580','53672').
0.1::trusts('2580','59364').
0.1::trusts('2580','60600').

person('2398').
person('2577').
person('2580').
person('39961').
person('9311').
person('42791').
person('59363').
person('2620').
person('10052').
person('28730').
person('38089').
person('14833').
person('7444').
person('42790').
person('39962').
person('34191').
person('53672').
person('59364').
person('60600').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2398')).
query(buys('2577')).
query(buys('2580')).
query(buys('39961')).
query(buys('9311')).
query(buys('42791')).
query(buys('59363')).
query(buys('2620')).
query(buys('10052')).
query(buys('28730')).
query(buys('38089')).
query(buys('14833')).
query(buys('7444')).
query(buys('42790')).
query(buys('39962')).
query(buys('34191')).
query(buys('53672')).
query(buys('59364')).
query(buys('60600')).
