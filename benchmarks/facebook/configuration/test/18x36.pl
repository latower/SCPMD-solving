10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('31673','23593').
0.19::trusts('23587','23593').
0.1::trusts('23593','31673').
0.1::trusts('31668','31673').
0.3439::trusts('23593','23587').
0.19::trusts('2325','23587').
0.1::trusts('31673','23587').
0.1::trusts('36930','23587').
0.1::trusts('37074','23587').
0.1::trusts('32195','15332').
0.1::trusts('23587','2325').
0.56953279::trusts('12912','2325').
0.56953279::trusts('2325','12912').
0.1::trusts('21230','12912').
0.1::trusts('25746','35037').
0.1::trusts('35037','25746').
0.19::trusts('31673','25746').
0.19::trusts('44978','25746').
0.3439::trusts('25746','44978').
0.468559::trusts('31673','31668').
0.3439::trusts('31673','37073').
0.1::trusts('31673','31920').
0.1::trusts('41884','31920').
0.1::trusts('15332','32191').
0.1::trusts('2325','32191').

person('23593').
person('31673').
person('23587').
person('15332').
person('32195').
person('2325').
person('12912').
person('35037').
person('25746').
person('44978').
person('31668').
person('36930').
person('37074').
person('21230').
person('37073').
person('31920').
person('41884').
person('32191').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23593')).
query(buys('31673')).
query(buys('23587')).
query(buys('15332')).
query(buys('32195')).
query(buys('2325')).
query(buys('12912')).
query(buys('35037')).
query(buys('25746')).
query(buys('44978')).
query(buys('31668')).
query(buys('36930')).
query(buys('37074')).
query(buys('21230')).
query(buys('37073')).
query(buys('31920')).
query(buys('41884')).
query(buys('32191')).
