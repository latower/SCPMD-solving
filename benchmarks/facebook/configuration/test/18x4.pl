10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('43061','33641').
0.3439::trusts('33636','33641').
0.1::trusts('43064','33641').
0.1::trusts('26753','43061').
0.6513215599::trusts('43019','43061').
0.1::trusts('43062','43061').
0.40951::trusts('33641','33636').
0.19::trusts('43015','33636').
0.19::trusts('33617','33636').
0.1::trusts('34189','33636').
0.1::trusts('43062','33636').
0.1::trusts('33617','43064').
0.40951::trusts('26753','53703').
0.1::trusts('57201','53703').
0.40951::trusts('53703','26753').
0.1::trusts('43061','26753').
0.1::trusts('53703','57201').
0.5217031::trusts('43062','33626').
0.1::trusts('56551','33626').
0.1::trusts('55824','33626').
0.56953279::trusts('33626','43062').
0.1::trusts('43061','43062').
0.271::trusts('33626','56551').
0.19::trusts('33626','55824').
0.468559::trusts('43061','43019').
0.1::trusts('43025','43019').
0.19::trusts('43019','43025').
0.271::trusts('33636','43015').
0.1::trusts('43064','34189').
0.19::trusts('33626','56552').
0.3439::trusts('56551','56552').
0.1::trusts('33617','40532').

person('33641').
person('43061').
person('33636').
person('43064').
person('53703').
person('26753').
person('57201').
person('33626').
person('43062').
person('56551').
person('55824').
person('43019').
person('43025').
person('43015').
person('33617').
person('34189').
person('56552').
person('40532').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('33641')).
query(buys('43061')).
query(buys('33636')).
query(buys('43064')).
query(buys('53703')).
query(buys('26753')).
query(buys('57201')).
query(buys('33626')).
query(buys('43062')).
query(buys('56551')).
query(buys('55824')).
query(buys('43019')).
query(buys('43025')).
query(buys('43015')).
query(buys('33617')).
query(buys('34189')).
query(buys('56552')).
query(buys('40532')).
