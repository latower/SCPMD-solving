10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('4206','3129').
0.19::trusts('3364','3129').
0.19::trusts('3129','4206').
0.1::trusts('2986','4206').
0.271::trusts('6288','4206').
0.1::trusts('10528','4206').
0.1::trusts('2313','3169').
0.1::trusts('5603','3169').
0.19::trusts('10537','3169').
0.19::trusts('10546','3169').
0.1::trusts('17539','3169').
0.1::trusts('3169','2313').
0.19::trusts('5603','2313').
0.1::trusts('11696','2313').
0.271::trusts('3169','5603').
0.271::trusts('6288','5603').
0.1::trusts('35674','5603').
0.19::trusts('3169','10537').
0.1::trusts('6288','10537').
0.1::trusts('10544','10537').
0.1::trusts('3169','17539').
0.271::trusts('17802','17539').
0.1::trusts('3132','2986').
0.1::trusts('6288','2986').
0.40951::trusts('4206','2986').
0.1::trusts('2986','3132').
0.1::trusts('3169','6288').
0.1::trusts('2986','6288').
0.271::trusts('5603','6288').
0.5217031::trusts('4206','6288').
0.271::trusts('10537','6288').
0.271::trusts('10546','6288').
0.1::trusts('2313','11696').
0.1::trusts('5603','35674').
0.1::trusts('44714','35674').
0.1::trusts('35674','44714').
0.1::trusts('3132','7447').
0.19::trusts('10537','10544').
0.1::trusts('17539','17802').
0.1::trusts('3129','2889').
0.1::trusts('17539','3547').
0.1::trusts('2986','60138').

person('3129').
person('4206').
person('3364').
person('3169').
person('2313').
person('5603').
person('10537').
person('10546').
person('17539').
person('2986').
person('3132').
person('6288').
person('11696').
person('35674').
person('44714').
person('7447').
person('10528').
person('10544').
person('17802').
person('2889').
person('3547').
person('60138').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3129')).
query(buys('4206')).
query(buys('3364')).
query(buys('3169')).
query(buys('2313')).
query(buys('5603')).
query(buys('10537')).
query(buys('10546')).
query(buys('17539')).
query(buys('2986')).
query(buys('3132')).
query(buys('6288')).
query(buys('11696')).
query(buys('35674')).
query(buys('44714')).
query(buys('7447')).
query(buys('10528')).
query(buys('10544')).
query(buys('17802')).
query(buys('2889')).
query(buys('3547')).
query(buys('60138')).