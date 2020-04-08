10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.56953279::trusts('17688','7020').
0.1::trusts('17692','7020').
0.1::trusts('14747','7020').
0.1::trusts('17702','7020').
0.1::trusts('17222','7020').
0.19::trusts('17686','7020').
0.40951::trusts('7020','17688').
0.1::trusts('10584','17688').
0.19::trusts('9511','17688').
0.1::trusts('17692','17688').
0.1::trusts('10795','17688').
0.19::trusts('17688','17692').
0.1::trusts('15985','14747').
0.1::trusts('7020','17702').
0.40951::trusts('17686','17702').
0.1::trusts('7020','17222').
0.19::trusts('18523','17686').
0.19::trusts('7020','17686').
0.271::trusts('17702','17686').
0.271::trusts('17688','10584').
0.271::trusts('17688','9511').
0.1::trusts('7020','10795').
0.1::trusts('17692','10795').
0.1::trusts('51130','10795').
0.1::trusts('7020','15985').
0.1::trusts('15985','29654').
0.1::trusts('56829','29654').
0.19::trusts('29654','56829').
0.1::trusts('10795','51130').
0.1::trusts('14747','15983').
0.19::trusts('7020','17694').
0.1::trusts('17688','17694').
0.1::trusts('17692','17694').

person('7020').
person('17688').
person('17692').
person('14747').
person('17702').
person('17222').
person('17686').
person('10584').
person('9511').
person('10795').
person('15985').
person('18523').
person('29654').
person('56829').
person('51130').
person('15983').
person('17694').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7020')).
query(buys('17688')).
query(buys('17692')).
query(buys('14747')).
query(buys('17702')).
query(buys('17222')).
query(buys('17686')).
query(buys('10584')).
query(buys('9511')).
query(buys('10795')).
query(buys('15985')).
query(buys('18523')).
query(buys('29654')).
query(buys('56829')).
query(buys('51130')).
query(buys('15983')).
query(buys('17694')).
