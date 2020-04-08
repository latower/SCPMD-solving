10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('10606','7405').
0.1::trusts('853','7405').
0.271::trusts('15510','7405').
0.5217031::trusts('21765','7405').
0.1::trusts('17853','7405').
0.1::trusts('10606','853').
0.1::trusts('7405','853').
0.5217031::trusts('15510','853').
0.1::trusts('19358','853').
0.1::trusts('35527','853').
0.3439::trusts('21272','853').
0.1::trusts('28219','853').
0.40951::trusts('7405','15510').
0.612579511::trusts('853','15510').
0.1::trusts('21765','15510').
0.1::trusts('19358','15510').
0.1::trusts('23605','15510').
0.3439::trusts('10606','21765').
0.271::trusts('7405','21765').
0.1::trusts('15510','21765').
0.1::trusts('7405','17853').
0.1::trusts('21765','17853').
0.1::trusts('15510','19358').
0.1::trusts('853','35527').
0.1::trusts('35383','35527').
0.1::trusts('10606','21272').
0.1::trusts('21285','21272').
0.1::trusts('853','21272').
0.1::trusts('28219','21272').
0.19::trusts('21285','28219').
0.19::trusts('853','28219').
0.1::trusts('15510','23605').
0.1::trusts('21765','23605').
0.1::trusts('35527','35383').
0.1::trusts('52844','35383').
0.1::trusts('35383','52844').
0.40951::trusts('7405','23607').

person('7405').
person('10606').
person('853').
person('15510').
person('21765').
person('17853').
person('19358').
person('35527').
person('21272').
person('28219').
person('23605').
person('35383').
person('21285').
person('52844').
person('23607').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7405')).
query(buys('10606')).
query(buys('853')).
query(buys('15510')).
query(buys('21765')).
query(buys('17853')).
query(buys('19358')).
query(buys('35527')).
query(buys('21272')).
query(buys('28219')).
query(buys('23605')).
query(buys('35383')).
query(buys('21285')).
query(buys('52844')).
query(buys('23607')).
