10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('25897','45202').
0.1::trusts('45202','25897').
0.1::trusts('23679','25897').
0.1::trusts('11340','25897').
0.271::trusts('43581','25897').
0.3439::trusts('23679','23678').
0.1::trusts('20270','23678').
0.271::trusts('23678','23679').
0.1::trusts('216','23679').
0.1::trusts('25897','23679').
0.1::trusts('23678','20270').
0.19::trusts('23679','216').
0.1::trusts('25897','11340').
0.1::trusts('46996','11340').
0.1::trusts('45897','11340').
0.1::trusts('11487','11340').
0.3439::trusts('25897','43581').
0.1::trusts('11340','46996').
0.1::trusts('11340','11487').
0.19::trusts('51083','11487').
0.1::trusts('28577','11487').
0.1::trusts('33214','11487').
0.1::trusts('48240','48241').
0.1::trusts('11340','48240').
0.19::trusts('11487','51083').
0.19::trusts('11487','28577').
0.1::trusts('11487','33214').
0.1::trusts('11340','51915').

person('45202').
person('25897').
person('23678').
person('23679').
person('20270').
person('216').
person('11340').
person('43581').
person('46996').
person('45897').
person('11487').
person('48241').
person('48240').
person('51083').
person('28577').
person('33214').
person('51915').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('45202')).
query(buys('25897')).
query(buys('23678')).
query(buys('23679')).
query(buys('20270')).
query(buys('216')).
query(buys('11340')).
query(buys('43581')).
query(buys('46996')).
query(buys('45897')).
query(buys('11487')).
query(buys('48241')).
query(buys('48240')).
query(buys('51083')).
query(buys('28577')).
query(buys('33214')).
query(buys('51915')).
