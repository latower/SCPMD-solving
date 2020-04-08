10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('21597','12630').
0.1::trusts('21603','12630').
0.3439::trusts('12630','21597').
0.1::trusts('23409','21597').
0.1::trusts('12630','21603').
0.1::trusts('21601','21603').
0.1::trusts('23409','12113').
0.271::trusts('23834','12113').
0.1::trusts('19970','12113').
0.1::trusts('12113','23409').
0.1::trusts('21597','23409').
0.19::trusts('33521','23409').
0.19::trusts('12113','23834').
0.3439::trusts('19970','23834').
0.1::trusts('12113','19970').
0.271::trusts('23834','19970').
0.19::trusts('9380','19970').
0.1::trusts('23206','19970').
0.271::trusts('24271','19970').
0.3439::trusts('23409','33521').
0.1::trusts('19970','23206').
0.1::trusts('12113','24271').
0.1::trusts('23834','24271').
0.40951::trusts('19970','24271').
0.19::trusts('9380','24271').
0.1::trusts('9380','2503').
0.19::trusts('9380','34348').
0.1::trusts('34355','34339').
0.1::trusts('9380','34355').
0.1::trusts('63570','34355').
0.1::trusts('9380','50483').

person('12630').
person('21597').
person('21603').
person('12113').
person('23409').
person('23834').
person('19970').
person('33521').
person('9380').
person('23206').
person('24271').
person('21601').
person('2503').
person('34348').
person('34339').
person('34355').
person('63570').
person('50483').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12630')).
query(buys('21597')).
query(buys('21603')).
query(buys('12113')).
query(buys('23409')).
query(buys('23834')).
query(buys('19970')).
query(buys('33521')).
query(buys('9380')).
query(buys('23206')).
query(buys('24271')).
query(buys('21601')).
query(buys('2503')).
query(buys('34348')).
query(buys('34339')).
query(buys('34355')).
query(buys('63570')).
query(buys('50483')).
