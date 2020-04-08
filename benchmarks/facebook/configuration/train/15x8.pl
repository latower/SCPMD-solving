10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5921','12242').
0.1::trusts('1836','12242').
0.1::trusts('12242','5921').
0.1::trusts('4693','5921').
0.1::trusts('16305','5921').
0.1::trusts('12242','1836').
0.271::trusts('12133','1836').
0.19::trusts('19273','1836').
0.1::trusts('5921','4693').
0.1::trusts('6871','4693').
0.1::trusts('4693','6871').
0.1::trusts('5921','16305').
0.19::trusts('8918','16305').
0.271::trusts('1836','12133').
0.1::trusts('1836','19273').
0.1::trusts('16305','8918').
0.1::trusts('12133','12130').
0.1::trusts('12242','25022').
0.1::trusts('16305','61085').
0.19::trusts('8918','61085').
0.1::trusts('12242','42792').
0.271::trusts('12242','29340').
0.1::trusts('12242','8779').

person('12242').
person('5921').
person('1836').
person('4693').
person('6871').
person('16305').
person('12133').
person('19273').
person('8918').
person('12130').
person('25022').
person('61085').
person('42792').
person('29340').
person('8779').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12242')).
query(buys('5921')).
query(buys('1836')).
query(buys('4693')).
query(buys('6871')).
query(buys('16305')).
query(buys('12133')).
query(buys('19273')).
query(buys('8918')).
query(buys('12130')).
query(buys('25022')).
query(buys('61085')).
query(buys('42792')).
query(buys('29340')).
query(buys('8779')).
