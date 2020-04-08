10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.612579511::trusts('43649','7690').
0.40951::trusts('7690','43649').
0.271::trusts('22492','43649').
0.6513215599::trusts('52219','43649').
0.3439::trusts('51748','43649').
0.271::trusts('52224','43649').
0.1::trusts('54228','23371').
0.1::trusts('23371','54228').
0.1::trusts('22795','54228').
0.1::trusts('22492','54228').
0.1::trusts('52225','54228').
0.1::trusts('60621','54228').
0.19::trusts('54228','22795').
0.19::trusts('52222','22795').
0.1::trusts('52221','22795').
0.1::trusts('55411','22795').
0.1::trusts('22795','52222').
0.19::trusts('22492','52222').
0.19::trusts('52221','52222').
0.19::trusts('57485','52222').
0.1::trusts('43649','52222').
0.1::trusts('52225','52222').
0.1::trusts('22795','52221').
0.1::trusts('52219','52221').
0.271::trusts('52220','52221').
0.271::trusts('53736','52221').
0.19::trusts('52225','52221').
0.1::trusts('22795','55411').
0.1::trusts('54228','52225').
0.1::trusts('52222','52225').
0.19::trusts('52221','52225').
0.1::trusts('21726','52225').
0.1::trusts('57922','52225').
0.1::trusts('54228','60621').
0.1::trusts('52222','57485').
0.1::trusts('57673','57485').
0.56953279::trusts('22492','52219').
0.1::trusts('52221','52219').
0.56953279::trusts('43649','52219').
0.1::trusts('26837','52219').
0.1::trusts('22492','52220').
0.19::trusts('52222','52220').
0.1::trusts('52221','52220').
0.1::trusts('53736','52220').
0.56953279::trusts('52221','53736').
0.19::trusts('60610','53736').
0.19::trusts('52220','53736').
0.19::trusts('60036','53736').
0.1::trusts('52220','60610').
0.19::trusts('53736','60610').
0.1::trusts('57485','57673').
0.40951::trusts('43649','51748').
0.1::trusts('22492','52224').
0.468559::trusts('43649','52224').
0.1::trusts('52219','52224').
0.19::trusts('52219','26837').
0.19::trusts('53736','60036').
0.1::trusts('52225','21726').
0.1::trusts('22795','57922').
0.1::trusts('52222','57922').
0.19::trusts('52225','57922').
0.1::trusts('54228','45221').
0.3439::trusts('22492','52327').
0.19::trusts('22492','9495').
0.19::trusts('60610','60611').

person('7690').
person('43649').
person('23371').
person('54228').
person('22795').
person('52222').
person('52221').
person('55411').
person('22492').
person('52225').
person('60621').
person('57485').
person('52219').
person('52220').
person('53736').
person('60610').
person('57673').
person('51748').
person('52224').
person('26837').
person('60036').
person('21726').
person('57922').
person('45221').
person('52327').
person('9495').
person('60611').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7690')).
query(buys('43649')).
query(buys('23371')).
query(buys('54228')).
query(buys('22795')).
query(buys('52222')).
query(buys('52221')).
query(buys('55411')).
query(buys('22492')).
query(buys('52225')).
query(buys('60621')).
query(buys('57485')).
query(buys('52219')).
query(buys('52220')).
query(buys('53736')).
query(buys('60610')).
query(buys('57673')).
query(buys('51748')).
query(buys('52224')).
query(buys('26837')).
query(buys('60036')).
query(buys('21726')).
query(buys('57922')).
query(buys('45221')).
query(buys('52327')).
query(buys('9495')).
query(buys('60611')).