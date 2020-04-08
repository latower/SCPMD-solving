10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('7456','32122').
0.19::trusts('48059','32122').
0.5217031::trusts('32122','48059').
0.271::trusts('51721','50758').
0.19::trusts('46668','50758').
0.1::trusts('7461','50758').
0.1::trusts('36081','50758').
0.1::trusts('7463','50758').
0.271::trusts('30783','50758').
0.3439::trusts('50758','51721').
0.19::trusts('30783','51721').
0.271::trusts('59106','51721').
0.19::trusts('50758','46668').
0.1::trusts('50758','7461').
0.40951::trusts('7456','7461').
0.19::trusts('8528','7461').
0.271::trusts('7463','7461').
0.1::trusts('14424','7461').
0.1::trusts('7463','36081').
0.68618940391::trusts('50758','7463').
0.271::trusts('7461','7463').
0.1::trusts('36081','7463').
0.1::trusts('45404','7463').
0.40951::trusts('50758','30783').
0.271::trusts('51721','30783').
0.3439::trusts('51721','59106').
0.19::trusts('45404','45278').
0.1::trusts('45278','45404').
0.1::trusts('7463','45404').
0.3439::trusts('14410','14411').
0.468559::trusts('7456','14410').
0.19::trusts('14411','14410').
0.468559::trusts('14412','14410').
0.935389181107733::trusts('14410','14412').
0.1::trusts('7456','8528').
0.1::trusts('7461','8528').
0.1::trusts('7456','29258').
0.1::trusts('7465','22200').
0.1::trusts('3041','22200').
0.468559::trusts('7456','7465').
0.1::trusts('8528','7465').
0.1::trusts('22200','7465').
0.19::trusts('5389','7465').
0.1::trusts('7465','5389').
0.1::trusts('7456','19817').

person('32122').
person('7456').
person('48059').
person('50758').
person('51721').
person('46668').
person('7461').
person('36081').
person('7463').
person('30783').
person('59106').
person('45278').
person('45404').
person('14411').
person('14410').
person('14412').
person('8528').
person('14424').
person('29258').
person('22200').
person('7465').
person('3041').
person('5389').
person('19817').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('32122')).
query(buys('7456')).
query(buys('48059')).
query(buys('50758')).
query(buys('51721')).
query(buys('46668')).
query(buys('7461')).
query(buys('36081')).
query(buys('7463')).
query(buys('30783')).
query(buys('59106')).
query(buys('45278')).
query(buys('45404')).
query(buys('14411')).
query(buys('14410')).
query(buys('14412')).
query(buys('8528')).
query(buys('14424')).
query(buys('29258')).
query(buys('22200')).
query(buys('7465')).
query(buys('3041')).
query(buys('5389')).
query(buys('19817')).