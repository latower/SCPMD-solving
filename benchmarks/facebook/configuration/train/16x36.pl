10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('16313','19163').
0.5217031::trusts('33220','19163').
0.911370618803475::trusts('35875','19163').
0.1::trusts('39606','19163').
0.1::trusts('35878','19163').
0.612579511::trusts('19163','33220').
0.19::trusts('34711','33220').
0.271::trusts('37160','33220').
0.965663161797075::trusts('19163','35875').
0.1::trusts('20505','35875').
0.19::trusts('19163','39606').
0.1::trusts('16313','39606').
0.1::trusts('35941','39606').
0.1::trusts('19163','35878').
0.1::trusts('35875','35878').
0.1::trusts('20505','35448').
0.271::trusts('35450','35448').
0.19::trusts('26471','20505').
0.1::trusts('35875','20505').
0.19::trusts('35984','20505').
0.40951::trusts('35448','35450').
0.1::trusts('40750','26471').
0.1::trusts('20505','26471').
0.1::trusts('26471','40750').
0.271::trusts('33220','37160').
0.1::trusts('16313','35774').

person('19163').
person('16313').
person('33220').
person('35875').
person('39606').
person('35878').
person('35448').
person('20505').
person('35450').
person('26471').
person('40750').
person('34711').
person('37160').
person('35984').
person('35941').
person('35774').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19163')).
query(buys('16313')).
query(buys('33220')).
query(buys('35875')).
query(buys('39606')).
query(buys('35878')).
query(buys('35448')).
query(buys('20505')).
query(buys('35450')).
query(buys('26471')).
query(buys('40750')).
query(buys('34711')).
query(buys('37160')).
query(buys('35984')).
query(buys('35941')).
query(buys('35774')).
