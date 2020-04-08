10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('6675','4846').
0.1::trusts('19616','4846').
0.1::trusts('1668','4846').
0.1::trusts('29505','4846').
0.271::trusts('44839','4846').
0.1::trusts('6901','4846').
0.1::trusts('52440','4846').
0.271::trusts('4846','6675').
0.1::trusts('39584','6675').
0.833228183003334::trusts('39585','6675').
0.3439::trusts('4846','19616').
0.40951::trusts('46102','19616').
0.1::trusts('39633','19616').
0.1::trusts('4846','1668').
0.271::trusts('51592','1668').
0.1::trusts('4846','29505').
0.40951::trusts('4846','44839').
0.19::trusts('4846','6901').
0.1::trusts('54513','6901').
0.19::trusts('4846','52440').
0.271::trusts('25622','52440').
0.40951::trusts('6675','39584').
0.1::trusts('39585','39584').
0.68618940391::trusts('6675','39585').
0.833228183003334::trusts('59111','39585').
0.901522909781639::trusts('39585','59111').
0.3439::trusts('19616','46102').
0.1::trusts('19616','39633').
0.1::trusts('57122','39633').
0.1::trusts('1668','10048').
0.19::trusts('52440','25622').
0.1::trusts('39633','57122').
0.1::trusts('56240','57122').
0.3439::trusts('1668','51592').
0.1::trusts('6901','54513').
0.1::trusts('63855','56240').
0.1::trusts('56240','63855').
0.1::trusts('59111','50133').
0.1::trusts('6675','27650').

person('4846').
person('6675').
person('19616').
person('1668').
person('29505').
person('44839').
person('6901').
person('52440').
person('39584').
person('39585').
person('59111').
person('46102').
person('39633').
person('10048').
person('25622').
person('57122').
person('51592').
person('54513').
person('56240').
person('63855').
person('50133').
person('27650').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4846')).
query(buys('6675')).
query(buys('19616')).
query(buys('1668')).
query(buys('29505')).
query(buys('44839')).
query(buys('6901')).
query(buys('52440')).
query(buys('39584')).
query(buys('39585')).
query(buys('59111')).
query(buys('46102')).
query(buys('39633')).
query(buys('10048')).
query(buys('25622')).
query(buys('57122')).
query(buys('51592')).
query(buys('54513')).
query(buys('56240')).
query(buys('63855')).
query(buys('50133')).
query(buys('27650')).