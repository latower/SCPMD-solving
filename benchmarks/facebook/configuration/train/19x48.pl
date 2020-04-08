10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('59064','63017').
0.1::trusts('63017','59064').
0.1::trusts('21438','59064').
0.271::trusts('33872','6698').
0.1::trusts('44826','6698').
0.1::trusts('44817','6698').
0.1::trusts('35888','6698').
0.1::trusts('6698','33872').
0.19::trusts('44812','33872').
0.1::trusts('44826','33872').
0.19::trusts('21438','33872').
0.1::trusts('44810','33872').
0.19::trusts('33872','44826').
0.271::trusts('10253','44826').
0.1::trusts('21438','44826').
0.1::trusts('44821','44826').
0.1::trusts('6698','35888').
0.271::trusts('33872','44812').
0.19::trusts('44821','44812').
0.40951::trusts('33872','21438').
0.1::trusts('59064','21438').
0.1::trusts('33872','44810').
0.5217031::trusts('52807','10253').
0.19::trusts('44826','10253').
0.271::trusts('10253','52807').
0.1::trusts('46072','52807').
0.1::trusts('52807','46072').
0.1::trusts('44812','44821').
0.1::trusts('62855','44821').
0.19::trusts('44821','62855').
0.1::trusts('6698','44814').
0.1::trusts('10253','44814').
0.1::trusts('44821','56495').
0.1::trusts('44821','44816').
0.1::trusts('44821','59138').

person('63017').
person('59064').
person('6698').
person('33872').
person('44826').
person('44817').
person('35888').
person('44812').
person('21438').
person('44810').
person('10253').
person('52807').
person('46072').
person('44821').
person('62855').
person('44814').
person('56495').
person('44816').
person('59138').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('63017')).
query(buys('59064')).
query(buys('6698')).
query(buys('33872')).
query(buys('44826')).
query(buys('44817')).
query(buys('35888')).
query(buys('44812')).
query(buys('21438')).
query(buys('44810')).
query(buys('10253')).
query(buys('52807')).
query(buys('46072')).
query(buys('44821')).
query(buys('62855')).
query(buys('44814')).
query(buys('56495')).
query(buys('44816')).
query(buys('59138')).
