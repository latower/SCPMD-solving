10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('52150','14160').
0.271::trusts('39894','14160').
0.19::trusts('56207','14160').
0.1::trusts('52148','14160').
0.271::trusts('14160','52150').
0.40951::trusts('14160','39894').
0.1::trusts('7361','39894').
0.19::trusts('54926','39894').
0.19::trusts('41499','56207').
0.19::trusts('7361','56207').
0.19::trusts('14160','52148').
0.271::trusts('14160','7361').
0.1::trusts('39894','7361').
0.1::trusts('56207','7361').
0.19::trusts('45392','7361').
0.1::trusts('39894','54926').
0.1::trusts('56207','41499').
0.1::trusts('41499','15917').
0.1::trusts('7361','45392').
0.3439::trusts('5630','45392').
0.271::trusts('45392','5630').
0.1::trusts('10643','5630').
0.1::trusts('9552','5630').
0.1::trusts('46023','46022').
0.1::trusts('41499','46023').
0.1::trusts('46023','55257').
0.1::trusts('14160','26330').
0.1::trusts('14160','59540').

person('14160').
person('52150').
person('39894').
person('56207').
person('52148').
person('7361').
person('54926').
person('41499').
person('15917').
person('45392').
person('5630').
person('46022').
person('46023').
person('10643').
person('9552').
person('55257').
person('26330').
person('59540').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('14160')).
query(buys('52150')).
query(buys('39894')).
query(buys('56207')).
query(buys('52148')).
query(buys('7361')).
query(buys('54926')).
query(buys('41499')).
query(buys('15917')).
query(buys('45392')).
query(buys('5630')).
query(buys('46022')).
query(buys('46023')).
query(buys('10643')).
query(buys('9552')).
query(buys('55257')).
query(buys('26330')).
query(buys('59540')).
