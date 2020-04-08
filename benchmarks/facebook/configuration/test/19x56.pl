10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('11606','8398').
0.19::trusts('25313','8398').
0.794108867905351::trusts('25314','8398').
0.1::trusts('25366','8398').
0.40951::trusts('13490','8398').
0.271::trusts('25369','8398').
0.468559::trusts('8398','11606').
0.1::trusts('3632','11606').
0.19::trusts('25313','11606').
0.1::trusts('25497','11606').
0.1::trusts('11802','11606').
0.19::trusts('8398','25313').
0.271::trusts('11606','25313').
0.6513215599::trusts('25314','25313').
0.19::trusts('8398','25366').
0.3439::trusts('8398','13490').
0.40951::trusts('25314','13490').
0.40951::trusts('8398','25369').
0.1::trusts('11606','3632').
0.1::trusts('12154','3632').
0.40951::trusts('7897','3632').
0.1::trusts('18652','3632').
0.1::trusts('18642','3632').
0.19::trusts('3632','12154').
0.1::trusts('18642','12154').
0.56953279::trusts('3632','7897').
0.1::trusts('3632','18652').
0.1::trusts('20871','18652').
0.1::trusts('18652','20871').
0.1::trusts('8398','25358').
0.19::trusts('8398','25364').
0.19::trusts('41550','25364').
0.1::trusts('25364','41550').
0.19::trusts('8398','25319').
0.1::trusts('25314','25319').

person('8398').
person('11606').
person('25313').
person('25314').
person('25366').
person('13490').
person('25369').
person('3632').
person('25497').
person('11802').
person('12154').
person('7897').
person('18652').
person('18642').
person('20871').
person('25358').
person('25364').
person('41550').
person('25319').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8398')).
query(buys('11606')).
query(buys('25313')).
query(buys('25314')).
query(buys('25366')).
query(buys('13490')).
query(buys('25369')).
query(buys('3632')).
query(buys('25497')).
query(buys('11802')).
query(buys('12154')).
query(buys('7897')).
query(buys('18652')).
query(buys('18642')).
query(buys('20871')).
query(buys('25358')).
query(buys('25364')).
query(buys('41550')).
query(buys('25319')).
