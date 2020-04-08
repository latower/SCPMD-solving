10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.6513215599::trusts('14004','24460').
0.1::trusts('27220','24460').
0.1::trusts('22500','24460').
0.68618940391::trusts('24460','14004').
0.56953279::trusts('22500','27220').
0.1::trusts('24460','22500').
0.19::trusts('33398','22500').
0.612579511::trusts('27220','22500').
0.468559::trusts('36952','22500').
0.271::trusts('12219','33398').
0.19::trusts('22500','33398').
0.1::trusts('23144','33398').
0.1::trusts('30556','33398').
0.5217031::trusts('33398','12219').
0.19::trusts('25738','12219').
0.1::trusts('33398','23144').
0.1::trusts('33398','30556').
0.19::trusts('3643','30556').
0.1::trusts('35360','30556').
0.56953279::trusts('22500','36952').
0.19::trusts('58317','36952').
0.19::trusts('36952','58317').
0.1::trusts('12219','25738').
0.19::trusts('30556','3643').
0.19::trusts('39792','35360').
0.19::trusts('35360','39792').
0.1::trusts('42018','39792').
0.19::trusts('39792','42018').
0.1::trusts('33398','47022').
0.1::trusts('22500','55365').

person('24460').
person('14004').
person('27220').
person('22500').
person('33398').
person('12219').
person('23144').
person('30556').
person('36952').
person('58317').
person('25738').
person('3643').
person('35360').
person('39792').
person('42018').
person('47022').
person('55365').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('24460')).
query(buys('14004')).
query(buys('27220')).
query(buys('22500')).
query(buys('33398')).
query(buys('12219')).
query(buys('23144')).
query(buys('30556')).
query(buys('36952')).
query(buys('58317')).
query(buys('25738')).
query(buys('3643')).
query(buys('35360')).
query(buys('39792')).
query(buys('42018')).
query(buys('47022')).
query(buys('55365')).
