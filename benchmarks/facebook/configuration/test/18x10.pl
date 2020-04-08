10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19398','8953').
0.1::trusts('9641','8953').
0.1::trusts('8953','19398').
0.1::trusts('12277','19398').
0.19::trusts('8953','9641').
0.19::trusts('14322','9641').
0.271::trusts('14322','51929').
0.1::trusts('59001','51929').
0.271::trusts('51929','14322').
0.19::trusts('9641','14322').
0.19::trusts('51929','59001').
0.1::trusts('54759','59001').
0.19::trusts('58650','59001').
0.19::trusts('57711','47934').
0.1::trusts('61017','47934').
0.1::trusts('58650','47934').
0.1::trusts('47934','57711').
0.1::trusts('47934','61017').
0.1::trusts('62690','61017').
0.19::trusts('42025','58650').
0.1::trusts('47934','58650').
0.1::trusts('59001','58650').
0.19::trusts('51929','26064').
0.1::trusts('47934','62690').
0.271::trusts('61017','62690').
0.1::trusts('59001','54759').
0.19::trusts('59002','54759').
0.1::trusts('47934','61567').
0.1::trusts('14322','9627').

person('8953').
person('19398').
person('9641').
person('12277').
person('51929').
person('14322').
person('59001').
person('47934').
person('57711').
person('61017').
person('58650').
person('26064').
person('62690').
person('54759').
person('59002').
person('42025').
person('61567').
person('9627').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8953')).
query(buys('19398')).
query(buys('9641')).
query(buys('12277')).
query(buys('51929')).
query(buys('14322')).
query(buys('59001')).
query(buys('47934')).
query(buys('57711')).
query(buys('61017')).
query(buys('58650')).
query(buys('26064')).
query(buys('62690')).
query(buys('54759')).
query(buys('59002')).
query(buys('42025')).
query(buys('61567')).
query(buys('9627')).
