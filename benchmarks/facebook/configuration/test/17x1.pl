10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.7458134171671::trusts('20211','15892').
0.1::trusts('23181','15892').
0.1::trusts('24098','15892').
0.271::trusts('55606','15892').
0.1::trusts('8034','15892').
0.1::trusts('23994','15892').
0.468559::trusts('55685','15892').
0.1::trusts('57816','15892').
0.56953279::trusts('15892','20211').
0.1::trusts('23181','20211').
0.1::trusts('47457','20211').
0.19::trusts('15892','23181').
0.19::trusts('20211','23181').
0.3439::trusts('15892','55606').
0.1::trusts('15892','8034').
0.1::trusts('3446','8034').
0.271::trusts('8048','8034').
0.1::trusts('15892','23994').
0.40951::trusts('15892','55685').
0.1::trusts('15892','57816').
0.19::trusts('20211','47457').
0.1::trusts('31496','47457').
0.19::trusts('8034','3446').
0.3439::trusts('8034','8048').
0.1::trusts('16785','8048').
0.1::trusts('54627','8048').
0.19::trusts('47457','31496').
0.19::trusts('8048','16785').
0.1::trusts('8048','54627').
0.1::trusts('20211','50962').
0.1::trusts('8034','37505').

person('15892').
person('20211').
person('23181').
person('24098').
person('55606').
person('8034').
person('23994').
person('55685').
person('57816').
person('47457').
person('3446').
person('8048').
person('31496').
person('16785').
person('54627').
person('50962').
person('37505').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15892')).
query(buys('20211')).
query(buys('23181')).
query(buys('24098')).
query(buys('55606')).
query(buys('8034')).
query(buys('23994')).
query(buys('55685')).
query(buys('57816')).
query(buys('47457')).
query(buys('3446')).
query(buys('8048')).
query(buys('31496')).
query(buys('16785')).
query(buys('54627')).
query(buys('50962')).
query(buys('37505')).
