10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('7509','12394').
0.1::trusts('12394','7509').
0.1::trusts('4586','7509').
0.19::trusts('7567','7509').
0.612579511::trusts('4586','18141').
0.1::trusts('18729','18141').
0.1::trusts('37474','18141').
0.1::trusts('7175','18141').
0.5217031::trusts('18141','4586').
0.1::trusts('7509','4586').
0.271::trusts('24393','4586').
0.1::trusts('18141','18729').
0.19::trusts('21850','18729').
0.1::trusts('18141','37474').
0.1::trusts('53738','37474').
0.19::trusts('18141','7175').
0.19::trusts('4586','24393').
0.1::trusts('27343','24393').
0.1::trusts('39436','24393').
0.1::trusts('18141','21850').
0.1::trusts('39994','21850').
0.1::trusts('53739','53738').
0.1::trusts('7509','7567').
0.1::trusts('21850','39994').
0.1::trusts('53738','53739').
0.19::trusts('18141','57749').

person('12394').
person('7509').
person('18141').
person('4586').
person('18729').
person('37474').
person('7175').
person('24393').
person('21850').
person('53738').
person('7567').
person('39994').
person('27343').
person('39436').
person('53739').
person('57749').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12394')).
query(buys('7509')).
query(buys('18141')).
query(buys('4586')).
query(buys('18729')).
query(buys('37474')).
query(buys('7175')).
query(buys('24393')).
query(buys('21850')).
query(buys('53738')).
query(buys('7567')).
query(buys('39994')).
query(buys('27343')).
query(buys('39436')).
query(buys('53739')).
query(buys('57749')).
