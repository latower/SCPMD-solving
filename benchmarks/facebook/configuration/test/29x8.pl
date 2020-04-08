10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('21340','21133').
0.3439::trusts('21711','21133').
0.19::trusts('21133','21340').
0.890581010868488::trusts('2528','21340').
0.1::trusts('21345','21340').
0.271::trusts('21711','21340').
0.468559::trusts('18091','21340').
0.1::trusts('26325','21340').
0.19::trusts('21133','21711').
0.19::trusts('2528','21711').
0.19::trusts('21340','21711').
0.612579511::trusts('21340','2528').
0.19::trusts('21345','2528').
0.271::trusts('4053','2528').
0.1::trusts('21711','2528').
0.1::trusts('18091','2528').
0.1::trusts('10857','2528').
0.1::trusts('10844','2528').
0.1::trusts('2538','2528').
0.19::trusts('44251','2528').
0.1::trusts('34318','2528').
0.271::trusts('44250','2528').
0.271::trusts('2528','21345').
0.1::trusts('13855','21345').
0.271::trusts('21340','21345').
0.3439::trusts('2528','4053').
0.19::trusts('10857','4053').
0.1::trusts('2528','18091').
0.19::trusts('10075','18091').
0.468559::trusts('21340','18091').
0.19::trusts('26325','18091').
0.19::trusts('2528','10857').
0.19::trusts('4053','10857').
0.1::trusts('2528','10844').
0.1::trusts('10860','10844').
0.271::trusts('2528','2538').
0.1::trusts('21340','2538').
0.1::trusts('2528','44251').
0.1::trusts('19945','44251').
0.1::trusts('2528','34318').
0.19::trusts('16631','34318').
0.1::trusts('44251','34318').
0.19::trusts('2528','44250').
0.1::trusts('13855','6995').
0.1::trusts('6995','13855').
0.1::trusts('21345','13855').
0.1::trusts('28699','13855').
0.1::trusts('13855','28699').
0.19::trusts('18091','10075').
0.1::trusts('19635','10075').
0.19::trusts('34318','16631').
0.1::trusts('21340','26325').
0.19::trusts('18091','26325').
0.1::trusts('10844','10860').
0.1::trusts('10075','19636').
0.19::trusts('2528','29623').
0.1::trusts('2528','44253').
0.1::trusts('44251','54430').
0.1::trusts('18091','42626').
0.1::trusts('16631','16629').
0.1::trusts('10075','46991').

person('21133').
person('21340').
person('21711').
person('2528').
person('21345').
person('4053').
person('18091').
person('10857').
person('10844').
person('2538').
person('44251').
person('34318').
person('44250').
person('6995').
person('13855').
person('28699').
person('10075').
person('19635').
person('16631').
person('26325').
person('10860').
person('19945').
person('19636').
person('29623').
person('44253').
person('54430').
person('42626').
person('16629').
person('46991').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21133')).
query(buys('21340')).
query(buys('21711')).
query(buys('2528')).
query(buys('21345')).
query(buys('4053')).
query(buys('18091')).
query(buys('10857')).
query(buys('10844')).
query(buys('2538')).
query(buys('44251')).
query(buys('34318')).
query(buys('44250')).
query(buys('6995')).
query(buys('13855')).
query(buys('28699')).
query(buys('10075')).
query(buys('19635')).
query(buys('16631')).
query(buys('26325')).
query(buys('10860')).
query(buys('19945')).
query(buys('19636')).
query(buys('29623')).
query(buys('44253')).
query(buys('54430')).
query(buys('42626')).
query(buys('16629')).
query(buys('46991')).