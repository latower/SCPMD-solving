10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4272','9188').
0.890581010868488::trusts('10755','9188').
0.928210201230815::trusts('19449','9188').
0.1::trusts('15872','9188').
0.56953279::trusts('10755','4272').
0.1::trusts('4267','4272').
0.19::trusts('25638','4272').
0.952898713027537::trusts('9188','10755').
0.40951::trusts('4272','10755').
0.1::trusts('15872','10755').
0.1::trusts('22846','10755').
0.901522909781639::trusts('9188','19449').
0.1::trusts('9188','15872').
0.1::trusts('10755','15872').
0.19::trusts('25626','15872').
0.5217031::trusts('53103','24011').
0.271::trusts('24011','53103').
0.1::trusts('25440','53103').
0.814697981114816::trusts('53102','53103').
0.1::trusts('4272','4267').
0.1::trusts('10755','4267').
0.19::trusts('4266','4267').
0.1::trusts('38295','4267').
0.1::trusts('4272','25638').
0.271::trusts('25440','25638').
0.1::trusts('8298','29369').
0.271::trusts('53102','29369').
0.1::trusts('29369','8298').
0.19::trusts('29369','53102').
0.901522909781639::trusts('53103','53102').
0.1::trusts('10755','22846').
0.271::trusts('53103','25440').
0.19::trusts('25638','25440').
0.1::trusts('63885','25440').
0.19::trusts('4267','4266').
0.1::trusts('4267','38295').
0.1::trusts('25440','63885').
0.1::trusts('19449','9141').
0.1::trusts('25440','25439').

person('9188').
person('4272').
person('10755').
person('19449').
person('15872').
person('24011').
person('53103').
person('4267').
person('25638').
person('29369').
person('8298').
person('53102').
person('22846').
person('25440').
person('25626').
person('4266').
person('38295').
person('63885').
person('9141').
person('25439').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9188')).
query(buys('4272')).
query(buys('10755')).
query(buys('19449')).
query(buys('15872')).
query(buys('24011')).
query(buys('53103')).
query(buys('4267')).
query(buys('25638')).
query(buys('29369')).
query(buys('8298')).
query(buys('53102')).
query(buys('22846')).
query(buys('25440')).
query(buys('25626')).
query(buys('4266')).
query(buys('38295')).
query(buys('63885')).
query(buys('9141')).
query(buys('25439')).
