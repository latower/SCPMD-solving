10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21694','7694').
0.3439::trusts('15759','7694').
0.271::trusts('17558','7694').
0.1::trusts('15759','21694').
0.40951::trusts('7694','15759').
0.1::trusts('12867','15759').
0.1::trusts('3145','15759').
0.271::trusts('7694','17558').
0.271::trusts('10728','2623').
0.1::trusts('17998','2623').
0.1::trusts('2623','10728').
0.271::trusts('2623','17998').
0.1::trusts('2856','17998').
0.1::trusts('7694','12867').
0.1::trusts('21694','12867').
0.19::trusts('3145','12867').
0.1::trusts('15759','12867').
0.1::trusts('12859','12867').
0.1::trusts('23862','12867').
0.1::trusts('18811','12867').
0.1::trusts('12867','3145').
0.1::trusts('15759','3145').
0.1::trusts('2856','12859').
0.1::trusts('25306','12859').
0.1::trusts('12867','23862').
0.1::trusts('2856','23862').
0.1::trusts('10611','23862').
0.19::trusts('12867','18811').
0.1::trusts('12859','2856').
0.1::trusts('23862','2856').
0.1::trusts('17998','2856').
0.1::trusts('12859','25306').
0.1::trusts('12867','46834').
0.1::trusts('18811','3759').

person('7694').
person('21694').
person('15759').
person('17558').
person('2623').
person('10728').
person('17998').
person('12867').
person('3145').
person('12859').
person('23862').
person('18811').
person('2856').
person('25306').
person('10611').
person('46834').
person('3759').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7694')).
query(buys('21694')).
query(buys('15759')).
query(buys('17558')).
query(buys('2623')).
query(buys('10728')).
query(buys('17998')).
query(buys('12867')).
query(buys('3145')).
query(buys('12859')).
query(buys('23862')).
query(buys('18811')).
query(buys('2856')).
query(buys('25306')).
query(buys('10611')).
query(buys('46834')).
query(buys('3759')).
