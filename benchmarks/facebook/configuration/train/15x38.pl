10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('29250','21394').
0.3439::trusts('23680','21394').
0.3439::trusts('47319','21394').
0.1::trusts('22025','21394').
0.271::trusts('1535','21394').
0.1::trusts('21394','29250').
0.271::trusts('28507','29250').
0.1::trusts('54677','29250').
0.1::trusts('60269','29250').
0.19::trusts('21394','23680').
0.1::trusts('21394','47319').
0.1::trusts('21394','22025').
0.1::trusts('22020','22025').
0.19::trusts('28507','22025').
0.271::trusts('21394','1535').
0.1::trusts('28528','1535').
0.1::trusts('28533','1535').
0.1::trusts('22025','22020').
0.3439::trusts('29250','28507').
0.19::trusts('22025','28507').
0.19::trusts('29250','54677').
0.1::trusts('11207','54677').
0.1::trusts('29250','60269').
0.1::trusts('62257','28533').
0.1::trusts('54677','11207').
0.1::trusts('28533','62257').
0.1::trusts('22025','46928').

person('21394').
person('29250').
person('23680').
person('47319').
person('22025').
person('1535').
person('22020').
person('28507').
person('54677').
person('60269').
person('28528').
person('28533').
person('11207').
person('62257').
person('46928').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21394')).
query(buys('29250')).
query(buys('23680')).
query(buys('47319')).
query(buys('22025')).
query(buys('1535')).
query(buys('22020')).
query(buys('28507')).
query(buys('54677')).
query(buys('60269')).
query(buys('28528')).
query(buys('28533')).
query(buys('11207')).
query(buys('62257')).
query(buys('46928')).
