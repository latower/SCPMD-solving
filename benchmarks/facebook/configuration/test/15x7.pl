10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('38694','10279').
0.1::trusts('1480','10279').
0.5217031::trusts('30331','10279').
0.1::trusts('10279','38694').
0.1::trusts('49865','38694').
0.5217031::trusts('10279','30331').
0.1::trusts('51587','30331').
0.1::trusts('28984','30331').
0.1::trusts('51377','30331').
0.19::trusts('58557','49865').
0.5217031::trusts('45802','49865').
0.1::trusts('46577','51587').
0.1::trusts('30331','51377').
0.1::trusts('51112','51377').
0.19::trusts('38694','58557').
0.271::trusts('49865','58557').
0.5217031::trusts('49865','45802').
0.1::trusts('51377','51112').
0.1::trusts('26850','51112').
0.1::trusts('51112','26850').
0.1::trusts('51112','51111').
0.19::trusts('38694','6629').

person('10279').
person('38694').
person('1480').
person('30331').
person('49865').
person('51587').
person('28984').
person('51377').
person('58557').
person('45802').
person('46577').
person('51112').
person('26850').
person('51111').
person('6629').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('10279')).
query(buys('38694')).
query(buys('1480')).
query(buys('30331')).
query(buys('49865')).
query(buys('51587')).
query(buys('28984')).
query(buys('51377')).
query(buys('58557')).
query(buys('45802')).
query(buys('46577')).
query(buys('51112')).
query(buys('26850')).
query(buys('51111')).
query(buys('6629')).
