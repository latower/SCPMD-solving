10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('1776','1173').
0.468559::trusts('2763','1173').
0.271::trusts('1176','1173').
0.1::trusts('1180','1173').
0.40951::trusts('864','1173').
0.19::trusts('1173','1776').
0.40951::trusts('1173','1176').
0.3439::trusts('1180','1176').
0.468559::trusts('1173','1180').
0.56953279::trusts('1176','1180').
0.19::trusts('22142','1180').
0.5217031::trusts('1173','864').
0.19::trusts('2763','864').
0.5217031::trusts('269','864').
0.271::trusts('4280','864').
0.271::trusts('3091','864').
0.1::trusts('1180','22142').
0.717570463519::trusts('2763','3091').
0.19::trusts('269','3091').
0.3439::trusts('864','3091').
0.1::trusts('4280','3091').
0.901522909781639::trusts('3092','3091').
0.833228183003334::trusts('2763','3092').
0.1::trusts('4280','3092').
0.612579511::trusts('3091','3092').
0.1::trusts('2763','18584').
0.19::trusts('2763','9514').
0.1::trusts('2763','2004').
0.1::trusts('864','14630').
0.1::trusts('2763','18784').

person('1173').
person('1776').
person('2763').
person('1176').
person('1180').
person('864').
person('22142').
person('269').
person('4280').
person('3091').
person('3092').
person('18584').
person('9514').
person('2004').
person('14630').
person('18784').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1173')).
query(buys('1776')).
query(buys('2763')).
query(buys('1176')).
query(buys('1180')).
query(buys('864')).
query(buys('22142')).
query(buys('269')).
query(buys('4280')).
query(buys('3091')).
query(buys('3092')).
query(buys('18584')).
query(buys('9514')).
query(buys('2004')).
query(buys('14630')).
query(buys('18784')).
