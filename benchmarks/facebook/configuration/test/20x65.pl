10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('45045','13643').
0.19::trusts('13643','45045').
0.1::trusts('47008','45045').
0.271::trusts('45347','45045').
0.1::trusts('7706','45045').
0.1::trusts('10244','12668').
0.1::trusts('17198','12668').
0.3439::trusts('9746','10244').
0.1::trusts('12668','10244').
0.1::trusts('50812','10244').
0.1::trusts('12668','17198').
0.1::trusts('45347','17198').
0.3439::trusts('45045','47008').
0.1::trusts('7376','47008').
0.1::trusts('52164','47008').
0.40951::trusts('51396','47008').
0.5217031::trusts('45045','45347').
0.19::trusts('17198','45347').
0.1::trusts('34057','45347').
0.1::trusts('13643','7706').
0.19::trusts('45045','7706').
0.271::trusts('45045','7376').
0.1::trusts('47008','7376').
0.1::trusts('41297','7376').
0.1::trusts('7376','41297').
0.19::trusts('24506','47234').
0.1::trusts('47234','24506').
0.271::trusts('52164','24506').
0.1::trusts('51396','24506').
0.3439::trusts('24506','52164').
0.1::trusts('45045','51396').
0.271::trusts('47008','51396').
0.1::trusts('52164','51396').
0.40951::trusts('12668','12159').
0.1::trusts('17198','12159').
0.40951::trusts('9746','10229').
0.1::trusts('45045','43611').

person('13643').
person('45045').
person('12668').
person('10244').
person('17198').
person('47008').
person('45347').
person('7706').
person('7376').
person('41297').
person('9746').
person('50812').
person('47234').
person('24506').
person('52164').
person('51396').
person('34057').
person('12159').
person('10229').
person('43611').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13643')).
query(buys('45045')).
query(buys('12668')).
query(buys('10244')).
query(buys('17198')).
query(buys('47008')).
query(buys('45347')).
query(buys('7706')).
query(buys('7376')).
query(buys('41297')).
query(buys('9746')).
query(buys('50812')).
query(buys('47234')).
query(buys('24506')).
query(buys('52164')).
query(buys('51396')).
query(buys('34057')).
query(buys('12159')).
query(buys('10229')).
query(buys('43611')).
