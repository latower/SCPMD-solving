10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('2931','1446').
0.40951::trusts('15198','1446').
0.7458134171671::trusts('1424','1446').
0.40951::trusts('15200','1446').
0.1::trusts('1440','1446').
0.40951::trusts('27289','1446').
0.6513215599::trusts('1519','1446').
0.5217031::trusts('1446','15198').
0.1::trusts('2931','1424').
0.849905364703001::trusts('1446','1424').
0.40951::trusts('15200','1424').
0.1::trusts('15201','1424').
0.40951::trusts('2931','15200').
0.271::trusts('1446','15200').
0.1::trusts('1424','15200').
0.271::trusts('2931','1440').
0.1::trusts('1446','1440').
0.271::trusts('19813','1440').
0.19::trusts('19789','1440').
0.271::trusts('1446','27289').
0.717570463519::trusts('1446','1519').
0.40951::trusts('21666','1519').
0.1::trusts('1424','15201').
0.1::trusts('25128','15201').
0.40951::trusts('2931','19813').
0.3439::trusts('1440','19813').
0.19::trusts('2648','19813').
0.612579511::trusts('19812','19813').
0.271::trusts('1440','19789').
0.5217031::trusts('1519','21666').
0.1::trusts('2931','2648').
0.271::trusts('19813','2648').
0.1::trusts('19812','2648').
0.1::trusts('1440','19812').
0.3439::trusts('2648','19812').
0.7458134171671::trusts('19813','19812').
0.6513215599::trusts('5621','25128').
0.1::trusts('775','25128').
0.1::trusts('15201','25128').
0.1::trusts('15200','47730').
0.1::trusts('21666','48242').

person('1446').
person('2931').
person('15198').
person('1424').
person('15200').
person('1440').
person('27289').
person('1519').
person('15201').
person('19813').
person('19789').
person('21666').
person('2648').
person('19812').
person('25128').
person('5621').
person('775').
person('47730').
person('48242').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1446')).
query(buys('2931')).
query(buys('15198')).
query(buys('1424')).
query(buys('15200')).
query(buys('1440')).
query(buys('27289')).
query(buys('1519')).
query(buys('15201')).
query(buys('19813')).
query(buys('19789')).
query(buys('21666')).
query(buys('2648')).
query(buys('19812')).
query(buys('25128')).
query(buys('5621')).
query(buys('775')).
query(buys('47730')).
query(buys('48242')).