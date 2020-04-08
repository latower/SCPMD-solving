10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6190','6171').
0.19::trusts('6171','6190').
0.1::trusts('1946','2346').
0.1::trusts('19748','2346').
0.40951::trusts('2317','2346').
0.19::trusts('2346','1946').
0.1::trusts('6171','19748').
0.1::trusts('2346','19748').
0.19::trusts('40656','19748').
0.3439::trusts('2346','2317').
0.1::trusts('12185','2317').
0.1::trusts('28167','2317').
0.1::trusts('19748','40656').
0.1::trusts('2317','28167').
0.1::trusts('46316','28167').
0.1::trusts('5570','5606').
0.271::trusts('46316','5606').
0.1::trusts('7294','5606').
0.1::trusts('5606','46316').
0.1::trusts('28167','46316').
0.1::trusts('5606','7294').
0.1::trusts('7294','10292').
0.1::trusts('5570','31703').
0.1::trusts('45012','31703').
0.3439::trusts('31703','45012').
0.5217031::trusts('31703','33406').
0.1::trusts('10292','13143').

person('6171').
person('6190').
person('2346').
person('1946').
person('19748').
person('2317').
person('40656').
person('12185').
person('28167').
person('5606').
person('5570').
person('46316').
person('7294').
person('10292').
person('31703').
person('45012').
person('33406').
person('13143').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6171')).
query(buys('6190')).
query(buys('2346')).
query(buys('1946')).
query(buys('19748')).
query(buys('2317')).
query(buys('40656')).
query(buys('12185')).
query(buys('28167')).
query(buys('5606')).
query(buys('5570')).
query(buys('46316')).
query(buys('7294')).
query(buys('10292')).
query(buys('31703')).
query(buys('45012')).
query(buys('33406')).
query(buys('13143')).
