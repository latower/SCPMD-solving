10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('20645','7541').
0.5217031::trusts('5746','7541').
0.1::trusts('34954','7541').
0.19::trusts('7541','20645').
0.1::trusts('20585','20645').
0.1::trusts('47326','20645').
0.40951::trusts('12263','20645').
0.3439::trusts('2665','5746').
0.40951::trusts('7541','5746').
0.1::trusts('11084','5746').
0.1::trusts('11091','5746').
0.468559::trusts('7541','34954').
0.5217031::trusts('22292','34954').
0.40951::trusts('34956','34954').
0.3439::trusts('29571','34954').
0.19::trusts('20645','20585').
0.3439::trusts('20645','12263').
0.1::trusts('5746','11084').
0.1::trusts('5746','11091').
0.1::trusts('11394','11091').
0.56953279::trusts('34954','22292').
0.19::trusts('34956','22292').
0.19::trusts('34954','34956').
0.19::trusts('22292','34956').
0.19::trusts('34954','29571').
0.19::trusts('34956','25253').
0.1::trusts('34954','34955').
0.1::trusts('49512','34955').
0.1::trusts('49512','51881').
0.1::trusts('22292','22348').

person('7541').
person('20645').
person('5746').
person('34954').
person('20585').
person('47326').
person('12263').
person('2665').
person('11084').
person('11091').
person('11394').
person('22292').
person('34956').
person('29571').
person('25253').
person('34955').
person('49512').
person('51881').
person('22348').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7541')).
query(buys('20645')).
query(buys('5746')).
query(buys('34954')).
query(buys('20585')).
query(buys('47326')).
query(buys('12263')).
query(buys('2665')).
query(buys('11084')).
query(buys('11091')).
query(buys('11394')).
query(buys('22292')).
query(buys('34956')).
query(buys('29571')).
query(buys('25253')).
query(buys('34955')).
query(buys('49512')).
query(buys('51881')).
query(buys('22348')).
