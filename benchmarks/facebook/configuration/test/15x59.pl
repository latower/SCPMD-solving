10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('21052','16385').
0.1::trusts('16370','16385').
0.1::trusts('16385','21052').
0.19::trusts('16385','16370').
0.40951::trusts('45010','16370').
0.1::trusts('50868','16370').
0.1::trusts('30848','16370').
0.19::trusts('16370','45010').
0.19::trusts('50868','45010').
0.1::trusts('60793','45010').
0.19::trusts('45010','50868').
0.19::trusts('59308','50868').
0.1::trusts('45010','60793').
0.271::trusts('54355','60793').
0.1::trusts('50868','59308').
0.271::trusts('60793','54355').
0.19::trusts('54354','54355').
0.794108867905351::trusts('54356','54355').
0.1::trusts('21052','39758').
0.19::trusts('59308','59309').
0.3439::trusts('54355','54354').
0.6513215599::trusts('54356','54354').
0.3439::trusts('54355','54356').
0.19::trusts('54354','54356').
0.1::trusts('16385','44343').
0.1::trusts('45010','45277').

person('16385').
person('21052').
person('16370').
person('45010').
person('50868').
person('30848').
person('60793').
person('59308').
person('54355').
person('39758').
person('59309').
person('54354').
person('54356').
person('44343').
person('45277').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16385')).
query(buys('21052')).
query(buys('16370')).
query(buys('45010')).
query(buys('50868')).
query(buys('30848')).
query(buys('60793')).
query(buys('59308')).
query(buys('54355')).
query(buys('39758')).
query(buys('59309')).
query(buys('54354')).
query(buys('54356')).
query(buys('44343')).
query(buys('45277')).
