10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.612579511::trusts('23851','11927').
0.40951::trusts('11927','23851').
0.1::trusts('47357','23851').
0.40951::trusts('36079','23851').
0.1::trusts('36079','42368').
0.1::trusts('42368','36079').
0.468559::trusts('23851','36079').
0.1::trusts('43276','36079').
0.1::trusts('54617','36079').
0.1::trusts('54613','36079').
0.1::trusts('23851','47357').
0.19::trusts('36079','54617').
0.1::trusts('36079','54613').
0.1::trusts('42368','42367').
0.1::trusts('23851','53981').
0.1::trusts('48483','53981').
0.1::trusts('43277','43275').
0.1::trusts('43276','43275').
0.271::trusts('43275','43277').
0.1::trusts('23851','53982').
0.1::trusts('42367','42369').
0.1::trusts('11927','42124').

person('11927').
person('23851').
person('42368').
person('36079').
person('47357').
person('43276').
person('54617').
person('54613').
person('42367').
person('53981').
person('48483').
person('43275').
person('43277').
person('53982').
person('42369').
person('42124').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11927')).
query(buys('23851')).
query(buys('42368')).
query(buys('36079')).
query(buys('47357')).
query(buys('43276')).
query(buys('54617')).
query(buys('54613')).
query(buys('42367')).
query(buys('53981')).
query(buys('48483')).
query(buys('43275')).
query(buys('43277')).
query(buys('53982')).
query(buys('42369')).
query(buys('42124')).
