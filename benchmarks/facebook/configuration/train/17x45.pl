10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('25390','8757').
0.1::trusts('28012','8757').
0.1::trusts('29561','8757').
0.1::trusts('35531','8757').
0.1::trusts('8757','25390').
0.271::trusts('28435','25390').
0.1::trusts('8757','29561').
0.19::trusts('8757','35531').
0.3439::trusts('25390','28435').
0.271::trusts('17506','28435').
0.40951::trusts('30633','28435').
0.1::trusts('25390','17506').
0.271::trusts('28435','17506').
0.1::trusts('30633','17506').
0.1::trusts('24836','17506').
0.40951::trusts('35895','17506').
0.1::trusts('9340','30633').
0.40951::trusts('28435','30633').
0.40951::trusts('25301','30633').
0.1::trusts('17506','24836').
0.1::trusts('30633','24836').
0.40951::trusts('17506','35895').
0.19::trusts('46975','35895').
0.1::trusts('30633','22116').
0.19::trusts('8757','9340').
0.1::trusts('30633','9340').
0.1::trusts('25301','9340').
0.19::trusts('30633','25301').
0.19::trusts('8757','24193').
0.19::trusts('35895','46975').
0.1::trusts('8757','16086').
0.1::trusts('8757','2369').

person('8757').
person('25390').
person('28012').
person('29561').
person('35531').
person('28435').
person('17506').
person('30633').
person('24836').
person('35895').
person('22116').
person('9340').
person('25301').
person('24193').
person('46975').
person('16086').
person('2369').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8757')).
query(buys('25390')).
query(buys('28012')).
query(buys('29561')).
query(buys('35531')).
query(buys('28435')).
query(buys('17506')).
query(buys('30633')).
query(buys('24836')).
query(buys('35895')).
query(buys('22116')).
query(buys('9340')).
query(buys('25301')).
query(buys('24193')).
query(buys('46975')).
query(buys('16086')).
query(buys('2369')).
