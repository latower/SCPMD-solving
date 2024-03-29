10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('17708','44238').
0.271::trusts('25052','44238').
0.271::trusts('52949','44238').
0.19::trusts('27878','44238').
0.3439::trusts('18824','44238').
0.1::trusts('48899','44238').
0.19::trusts('44238','17708').
0.40951::trusts('23663','17708').
0.1::trusts('54965','17708').
0.40951::trusts('44238','25052').
0.40951::trusts('25053','25052').
0.40951::trusts('17974','25052').
0.19::trusts('36454','25052').
0.271::trusts('44238','52949').
0.56953279::trusts('24676','52949').
0.271::trusts('47762','52949').
0.271::trusts('44238','27878').
0.1::trusts('13897','27878').
0.468559::trusts('44238','18824').
0.1::trusts('44238','48899').
0.3439::trusts('17708','23663').
0.1::trusts('17708','54965').
0.3439::trusts('13897','22629').
0.19::trusts('22629','13897').
0.1::trusts('27878','13897').
0.468559::trusts('25052','25053').
0.271::trusts('17974','25053').
0.1::trusts('7994','25053').
0.468559::trusts('25052','17974').
0.3439::trusts('25052','36454').
0.1::trusts('10778','36454').
0.1::trusts('25053','7994').
0.40951::trusts('24665','24676').
0.5217031::trusts('52949','24676').
0.271::trusts('24676','24665').
0.19::trusts('47762','24665').
0.271::trusts('24665','47762').
0.19::trusts('52949','47762').
0.1::trusts('36454','10778').

person('44238').
person('17708').
person('25052').
person('52949').
person('27878').
person('18824').
person('48899').
person('23663').
person('54965').
person('22629').
person('13897').
person('25053').
person('17974').
person('36454').
person('7994').
person('24676').
person('24665').
person('47762').
person('10778').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('44238')).
query(buys('17708')).
query(buys('25052')).
query(buys('52949')).
query(buys('27878')).
query(buys('18824')).
query(buys('48899')).
query(buys('23663')).
query(buys('54965')).
query(buys('22629')).
query(buys('13897')).
query(buys('25053')).
query(buys('17974')).
query(buys('36454')).
query(buys('7994')).
query(buys('24676')).
query(buys('24665')).
query(buys('47762')).
query(buys('10778')).
