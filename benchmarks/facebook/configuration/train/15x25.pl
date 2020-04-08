10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('22008','22542').
0.271::trusts('24873','22542').
0.19::trusts('22542','22008').
0.271::trusts('23259','22008').
0.3439::trusts('13709','22008').
0.1::trusts('38428','22008').
0.19::trusts('22542','24873').
0.1::trusts('49277','24873').
0.1::trusts('33852','24873').
0.1::trusts('39973','24873').
0.1::trusts('41433','24873').
0.19::trusts('22008','23259').
0.1::trusts('22542','13709').
0.3439::trusts('22008','13709').
0.1::trusts('22008','38428').
0.1::trusts('24873','49277').
0.1::trusts('24873','39973').
0.1::trusts('24873','41433').
0.1::trusts('34523','41433').
0.19::trusts('23259','12067').
0.1::trusts('32167','12067').
0.271::trusts('12067','32167').
0.19::trusts('24873','36666').
0.19::trusts('36665','36666').

person('22542').
person('22008').
person('24873').
person('23259').
person('13709').
person('38428').
person('49277').
person('33852').
person('39973').
person('41433').
person('34523').
person('12067').
person('32167').
person('36666').
person('36665').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22542')).
query(buys('22008')).
query(buys('24873')).
query(buys('23259')).
query(buys('13709')).
query(buys('38428')).
query(buys('49277')).
query(buys('33852')).
query(buys('39973')).
query(buys('41433')).
query(buys('34523')).
query(buys('12067')).
query(buys('32167')).
query(buys('36666')).
query(buys('36665')).
