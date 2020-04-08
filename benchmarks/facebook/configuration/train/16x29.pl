10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('39618','18568').
0.19::trusts('59889','18568').
0.19::trusts('63880','18568').
0.1::trusts('18568','39618').
0.1::trusts('23054','39618').
0.271::trusts('18568','59889').
0.1::trusts('30379','59889').
0.1::trusts('33389','59889').
0.1::trusts('33388','59889').
0.1::trusts('39618','23054').
0.19::trusts('30379','53958').
0.19::trusts('53958','30379').
0.1::trusts('58647','30379').
0.1::trusts('59889','30379').
0.1::trusts('30379','58647').
0.1::trusts('59889','33389').
0.1::trusts('59889','33388').
0.1::trusts('33389','33388').
0.1::trusts('59889','59890').
0.1::trusts('18568','56220').
0.1::trusts('18568','50195').
0.1::trusts('39618','39620').
0.19::trusts('18568','58267').
0.1::trusts('18568','58266').
0.1::trusts('58267','58266').

person('18568').
person('39618').
person('59889').
person('63880').
person('23054').
person('53958').
person('30379').
person('58647').
person('33389').
person('33388').
person('59890').
person('56220').
person('50195').
person('39620').
person('58267').
person('58266').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18568')).
query(buys('39618')).
query(buys('59889')).
query(buys('63880')).
query(buys('23054')).
query(buys('53958')).
query(buys('30379')).
query(buys('58647')).
query(buys('33389')).
query(buys('33388')).
query(buys('59890')).
query(buys('56220')).
query(buys('50195')).
query(buys('39620')).
query(buys('58267')).
query(buys('58266')).
