10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('9648','16918').
0.1::trusts('16918','9648').
0.19::trusts('2673','9648').
0.1::trusts('26113','14721').
0.1::trusts('19936','14721').
0.77123207545039::trusts('13576','14721').
0.1::trusts('14720','14721').
0.3439::trusts('19936','26113').
0.19::trusts('6822','26113').
0.19::trusts('15877','26113').
0.3439::trusts('49089','26113').
0.1::trusts('44395','26113').
0.1::trusts('43328','26113').
0.271::trusts('26113','19936').
0.794108867905351::trusts('14721','13576').
0.5217031::trusts('6821','13576').
0.19::trusts('6822','2673').
0.1::trusts('6821','2673').
0.3439::trusts('9648','2673').
0.68618940391::trusts('27412','2673').
0.1::trusts('2673','6822').
0.40951::trusts('26113','6822').
0.3439::trusts('6821','6822').
0.271::trusts('41113','6822').
0.19::trusts('2673','6821').
0.40951::trusts('6822','6821').
0.271::trusts('13576','6821').
0.1::trusts('40586','6821').
0.19::trusts('40588','6821').
0.612579511::trusts('2673','27412').
0.271::trusts('26113','15877').
0.1::trusts('26113','49089').
0.19::trusts('26113','43328').
0.271::trusts('6822','41113').
0.271::trusts('6821','40586').
0.19::trusts('6821','40588').
0.1::trusts('41113','41110').
0.1::trusts('27412','16917').
0.1::trusts('14721','18393').

person('16918').
person('9648').
person('14721').
person('26113').
person('19936').
person('13576').
person('14720').
person('2673').
person('6822').
person('6821').
person('27412').
person('15877').
person('49089').
person('44395').
person('43328').
person('41113').
person('40586').
person('40588').
person('41110').
person('16917').
person('18393').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16918')).
query(buys('9648')).
query(buys('14721')).
query(buys('26113')).
query(buys('19936')).
query(buys('13576')).
query(buys('14720')).
query(buys('2673')).
query(buys('6822')).
query(buys('6821')).
query(buys('27412')).
query(buys('15877')).
query(buys('49089')).
query(buys('44395')).
query(buys('43328')).
query(buys('41113')).
query(buys('40586')).
query(buys('40588')).
query(buys('41110')).
query(buys('16917')).
query(buys('18393')).
