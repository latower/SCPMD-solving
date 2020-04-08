10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4128','1396').
0.1::trusts('36427','1396').
0.1::trusts('30057','1396').
0.56953279::trusts('4126','1396').
0.1::trusts('30064','1396').
0.271::trusts('1396','4128').
0.40951::trusts('30064','4128').
0.3439::trusts('12902','4128').
0.1::trusts('25535','4128').
0.1::trusts('1396','30057').
0.1::trusts('30064','30057').
0.5217031::trusts('1396','4126').
0.717570463519::trusts('36427','4126').
0.19::trusts('30064','4126').
0.1::trusts('1396','30064').
0.3439::trusts('4128','30064').
0.1::trusts('36427','30064').
0.1::trusts('4126','30064').
0.271::trusts('25535','30064').
0.1::trusts('57013','30064').
0.1::trusts('4128','12902').
0.1::trusts('4128','25535').
0.3439::trusts('30064','25535').
0.1::trusts('30064','57013').
0.1::trusts('1396','24750').
0.1::trusts('30057','24750').
0.1::trusts('29457','24750').
0.1::trusts('30070','24750').
0.1::trusts('24750','30070').
0.1::trusts('36427','28649').
0.1::trusts('30064','23334').
0.1::trusts('4128','17639').

person('1396').
person('4128').
person('36427').
person('30057').
person('4126').
person('30064').
person('12902').
person('25535').
person('57013').
person('24750').
person('29457').
person('30070').
person('28649').
person('23334').
person('17639').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1396')).
query(buys('4128')).
query(buys('36427')).
query(buys('30057')).
query(buys('4126')).
query(buys('30064')).
query(buys('12902')).
query(buys('25535')).
query(buys('57013')).
query(buys('24750')).
query(buys('29457')).
query(buys('30070')).
query(buys('28649')).
query(buys('23334')).
query(buys('17639')).
