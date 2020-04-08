10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2651','2653').
0.3439::trusts('2652','2651').
0.3439::trusts('2651','2652').
0.3439::trusts('43102','2652').
0.3439::trusts('19361','13388').
0.3439::trusts('13388','19361').
0.1::trusts('13392','19361').
0.1::trusts('51594','19361').
0.1::trusts('6983','19361').
0.1::trusts('31970','19361').
0.19::trusts('19361','13392').
0.1::trusts('31970','13392').
0.1::trusts('13392','31970').
0.1::trusts('19361','31970').
0.19::trusts('2652','43102').
0.1::trusts('51594','43102').
0.271::trusts('43102','51594').
0.1::trusts('19361','51594').
0.1::trusts('19361','6983').
0.1::trusts('48188','6983').
0.1::trusts('49397','6983').
0.1::trusts('26687','17323').
0.19::trusts('17323','26687').
0.271::trusts('31469','26687').
0.1::trusts('6983','48188').
0.1::trusts('19361','49397').
0.1::trusts('6983','49397').
0.1::trusts('13388','21189').
0.1::trusts('51594','31469').
0.19::trusts('26687','31469').

person('2653').
person('2651').
person('2652').
person('13388').
person('19361').
person('13392').
person('31970').
person('43102').
person('51594').
person('6983').
person('17323').
person('26687').
person('48188').
person('49397').
person('21189').
person('31469').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2653')).
query(buys('2651')).
query(buys('2652')).
query(buys('13388')).
query(buys('19361')).
query(buys('13392')).
query(buys('31970')).
query(buys('43102')).
query(buys('51594')).
query(buys('6983')).
query(buys('17323')).
query(buys('26687')).
query(buys('48188')).
query(buys('49397')).
query(buys('21189')).
query(buys('31469')).
