10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('47316','18067').
0.1::trusts('18067','47316').
0.612579511::trusts('37597','47316').
0.1::trusts('13958','2386').
0.1::trusts('6439','2386').
0.19::trusts('25679','2386').
0.468559::trusts('16059','2386').
0.40951::trusts('2386','6439').
0.1::trusts('16112','6439').
0.271::trusts('27352','6439').
0.271::trusts('2386','25679').
0.271::trusts('2386','16059').
0.468559::trusts('37597','16059').
0.1::trusts('6439','16112').
0.3439::trusts('6439','27352').
0.40951::trusts('16059','37597').
0.3439::trusts('47316','37597').
0.19::trusts('13958','16299').
0.1::trusts('6439','6511').
0.1::trusts('27352','6511').
0.1::trusts('16112','56259').
0.1::trusts('37597','36909').
0.1::trusts('37597','24903').

person('18067').
person('47316').
person('2386').
person('13958').
person('6439').
person('25679').
person('16059').
person('16112').
person('27352').
person('37597').
person('16299').
person('6511').
person('56259').
person('36909').
person('24903').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18067')).
query(buys('47316')).
query(buys('2386')).
query(buys('13958')).
query(buys('6439')).
query(buys('25679')).
query(buys('16059')).
query(buys('16112')).
query(buys('27352')).
query(buys('37597')).
query(buys('16299')).
query(buys('6511')).
query(buys('56259')).
query(buys('36909')).
query(buys('24903')).
