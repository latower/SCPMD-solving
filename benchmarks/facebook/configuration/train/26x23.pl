10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('33378','22297').
0.1::trusts('5168','22297').
0.40951::trusts('15323','22297').
0.1::trusts('27366','22297').
0.19::trusts('26948','22297').
0.1::trusts('25273','22297').
0.1::trusts('41343','22297').
0.1::trusts('35408','22297').
0.1::trusts('41681','22297').
0.56953279::trusts('35794','22297').
0.3439::trusts('13491','22297').
0.1::trusts('15323','33378').
0.1::trusts('27366','33378').
0.271::trusts('22297','5168').
0.1::trusts('33378','5168').
0.19::trusts('27366','5168').
0.1::trusts('57571','5168').
0.3439::trusts('34421','5168').
0.40951::trusts('22297','15323').
0.612579511::trusts('33378','15323').
0.1::trusts('12324','15323').
0.1::trusts('29584','15323').
0.19::trusts('34421','15323').
0.1::trusts('22297','27366').
0.1::trusts('33378','27366').
0.1::trusts('5168','27366').
0.68618940391::trusts('29584','27366').
0.56953279::trusts('34421','27366').
0.19::trusts('22297','26948').
0.19::trusts('50053','26948').
0.19::trusts('22297','25273').
0.271::trusts('22297','41343').
0.1::trusts('22297','35408').
0.271::trusts('35794','35408').
0.40951::trusts('22297','35794').
0.40951::trusts('35408','35794').
0.1::trusts('41685','35794').
0.3439::trusts('22297','13491').
0.1::trusts('5168','57571').
0.19::trusts('33846','57571').
0.40951::trusts('5168','34421').
0.1::trusts('15323','34421').
0.5217031::trusts('27366','34421').
0.612579511::trusts('29584','34421').
0.1::trusts('15323','12324').
0.1::trusts('5168','29584').
0.1::trusts('15323','29584').
0.717570463519::trusts('27366','29584').
0.612579511::trusts('34421','29584').
0.1::trusts('22297','50053').
0.19::trusts('35794','41685').
0.19::trusts('22297','27969').
0.1::trusts('22297','35793').
0.1::trusts('35408','35793').
0.1::trusts('57571','33846').
0.1::trusts('22297','19047').
0.1::trusts('22297','35778').
0.1::trusts('22297','17919').
0.1::trusts('33378','33840').
0.1::trusts('33846','40503').

person('22297').
person('33378').
person('5168').
person('15323').
person('27366').
person('26948').
person('25273').
person('41343').
person('35408').
person('41681').
person('35794').
person('13491').
person('57571').
person('34421').
person('12324').
person('29584').
person('50053').
person('41685').
person('27969').
person('35793').
person('33846').
person('19047').
person('35778').
person('17919').
person('33840').
person('40503').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22297')).
query(buys('33378')).
query(buys('5168')).
query(buys('15323')).
query(buys('27366')).
query(buys('26948')).
query(buys('25273')).
query(buys('41343')).
query(buys('35408')).
query(buys('41681')).
query(buys('35794')).
query(buys('13491')).
query(buys('57571')).
query(buys('34421')).
query(buys('12324')).
query(buys('29584')).
query(buys('50053')).
query(buys('41685')).
query(buys('27969')).
query(buys('35793')).
query(buys('33846')).
query(buys('19047')).
query(buys('35778')).
query(buys('17919')).
query(buys('33840')).
query(buys('40503')).
