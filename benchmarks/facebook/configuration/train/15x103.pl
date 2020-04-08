10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('17900','17889').
0.40951::trusts('21709','17889').
0.1::trusts('21707','17889').
0.1::trusts('17889','21709').
0.1::trusts('21708','21709').
0.271::trusts('58227','21709').
0.271::trusts('57015','21709').
0.271::trusts('40229','21709').
0.19::trusts('17889','21707').
0.19::trusts('21709','21708').
0.271::trusts('21709','58227').
0.3439::trusts('21709','57015').
0.271::trusts('21709','40229').
0.1::trusts('21707','4125').
0.19::trusts('21709','14080').
0.1::trusts('22637','14080').
0.19::trusts('21709','22637').
0.271::trusts('57016','22637').
0.1::trusts('40229','8309').
0.1::trusts('40229','44486').
0.1::trusts('40229','46400').

person('17889').
person('17900').
person('21709').
person('21707').
person('21708').
person('58227').
person('57015').
person('40229').
person('4125').
person('14080').
person('22637').
person('57016').
person('8309').
person('44486').
person('46400').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17889')).
query(buys('17900')).
query(buys('21709')).
query(buys('21707')).
query(buys('21708')).
query(buys('58227')).
query(buys('57015')).
query(buys('40229')).
query(buys('4125')).
query(buys('14080')).
query(buys('22637')).
query(buys('57016')).
query(buys('8309')).
query(buys('44486')).
query(buys('46400')).
