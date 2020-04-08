10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.833228183003334::trusts('18336','24261').
0.1::trusts('15487','24261').
0.1::trusts('15489','24261').
0.849905364703001::trusts('24261','18336').
0.1::trusts('17176','18336').
0.1::trusts('13823','18336').
0.1::trusts('24261','15487').
0.6513215599::trusts('15486','15487').
0.1::trusts('15490','15487').
0.19::trusts('24261','15489').
0.3439::trusts('15486','15489').
0.19::trusts('18336','17176').
0.1::trusts('21304','17176').
0.1::trusts('44794','17176').
0.271::trusts('18336','13823').
0.1::trusts('1463','13823').
0.19::trusts('51322','21304').
0.1::trusts('17176','44794').
0.3439::trusts('13823','1463').
0.1::trusts('809','1463').
0.40951::trusts('15487','15486').
0.19::trusts('15489','15486').
0.1::trusts('15484','15486').
0.1::trusts('15485','15490').
0.1::trusts('21304','51322').
0.1::trusts('15490','15485').
0.1::trusts('37361','15485').
0.1::trusts('18336','28119').
0.1::trusts('24261','52063').

person('24261').
person('18336').
person('15487').
person('15489').
person('17176').
person('13823').
person('21304').
person('44794').
person('1463').
person('809').
person('15486').
person('15490').
person('51322').
person('15484').
person('15485').
person('37361').
person('28119').
person('52063').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('24261')).
query(buys('18336')).
query(buys('15487')).
query(buys('15489')).
query(buys('17176')).
query(buys('13823')).
query(buys('21304')).
query(buys('44794')).
query(buys('1463')).
query(buys('809')).
query(buys('15486')).
query(buys('15490')).
query(buys('51322')).
query(buys('15484')).
query(buys('15485')).
query(buys('37361')).
query(buys('28119')).
query(buys('52063')).
