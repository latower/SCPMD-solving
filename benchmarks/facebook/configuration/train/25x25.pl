10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('1831','155').
0.1::trusts('4696','155').
0.271::trusts('18352','155').
0.833228183003334::trusts('4713','155').
0.3439::trusts('15432','155').
0.271::trusts('53901','155').
0.1::trusts('60318','155').
0.1::trusts('39127','155').
0.40951::trusts('155','1831').
0.1::trusts('8977','1831').
0.1::trusts('38581','1831').
0.1::trusts('155','18352').
0.271::trusts('4713','18352').
0.1::trusts('39769','18352').
0.969096845617367::trusts('155','4713').
0.1::trusts('4696','4713').
0.40951::trusts('18352','4713').
0.1::trusts('39127','4713').
0.19::trusts('25089','4713').
0.1::trusts('53699','4713').
0.68618940391::trusts('155','15432').
0.3439::trusts('155','53901').
0.19::trusts('155','39127').
0.1::trusts('4713','39127').
0.1::trusts('18352','39769').
0.19::trusts('155','16467').
0.40951::trusts('4696','16467').
0.1::trusts('14622','16467').
0.19::trusts('8580','16467').
0.19::trusts('16467','14622').
0.1::trusts('4713','25089').
0.68618940391::trusts('50961','25089').
0.271::trusts('53699','25089').
0.1::trusts('53698','25089').
0.1::trusts('4713','53699').
0.271::trusts('50961','53699').
0.271::trusts('25089','53699').
0.612579511::trusts('25089','50961').
0.1::trusts('53699','50961').
0.1::trusts('25089','53698').
0.19::trusts('155','20402').
0.19::trusts('4696','23689').
0.19::trusts('41111','23689').
0.271::trusts('4696','13884').
0.1::trusts('18352','6123').
0.1::trusts('4713','6123').
0.1::trusts('18352','19377').

person('155').
person('1831').
person('4696').
person('18352').
person('4713').
person('15432').
person('53901').
person('60318').
person('39127').
person('8977').
person('38581').
person('39769').
person('16467').
person('14622').
person('8580').
person('25089').
person('53699').
person('50961').
person('53698').
person('20402').
person('23689').
person('41111').
person('13884').
person('6123').
person('19377').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('155')).
query(buys('1831')).
query(buys('4696')).
query(buys('18352')).
query(buys('4713')).
query(buys('15432')).
query(buys('53901')).
query(buys('60318')).
query(buys('39127')).
query(buys('8977')).
query(buys('38581')).
query(buys('39769')).
query(buys('16467')).
query(buys('14622')).
query(buys('8580')).
query(buys('25089')).
query(buys('53699')).
query(buys('50961')).
query(buys('53698')).
query(buys('20402')).
query(buys('23689')).
query(buys('41111')).
query(buys('13884')).
query(buys('6123')).
query(buys('19377')).