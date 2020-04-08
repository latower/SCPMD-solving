10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.77123207545039::trusts('21387','29629').
0.19::trusts('25684','29629').
0.3439::trusts('21387','25684').
0.1::trusts('29629','25684').
0.19::trusts('11127','25684').
0.1::trusts('25684','11127').
0.1::trusts('20160','11127').
0.1::trusts('11127','20160').
0.1::trusts('42666','20160').
0.1::trusts('20160','42666').
0.1::trusts('25684','43571').
0.1::trusts('50474','43571').
0.1::trusts('50982','50474').
0.1::trusts('50474','50982').
0.271::trusts('42342','50982').
0.271::trusts('50982','42342').
0.1::trusts('21387','50735').
0.1::trusts('43946','50735').
0.1::trusts('21387','20513').
0.1::trusts('21387','31529').
0.1::trusts('21387','41170').
0.1::trusts('50982','61116').

person('29629').
person('21387').
person('25684').
person('11127').
person('20160').
person('42666').
person('43571').
person('50474').
person('50982').
person('42342').
person('50735').
person('43946').
person('20513').
person('31529').
person('41170').
person('61116').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29629')).
query(buys('21387')).
query(buys('25684')).
query(buys('11127')).
query(buys('20160')).
query(buys('42666')).
query(buys('43571')).
query(buys('50474')).
query(buys('50982')).
query(buys('42342')).
query(buys('50735')).
query(buys('43946')).
query(buys('20513')).
query(buys('31529')).
query(buys('41170')).
query(buys('61116')).
