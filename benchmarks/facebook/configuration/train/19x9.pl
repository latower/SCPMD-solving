10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('25703','19337').
0.19::trusts('19337','25703').
0.1::trusts('17941','25703').
0.1::trusts('25704','25703').
0.19::trusts('25598','25703').
0.1::trusts('23647','25703').
0.1::trusts('25703','17941').
0.1::trusts('46246','17941').
0.1::trusts('29249','25704').
0.19::trusts('25703','25704').
0.19::trusts('25703','25598').
0.271::trusts('43883','25598').
0.271::trusts('25597','25598').
0.3439::trusts('25703','23647').
0.1::trusts('17941','46246').
0.1::trusts('8003','46246').
0.271::trusts('25598','43883').
0.5217031::trusts('33539','43883').
0.3439::trusts('25598','25597').
0.19::trusts('59885','25597').
0.40951::trusts('43883','33539').
0.1::trusts('25597','59885').
0.1::trusts('45729','37890').
0.19::trusts('37890','45729').
0.19::trusts('46246','8003').
0.1::trusts('25704','59845').
0.19::trusts('37890','60694').
0.1::trusts('25598','45078').
0.19::trusts('37890','45078').
0.1::trusts('45729','14859').

person('19337').
person('25703').
person('17941').
person('25704').
person('25598').
person('23647').
person('46246').
person('29249').
person('43883').
person('25597').
person('33539').
person('59885').
person('37890').
person('45729').
person('8003').
person('59845').
person('60694').
person('45078').
person('14859').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19337')).
query(buys('25703')).
query(buys('17941')).
query(buys('25704')).
query(buys('25598')).
query(buys('23647')).
query(buys('46246')).
query(buys('29249')).
query(buys('43883')).
query(buys('25597')).
query(buys('33539')).
query(buys('59885')).
query(buys('37890')).
query(buys('45729')).
query(buys('8003')).
query(buys('59845')).
query(buys('60694')).
query(buys('45078')).
query(buys('14859')).
