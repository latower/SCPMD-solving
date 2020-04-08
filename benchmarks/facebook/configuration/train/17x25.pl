10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.56953279::trusts('48522','38551').
0.19::trusts('15455','38551').
0.19::trusts('2429','38551').
0.1::trusts('38752','38551').
0.56953279::trusts('38551','48522').
0.1::trusts('40562','48522').
0.1::trusts('5938','48522').
0.271::trusts('38551','15455').
0.19::trusts('45591','15455').
0.1::trusts('2429','15455').
0.5217031::trusts('45590','15455').
0.1::trusts('38551','2429').
0.1::trusts('15455','2429').
0.19::trusts('48522','40562').
0.1::trusts('48522','5938').
0.1::trusts('15455','45591').
0.3439::trusts('15455','45590').
0.3439::trusts('40562','40561').
0.19::trusts('48522','42376').
0.1::trusts('12090','12093').
0.1::trusts('38551','14861').
0.1::trusts('12093','14861').
0.271::trusts('48522','48523').
0.1::trusts('48522','45639').
0.1::trusts('45639','56159').

person('38551').
person('48522').
person('15455').
person('2429').
person('38752').
person('40562').
person('5938').
person('45591').
person('45590').
person('40561').
person('42376').
person('12093').
person('12090').
person('14861').
person('48523').
person('45639').
person('56159').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('38551')).
query(buys('48522')).
query(buys('15455')).
query(buys('2429')).
query(buys('38752')).
query(buys('40562')).
query(buys('5938')).
query(buys('45591')).
query(buys('45590')).
query(buys('40561')).
query(buys('42376')).
query(buys('12093')).
query(buys('12090')).
query(buys('14861')).
query(buys('48523')).
query(buys('45639')).
query(buys('56159')).
