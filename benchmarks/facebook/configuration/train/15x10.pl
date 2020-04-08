10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('53770','12535').
0.3439::trusts('61283','12535').
0.19::trusts('12535','53770').
0.5217031::trusts('12535','61283').
0.19::trusts('45385','61283').
0.19::trusts('24792','49861').
0.19::trusts('52070','49861').
0.5217031::trusts('49861','24792').
0.19::trusts('45385','24792').
0.5217031::trusts('49861','52070').
0.1::trusts('59037','52070').
0.1::trusts('24792','45385').
0.1::trusts('61283','45385').
0.1::trusts('60182','45385').
0.271::trusts('42578','36632').
0.19::trusts('6655','42578').
0.1::trusts('42578','6655').
0.1::trusts('45385','60182').
0.1::trusts('6655','45383').
0.1::trusts('45385','45383').
0.1::trusts('52070','51405').
0.1::trusts('45385','62839').

person('12535').
person('53770').
person('61283').
person('49861').
person('24792').
person('52070').
person('45385').
person('59037').
person('36632').
person('42578').
person('6655').
person('60182').
person('45383').
person('51405').
person('62839').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12535')).
query(buys('53770')).
query(buys('61283')).
query(buys('49861')).
query(buys('24792')).
query(buys('52070')).
query(buys('45385')).
query(buys('59037')).
query(buys('36632')).
query(buys('42578')).
query(buys('6655')).
query(buys('60182')).
query(buys('45383')).
query(buys('51405')).
query(buys('62839')).
