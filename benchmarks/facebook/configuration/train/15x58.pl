10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('3059','2583').
0.19::trusts('18438','2583').
0.1::trusts('7657','2583').
0.19::trusts('18954','2583').
0.1::trusts('18959','2583').
0.40951::trusts('2583','3059').
0.1::trusts('18438','3059').
0.19::trusts('2583','18438').
0.1::trusts('3059','18438').
0.19::trusts('52096','18438').
0.1::trusts('7684','18438').
0.1::trusts('3059','7657').
0.271::trusts('2583','18954').
0.1::trusts('2583','18959').
0.271::trusts('18438','52096').
0.1::trusts('18438','7684').
0.1::trusts('18958','7684').
0.19::trusts('47986','7684').
0.19::trusts('18438','18958').
0.1::trusts('7684','18958').
0.1::trusts('8002','18958').
0.1::trusts('7684','47986').
0.1::trusts('38838','26560').
0.1::trusts('8002','26560').
0.19::trusts('26560','38838').
0.1::trusts('26468','38838').
0.1::trusts('26560','8002').
0.1::trusts('18958','8002').
0.1::trusts('38838','26468').
0.1::trusts('18438','14780').

person('2583').
person('3059').
person('18438').
person('7657').
person('18954').
person('18959').
person('52096').
person('7684').
person('18958').
person('47986').
person('26560').
person('38838').
person('8002').
person('26468').
person('14780').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2583')).
query(buys('3059')).
query(buys('18438')).
query(buys('7657')).
query(buys('18954')).
query(buys('18959')).
query(buys('52096')).
query(buys('7684')).
query(buys('18958')).
query(buys('47986')).
query(buys('26560')).
query(buys('38838')).
query(buys('8002')).
query(buys('26468')).
query(buys('14780')).
