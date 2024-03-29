10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('16673','16713').
0.928210201230815::trusts('13925','16713').
0.3439::trusts('20382','16713').
0.468559::trusts('16713','16673').
0.1::trusts('13925','16673').
0.19::trusts('8693','16673').
0.864914828232701::trusts('16713','13925').
0.1::trusts('2328','13925').
0.19::trusts('12578','13925').
0.833228183003334::trusts('12166','13925').
0.19::trusts('16673','13925').
0.19::trusts('20382','13925').
0.1::trusts('16684','13925').
0.1::trusts('19064','20382').
0.19::trusts('13925','20382').
0.19::trusts('26344','20382').
0.1::trusts('30060','2328').
0.1::trusts('13463','2328').
0.19::trusts('13925','2328').
0.1::trusts('20382','2328').
0.1::trusts('26344','2328').
0.1::trusts('16673','30060').
0.1::trusts('2328','26344').
0.19::trusts('30060','26344').
0.271::trusts('20382','26344').
0.56953279::trusts('7578','15967').
0.911370618803475::trusts('12578','15967').
0.849905364703001::trusts('12166','15967').
0.1::trusts('15968','15967').
0.1::trusts('13925','15967').
0.271::trusts('7578','12578').
0.6513215599::trusts('15967','12578').
0.999226445989855::trusts('12166','12578').
0.271::trusts('13925','12578').
0.1::trusts('15969','12578').
0.1::trusts('12578','12166').
0.19::trusts('15967','15968').
0.19::trusts('12578','15968').
0.1::trusts('12166','15968').
0.1::trusts('10145','15968').
0.40951::trusts('12578','15969').
0.1::trusts('12166','15969').
0.19::trusts('16673','8693').
0.1::trusts('19064','23165').
0.1::trusts('23165','19064').
0.19::trusts('13925','19064').
0.1::trusts('20382','19064').
0.1::trusts('13925','16684').
0.1::trusts('13463','8585').
0.1::trusts('10145','45099').
0.1::trusts('16673','10810').
0.1::trusts('30060','34408').
0.271::trusts('7578','20806').
0.1::trusts('12578','15971').

person('16713').
person('16673').
person('13925').
person('20382').
person('2328').
person('30060').
person('13463').
person('26344').
person('15967').
person('7578').
person('12578').
person('12166').
person('15968').
person('15969').
person('10145').
person('8693').
person('23165').
person('19064').
person('16684').
person('8585').
person('45099').
person('10810').
person('34408').
person('20806').
person('15971').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16713')).
query(buys('16673')).
query(buys('13925')).
query(buys('20382')).
query(buys('2328')).
query(buys('30060')).
query(buys('13463')).
query(buys('26344')).
query(buys('15967')).
query(buys('7578')).
query(buys('12578')).
query(buys('12166')).
query(buys('15968')).
query(buys('15969')).
query(buys('10145')).
query(buys('8693')).
query(buys('23165')).
query(buys('19064')).
query(buys('16684')).
query(buys('8585')).
query(buys('45099')).
query(buys('10810')).
query(buys('34408')).
query(buys('20806')).
query(buys('15971')).
