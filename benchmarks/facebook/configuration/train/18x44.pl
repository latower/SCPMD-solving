10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('39010','25645').
0.1::trusts('52503','25645').
0.1::trusts('25645','39010').
0.1::trusts('52503','39010').
0.19::trusts('54626','39010').
0.19::trusts('46224','39010').
0.1::trusts('46221','39010').
0.1::trusts('25645','52503').
0.3439::trusts('39010','54626').
0.40951::trusts('48750','54626').
0.1::trusts('62003','54626').
0.1::trusts('39010','46224').
0.1::trusts('39010','46221').
0.19::trusts('33829','46221').
0.19::trusts('54626','62003').
0.1::trusts('62002','62003').
0.40951::trusts('39183','62003').
0.19::trusts('39662','62003').
0.19::trusts('46221','33829').
0.1::trusts('25645','39009').
0.19::trusts('60530','62002').
0.1::trusts('62003','39183').
0.19::trusts('62003','39662').
0.19::trusts('62002','60530').
0.1::trusts('39662','57868').
0.1::trusts('39183','57867').
0.1::trusts('60530','60529').
0.1::trusts('52503','37311').

person('25645').
person('39010').
person('52503').
person('54626').
person('46224').
person('46221').
person('48750').
person('62003').
person('33829').
person('39009').
person('62002').
person('39183').
person('39662').
person('60530').
person('57868').
person('57867').
person('60529').
person('37311').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25645')).
query(buys('39010')).
query(buys('52503')).
query(buys('54626')).
query(buys('46224')).
query(buys('46221')).
query(buys('48750')).
query(buys('62003')).
query(buys('33829')).
query(buys('39009')).
query(buys('62002')).
query(buys('39183')).
query(buys('39662')).
query(buys('60530')).
query(buys('57868')).
query(buys('57867')).
query(buys('60529')).
query(buys('37311')).
