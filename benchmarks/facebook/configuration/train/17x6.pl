10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('33946','5256').
0.1::trusts('20860','5256').
0.19::trusts('5256','33946').
0.1::trusts('3243','33946').
0.1::trusts('3262','33946').
0.1::trusts('5256','20860').
0.40951::trusts('12080','3243').
0.271::trusts('12081','3243').
0.1::trusts('33946','3243').
0.5217031::trusts('3243','12080').
0.19::trusts('12072','12080').
0.1::trusts('58769','12080').
0.1::trusts('56152','12080').
0.1::trusts('12080','12072').
0.1::trusts('21467','12072').
0.1::trusts('33946','3262').
0.1::trusts('18747','3262').
0.1::trusts('12072','21467').
0.1::trusts('5256','7239').
0.1::trusts('3262','18747').
0.40951::trusts('56842','18747').
0.1::trusts('21467','37872').
0.1::trusts('5256','25614').
0.1::trusts('3243','63853').

person('5256').
person('33946').
person('20860').
person('3243').
person('12080').
person('12081').
person('12072').
person('58769').
person('56152').
person('3262').
person('21467').
person('7239').
person('18747').
person('37872').
person('25614').
person('56842').
person('63853').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5256')).
query(buys('33946')).
query(buys('20860')).
query(buys('3243')).
query(buys('12080')).
query(buys('12081')).
query(buys('12072')).
query(buys('58769')).
query(buys('56152')).
query(buys('3262')).
query(buys('21467')).
query(buys('7239')).
query(buys('18747')).
query(buys('37872')).
query(buys('25614')).
query(buys('56842')).
query(buys('63853')).
