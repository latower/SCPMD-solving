10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('27796','25464').
0.1::trusts('32036','25464').
0.1::trusts('32038','25464').
0.19::trusts('25464','27796').
0.1::trusts('14974','27796').
0.271::trusts('25464','32036').
0.19::trusts('9913','13013').
0.19::trusts('13013','9913').
0.1::trusts('20880','9913').
0.19::trusts('14974','9913').
0.271::trusts('9922','9913').
0.1::trusts('13013','20880').
0.1::trusts('14974','20880').
0.1::trusts('27796','20880').
0.1::trusts('15267','14974').
0.271::trusts('9913','14974').
0.1::trusts('43304','14974').
0.1::trusts('37233','14974').
0.1::trusts('11829','14974').
0.40951::trusts('14974','15267').
0.5217031::trusts('14974','43304').
0.1::trusts('14974','37233').
0.19::trusts('9913','11829').
0.271::trusts('9913','9922').
0.1::trusts('25464','32037').
0.1::trusts('14974','25388').
0.19::trusts('58634','25388').
0.1::trusts('14974','40761').
0.1::trusts('9913','56780').
0.1::trusts('9913','46860').

person('25464').
person('27796').
person('32036').
person('32038').
person('13013').
person('9913').
person('20880').
person('14974').
person('15267').
person('43304').
person('37233').
person('11829').
person('9922').
person('32037').
person('25388').
person('58634').
person('40761').
person('56780').
person('46860').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25464')).
query(buys('27796')).
query(buys('32036')).
query(buys('32038')).
query(buys('13013')).
query(buys('9913')).
query(buys('20880')).
query(buys('14974')).
query(buys('15267')).
query(buys('43304')).
query(buys('37233')).
query(buys('11829')).
query(buys('9922')).
query(buys('32037')).
query(buys('25388')).
query(buys('58634')).
query(buys('40761')).
query(buys('56780')).
query(buys('46860')).
