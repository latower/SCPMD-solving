10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5990','7331').
0.1::trusts('7331','5990').
0.1::trusts('22809','5990').
0.468559::trusts('22809','2206').
0.19::trusts('45368','2206').
0.7458134171671::trusts('21837','2206').
0.612579511::trusts('6465','2206').
0.40951::trusts('15012','2206').
0.3439::trusts('37817','2206').
0.1::trusts('19836','2206').
0.56953279::trusts('2206','22809').
0.1::trusts('5990','22809').
0.19::trusts('21837','22809').
0.1::trusts('15012','22809').
0.1::trusts('37817','22809').
0.1::trusts('19836','22809').
0.19::trusts('2206','45368').
0.7458134171671::trusts('2206','21837').
0.19::trusts('22809','21837').
0.1::trusts('19836','21837').
0.68618940391::trusts('2206','6465').
0.3439::trusts('2206','15012').
0.1::trusts('22809','15012').
0.612579511::trusts('2206','37817').
0.1::trusts('22809','37817').
0.19::trusts('2206','19836').
0.271::trusts('43195','19836').
0.1::trusts('22809','19836').
0.3439::trusts('19838','19836').
0.19::trusts('21837','19836').
0.1::trusts('21531','19836').
0.1::trusts('47960','19836').
0.1::trusts('43195','8337').
0.1::trusts('18805','8337').
0.1::trusts('8337','43195').
0.3439::trusts('19836','43195').
0.1::trusts('47960','43195').
0.1::trusts('40784','43195').
0.1::trusts('43195','40784').
0.271::trusts('19836','19838').
0.271::trusts('48419','19838').
0.19::trusts('19838','48419').
0.1::trusts('19836','48419').
0.19::trusts('7331','25881').
0.1::trusts('15012','30439').
0.1::trusts('8337','13997').

person('7331').
person('5990').
person('2206').
person('22809').
person('45368').
person('21837').
person('6465').
person('15012').
person('37817').
person('19836').
person('8337').
person('43195').
person('18805').
person('47960').
person('40784').
person('19838').
person('48419').
person('21531').
person('25881').
person('30439').
person('13997').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7331')).
query(buys('5990')).
query(buys('2206')).
query(buys('22809')).
query(buys('45368')).
query(buys('21837')).
query(buys('6465')).
query(buys('15012')).
query(buys('37817')).
query(buys('19836')).
query(buys('8337')).
query(buys('43195')).
query(buys('18805')).
query(buys('47960')).
query(buys('40784')).
query(buys('19838')).
query(buys('48419')).
query(buys('21531')).
query(buys('25881')).
query(buys('30439')).
query(buys('13997')).
