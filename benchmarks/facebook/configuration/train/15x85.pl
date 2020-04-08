10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('45340','29594').
0.5217031::trusts('29594','45340').
0.1::trusts('45345','45340').
0.19::trusts('56535','45340').
0.1::trusts('45341','45340').
0.1::trusts('45340','45345').
0.3439::trusts('51300','45345').
0.271::trusts('45340','56535').
0.1::trusts('45340','45341').
0.19::trusts('45342','45341').
0.271::trusts('47758','18281').
0.1::trusts('51300','18281').
0.1::trusts('18281','47758').
0.19::trusts('51300','47758').
0.19::trusts('9599','47758').
0.19::trusts('45345','51300').
0.19::trusts('47758','51300').
0.19::trusts('29594','45342').
0.468559::trusts('45340','45342').
0.1::trusts('45341','45342').
0.1::trusts('56536','45342').
0.1::trusts('45340','56536').
0.1::trusts('45342','56536').
0.271::trusts('47758','9599').
0.19::trusts('29594','45337').
0.1::trusts('29594','62653').
0.1::trusts('29594','45348').
0.19::trusts('45337','45348').
0.19::trusts('29594','61802').

person('29594').
person('45340').
person('45345').
person('56535').
person('45341').
person('18281').
person('47758').
person('51300').
person('45342').
person('56536').
person('9599').
person('45337').
person('62653').
person('45348').
person('61802').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29594')).
query(buys('45340')).
query(buys('45345')).
query(buys('56535')).
query(buys('45341')).
query(buys('18281')).
query(buys('47758')).
query(buys('51300')).
query(buys('45342')).
query(buys('56536')).
query(buys('9599')).
query(buys('45337')).
query(buys('62653')).
query(buys('45348')).
query(buys('61802')).
