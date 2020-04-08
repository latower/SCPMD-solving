10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2238','10299').
0.1::trusts('10299','2238').
0.1::trusts('10300','2238').
0.19::trusts('10308','2238').
0.1::trusts('2240','2238').
0.19::trusts('10302','2238').
0.19::trusts('2238','10300').
0.1::trusts('2238','10308').
0.1::trusts('2244','10308').
0.271::trusts('23682','10308').
0.1::trusts('46385','10308').
0.271::trusts('2238','2240').
0.1::trusts('2238','10302').
0.1::trusts('2238','2244').
0.1::trusts('10308','2244').
0.1::trusts('40844','2244').
0.1::trusts('40845','2244').
0.1::trusts('23683','23682').
0.19::trusts('10308','46385').
0.1::trusts('10308','40844').
0.1::trusts('2244','40844').
0.1::trusts('2244','40845').
0.1::trusts('40844','40845').
0.1::trusts('17338','40845').
0.1::trusts('23682','23683').
0.1::trusts('57784','23683').
0.271::trusts('40845','17338').
0.1::trusts('10308','52663').

person('10299').
person('2238').
person('10300').
person('10308').
person('2240').
person('10302').
person('2244').
person('23682').
person('46385').
person('40844').
person('40845').
person('23683').
person('17338').
person('57784').
person('52663').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('10299')).
query(buys('2238')).
query(buys('10300')).
query(buys('10308')).
query(buys('2240')).
query(buys('10302')).
query(buys('2244')).
query(buys('23682')).
query(buys('46385')).
query(buys('40844')).
query(buys('40845')).
query(buys('23683')).
query(buys('17338')).
query(buys('57784')).
query(buys('52663')).
