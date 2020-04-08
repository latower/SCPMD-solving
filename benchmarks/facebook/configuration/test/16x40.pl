10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.849905364703001::trusts('19133','9196').
0.271::trusts('2331','9196').
0.271::trusts('7305','9196').
0.1::trusts('19717','9196').
0.1::trusts('55004','9196').
0.468559::trusts('9196','19133').
0.1::trusts('2370','19133').
0.3439::trusts('9196','2331').
0.1::trusts('9293','2331').
0.1::trusts('39896','2331').
0.19::trusts('9196','19717').
0.19::trusts('19133','2370').
0.19::trusts('9293','2370').
0.19::trusts('32446','2370').
0.1::trusts('19133','9293').
0.1::trusts('2331','9293').
0.77123207545039::trusts('23706','9293').
0.1::trusts('8604','9293').
0.1::trusts('2370','32446').
0.56953279::trusts('9293','23706').
0.1::trusts('9293','8604').
0.1::trusts('9196','9205').
0.19::trusts('19133','38724').
0.19::trusts('19133','49677').
0.1::trusts('19133','10166').

person('9196').
person('19133').
person('2331').
person('7305').
person('19717').
person('55004').
person('2370').
person('9293').
person('39896').
person('32446').
person('23706').
person('8604').
person('9205').
person('38724').
person('49677').
person('10166').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9196')).
query(buys('19133')).
query(buys('2331')).
query(buys('7305')).
query(buys('19717')).
query(buys('55004')).
query(buys('2370')).
query(buys('9293')).
query(buys('39896')).
query(buys('32446')).
query(buys('23706')).
query(buys('8604')).
query(buys('9205')).
query(buys('38724')).
query(buys('49677')).
query(buys('10166')).
