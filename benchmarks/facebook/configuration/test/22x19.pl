10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('27889','17469').
0.19::trusts('5195','17469').
0.271::trusts('10357','17469').
0.1::trusts('17469','27889').
0.1::trusts('26315','27889').
0.40951::trusts('26315','6806').
0.19::trusts('30686','6806').
0.40951::trusts('30693','6806').
0.40951::trusts('30690','6806').
0.271::trusts('23756','6806').
0.19::trusts('30691','6806').
0.40951::trusts('6806','26315').
0.1::trusts('14475','26315').
0.1::trusts('27889','26315').
0.1::trusts('22690','26315').
0.40951::trusts('6806','30686').
0.1::trusts('49738','30686').
0.3439::trusts('6806','30693').
0.3439::trusts('6806','30690').
0.271::trusts('6806','23756').
0.19::trusts('6806','30691').
0.271::trusts('30693','30691').
0.1::trusts('30687','30691').
0.1::trusts('30688','30691').
0.1::trusts('26315','14475').
0.1::trusts('26315','22690').
0.1::trusts('30686','49738').
0.1::trusts('30693','30687').
0.19::trusts('6806','22730').
0.1::trusts('26315','22730').
0.1::trusts('14475','30001').
0.1::trusts('26315','29034').
0.468559::trusts('6806','21577').
0.1::trusts('6806','6817').
0.19::trusts('30688','59989').

person('17469').
person('27889').
person('5195').
person('10357').
person('6806').
person('26315').
person('30686').
person('30693').
person('30690').
person('23756').
person('30691').
person('14475').
person('22690').
person('49738').
person('30687').
person('30688').
person('22730').
person('30001').
person('29034').
person('21577').
person('6817').
person('59989').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17469')).
query(buys('27889')).
query(buys('5195')).
query(buys('10357')).
query(buys('6806')).
query(buys('26315')).
query(buys('30686')).
query(buys('30693')).
query(buys('30690')).
query(buys('23756')).
query(buys('30691')).
query(buys('14475')).
query(buys('22690')).
query(buys('49738')).
query(buys('30687')).
query(buys('30688')).
query(buys('22730')).
query(buys('30001')).
query(buys('29034')).
query(buys('21577')).
query(buys('6817')).
query(buys('59989')).