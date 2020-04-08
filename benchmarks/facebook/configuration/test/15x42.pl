10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('12066','13469').
0.19::trusts('35007','13469').
0.68618940391::trusts('8189','13469').
0.19::trusts('20751','13469').
0.5217031::trusts('13469','8189').
0.19::trusts('4962','8189').
0.1::trusts('28915','8189').
0.1::trusts('12066','20751').
0.271::trusts('13469','20751').
0.19::trusts('2504','4962').
0.1::trusts('8191','4962').
0.3439::trusts('8189','4962').
0.1::trusts('8189','28915').
0.1::trusts('28915','40124').
0.1::trusts('12066','22749').
0.19::trusts('12066','10101').
0.1::trusts('28915','35009').
0.1::trusts('12066','20752').
0.19::trusts('12066','57628').

person('13469').
person('12066').
person('35007').
person('8189').
person('20751').
person('4962').
person('28915').
person('2504').
person('8191').
person('40124').
person('22749').
person('10101').
person('35009').
person('20752').
person('57628').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13469')).
query(buys('12066')).
query(buys('35007')).
query(buys('8189')).
query(buys('20751')).
query(buys('4962')).
query(buys('28915')).
query(buys('2504')).
query(buys('8191')).
query(buys('40124')).
query(buys('22749')).
query(buys('10101')).
query(buys('35009')).
query(buys('20752')).
query(buys('57628')).
