10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('24175','22006').
0.1::trusts('22006','24175').
0.1::trusts('34193','24175').
0.271::trusts('22006','22039').
0.1::trusts('19701','22039').
0.19::trusts('23180','22039').
0.271::trusts('22039','19701').
0.40951::trusts('2746','19701').
0.56953279::trusts('25908','19701').
0.19::trusts('22039','23180').
0.1::trusts('17027','2746').
0.1::trusts('35805','2746').
0.1::trusts('32833','2746').
0.40951::trusts('19701','2746').
0.271::trusts('30130','2746').
0.1::trusts('35259','2746').
0.1::trusts('2746','17027').
0.271::trusts('2746','35805').
0.40951::trusts('2746','32833').
0.1::trusts('19416','32833').
0.1::trusts('2746','30130').
0.271::trusts('32834','35259').
0.1::trusts('19416','35259').
0.1::trusts('2746','19416').
0.1::trusts('32833','19416').
0.1::trusts('35259','19416').
0.271::trusts('35259','32834').
0.1::trusts('33996','32834').
0.1::trusts('32834','33996').

person('22006').
person('24175').
person('22039').
person('19701').
person('23180').
person('2746').
person('17027').
person('35805').
person('32833').
person('30130').
person('35259').
person('34193').
person('19416').
person('25908').
person('32834').
person('33996').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22006')).
query(buys('24175')).
query(buys('22039')).
query(buys('19701')).
query(buys('23180')).
query(buys('2746')).
query(buys('17027')).
query(buys('35805')).
query(buys('32833')).
query(buys('30130')).
query(buys('35259')).
query(buys('34193')).
query(buys('19416')).
query(buys('25908')).
query(buys('32834')).
query(buys('33996')).
