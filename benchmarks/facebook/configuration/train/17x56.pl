10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('7054','4314').
0.7458134171671::trusts('24368','4314').
0.1::trusts('23089','4314').
0.1::trusts('29579','4314').
0.1::trusts('48074','4314').
0.717570463519::trusts('4314','24368').
0.1::trusts('23089','24368').
0.1::trusts('36239','24368').
0.1::trusts('19589','24368').
0.271::trusts('4314','23089').
0.271::trusts('24368','23089').
0.40951::trusts('4314','29579').
0.40951::trusts('20473','29579').
0.1::trusts('29579','48074').
0.1::trusts('24368','36239').
0.1::trusts('24368','19589').
0.3439::trusts('29579','20473').
0.1::trusts('24402','20473').
0.19::trusts('20488','20473').
0.1::trusts('20473','24402').
0.19::trusts('20473','20488').
0.271::trusts('62325','20488').
0.1::trusts('63690','20488').
0.40951::trusts('20488','62325').
0.19::trusts('20488','63690').
0.1::trusts('24368','36240').
0.1::trusts('20488','20468').
0.1::trusts('4314','26398').
0.1::trusts('29579','26398').
0.1::trusts('20473','29913').

person('4314').
person('7054').
person('24368').
person('23089').
person('29579').
person('48074').
person('36239').
person('19589').
person('20473').
person('24402').
person('20488').
person('62325').
person('63690').
person('36240').
person('20468').
person('26398').
person('29913').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4314')).
query(buys('7054')).
query(buys('24368')).
query(buys('23089')).
query(buys('29579')).
query(buys('48074')).
query(buys('36239')).
query(buys('19589')).
query(buys('20473')).
query(buys('24402')).
query(buys('20488')).
query(buys('62325')).
query(buys('63690')).
query(buys('36240')).
query(buys('20468')).
query(buys('26398')).
query(buys('29913')).
