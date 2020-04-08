10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('38579','11603').
0.1::trusts('46006','11603').
0.468559::trusts('11603','38579').
0.19::trusts('31988','38579').
0.1::trusts('43643','38579').
0.19::trusts('38579','31988').
0.1::trusts('62896','31988').
0.19::trusts('55315','31988').
0.1::trusts('12468','43643').
0.1::trusts('55315','40915').
0.1::trusts('18000','40915').
0.1::trusts('40915','18000').
0.1::trusts('40493','12468').
0.1::trusts('12468','40493').
0.1::trusts('12468','24401').
0.1::trusts('55315','58542').
0.19::trusts('40493','40757').
0.1::trusts('11603','47868').
0.1::trusts('11603','50466').

person('11603').
person('38579').
person('46006').
person('31988').
person('43643').
person('40915').
person('55315').
person('18000').
person('12468').
person('40493').
person('62896').
person('24401').
person('58542').
person('40757').
person('47868').
person('50466').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11603')).
query(buys('38579')).
query(buys('46006')).
query(buys('31988')).
query(buys('43643')).
query(buys('40915')).
query(buys('55315')).
query(buys('18000')).
query(buys('12468')).
query(buys('40493')).
query(buys('62896')).
query(buys('24401')).
query(buys('58542')).
query(buys('40757')).
query(buys('47868')).
query(buys('50466')).
