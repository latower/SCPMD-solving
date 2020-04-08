10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5015','3103').
0.849905364703001::trusts('4576','3103').
0.19::trusts('5011','3103').
0.1::trusts('1689','3103').
0.1::trusts('3111','3103').
0.1::trusts('704','3103').
0.1::trusts('3103','5015').
0.1::trusts('5391','5015').
0.1::trusts('12351','5015').
0.1::trusts('50902','5015').
0.7458134171671::trusts('3103','4576').
0.1::trusts('3103','1689').
0.1::trusts('3111','1689').
0.612579511::trusts('3110','1689').
0.1::trusts('3103','3111').
0.1::trusts('1689','3111').
0.19::trusts('704','3111').
0.1::trusts('5015','5391').
0.1::trusts('5015','12351').
0.1::trusts('50902','12351').
0.1::trusts('12351','50902').
0.40951::trusts('1689','3110').
0.1::trusts('12351','58522').
0.1::trusts('59600','58522').
0.1::trusts('704','4103').
0.1::trusts('3111','305').
0.1::trusts('704','305').
0.1::trusts('50902','31665').

person('3103').
person('5015').
person('4576').
person('5011').
person('1689').
person('3111').
person('704').
person('5391').
person('12351').
person('50902').
person('3110').
person('58522').
person('59600').
person('4103').
person('305').
person('31665').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3103')).
query(buys('5015')).
query(buys('4576')).
query(buys('5011')).
query(buys('1689')).
query(buys('3111')).
query(buys('704')).
query(buys('5391')).
query(buys('12351')).
query(buys('50902')).
query(buys('3110')).
query(buys('58522')).
query(buys('59600')).
query(buys('4103')).
query(buys('305')).
query(buys('31665')).
