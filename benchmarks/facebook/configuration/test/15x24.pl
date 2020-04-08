10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('13106','1320').
0.19::trusts('9072','1320').
0.19::trusts('1320','13106').
0.271::trusts('10012','13106').
0.271::trusts('18012','13106').
0.56953279::trusts('9072','13106').
0.40951::trusts('13106','10012').
0.1::trusts('13106','18012').
0.1::trusts('40655','18012').
0.19::trusts('18012','40655').
0.1::trusts('59720','40655').
0.1::trusts('10012','20233').
0.19::trusts('13106','24314').
0.271::trusts('18012','40063').
0.1::trusts('29238','40063').
0.19::trusts('13106','24313').
0.1::trusts('9072','63405').
0.19::trusts('9072','10427').
0.1::trusts('18012','56299').

person('1320').
person('13106').
person('9072').
person('10012').
person('18012').
person('40655').
person('59720').
person('20233').
person('24314').
person('40063').
person('29238').
person('24313').
person('63405').
person('10427').
person('56299').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1320')).
query(buys('13106')).
query(buys('9072')).
query(buys('10012')).
query(buys('18012')).
query(buys('40655')).
query(buys('59720')).
query(buys('20233')).
query(buys('24314')).
query(buys('40063')).
query(buys('29238')).
query(buys('24313')).
query(buys('63405')).
query(buys('10427')).
query(buys('56299')).
