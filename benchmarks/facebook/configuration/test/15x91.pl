10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('46103','45741').
0.1::trusts('56480','45741').
0.19::trusts('45741','46103').
0.1::trusts('50767','46103').
0.1::trusts('45741','56480').
0.1::trusts('56550','56480').
0.1::trusts('62796','56480').
0.1::trusts('46103','50767').
0.271::trusts('58893','50767').
0.1::trusts('56480','56550').
0.271::trusts('47087','56550').
0.1::trusts('44013','56550').
0.19::trusts('56550','47087').
0.19::trusts('50767','58893').
0.1::trusts('36086','58893').
0.1::trusts('58895','58893').
0.1::trusts('46103','50714').
0.1::trusts('46103','35830').
0.1::trusts('45741','55387').
0.1::trusts('46103','62084').

person('45741').
person('46103').
person('56480').
person('50767').
person('56550').
person('62796').
person('47087').
person('44013').
person('58893').
person('50714').
person('36086').
person('58895').
person('35830').
person('55387').
person('62084').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('45741')).
query(buys('46103')).
query(buys('56480')).
query(buys('50767')).
query(buys('56550')).
query(buys('62796')).
query(buys('47087')).
query(buys('44013')).
query(buys('58893')).
query(buys('50714')).
query(buys('36086')).
query(buys('58895')).
query(buys('35830')).
query(buys('55387')).
query(buys('62084')).
