10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('15062','25882').
0.1::trusts('40247','25882').
0.271::trusts('22162','25882').
0.1::trusts('25882','15062').
0.3439::trusts('22162','15062').
0.1::trusts('25882','40247').
0.271::trusts('25882','22162').
0.271::trusts('15062','22162').
0.1::trusts('49842','22162').
0.1::trusts('25882','18888').
0.19::trusts('18899','18888').
0.271::trusts('50987','18888').
0.1::trusts('37910','18888').
0.1::trusts('13662','18888').
0.19::trusts('26029','18888').
0.19::trusts('18888','18899').
0.1::trusts('37910','18899').
0.271::trusts('32263','18899').
0.3439::trusts('18888','50987').
0.1::trusts('25882','37910').
0.271::trusts('18888','37910').
0.1::trusts('48328','13662').
0.19::trusts('18888','26029').
0.1::trusts('18899','32263').
0.1::trusts('13662','48328').
0.19::trusts('22162','49842').
0.1::trusts('10646','49842').
0.1::trusts('49842','10646').
0.19::trusts('25882','37907').
0.19::trusts('18899','37907').
0.1::trusts('32263','37907').

person('25882').
person('15062').
person('40247').
person('22162').
person('18888').
person('18899').
person('50987').
person('37910').
person('13662').
person('26029').
person('32263').
person('48328').
person('49842').
person('10646').
person('37907').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25882')).
query(buys('15062')).
query(buys('40247')).
query(buys('22162')).
query(buys('18888')).
query(buys('18899')).
query(buys('50987')).
query(buys('37910')).
query(buys('13662')).
query(buys('26029')).
query(buys('32263')).
query(buys('48328')).
query(buys('49842')).
query(buys('10646')).
query(buys('37907')).
