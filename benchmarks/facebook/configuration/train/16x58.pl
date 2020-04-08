10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('33075','18586').
0.19::trusts('2082','18586').
0.7458134171671::trusts('35667','18586').
0.3439::trusts('16752','18586').
0.1::trusts('6234','18586').
0.40951::trusts('18586','33075').
0.3439::trusts('18586','2082').
0.271::trusts('16752','2082').
0.1::trusts('1409','2082').
0.68618940391::trusts('18586','35667').
0.271::trusts('35470','35667').
0.1::trusts('37381','35667').
0.1::trusts('35580','35667').
0.40951::trusts('18586','6234').
0.19::trusts('2082','1409').
0.1::trusts('2091','1409').
0.271::trusts('35667','35470').
0.1::trusts('35667','37381').
0.1::trusts('35667','35580').
0.19::trusts('35544','35580').
0.19::trusts('35580','35544').
0.19::trusts('1409','2091').
0.1::trusts('33075','18803').
0.1::trusts('2082','27210').
0.19::trusts('16752','27333').
0.1::trusts('16752','37799').

person('18586').
person('33075').
person('2082').
person('35667').
person('16752').
person('6234').
person('1409').
person('35470').
person('37381').
person('35580').
person('35544').
person('2091').
person('18803').
person('27210').
person('27333').
person('37799').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18586')).
query(buys('33075')).
query(buys('2082')).
query(buys('35667')).
query(buys('16752')).
query(buys('6234')).
query(buys('1409')).
query(buys('35470')).
query(buys('37381')).
query(buys('35580')).
query(buys('35544')).
query(buys('2091')).
query(buys('18803')).
query(buys('27210')).
query(buys('27333')).
query(buys('37799')).
