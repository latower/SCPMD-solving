?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19910','17360').
0.40951::trusts('17360','19910').
0.1::trusts('8690','19910').
0.271::trusts('26386','19910').
0.468559::trusts('55980','19910').
0.19::trusts('30772','19910').
0.1::trusts('19910','8690').
0.68618940391::trusts('9206','8690').
0.1::trusts('39895','8690').
0.3439::trusts('9032','8690').
0.1::trusts('9209','8690').
0.5217031::trusts('26386','8690').
0.271::trusts('9969','8690').
0.19::trusts('9210','8690').
0.1::trusts('42572','8690').
0.19::trusts('19914','8690').
0.19::trusts('59510','8690').
0.1::trusts('53410','8690').
0.3439::trusts('19910','26386').
0.56953279::trusts('8690','26386').
0.19::trusts('9206','26386').
0.19::trusts('9032','26386').
0.1::trusts('55980','26386').
0.468559::trusts('19910','55980').
0.1::trusts('8690','55980').
0.1::trusts('9206','55980').
0.1::trusts('26386','55980').
0.19::trusts('17360','30772').
0.1::trusts('19910','30772').
0.901522909781639::trusts('8690','9206').
0.19::trusts('26386','9206').
0.1::trusts('55980','9206').
0.1::trusts('8690','39895').
0.1::trusts('5508','39895').
0.40951::trusts('9032','39895').
0.1::trusts('38712','39895').
0.5217031::trusts('8690','9032').
0.271::trusts('39895','9032').
0.19::trusts('26386','9032').
0.1::trusts('38712','9032').
0.1::trusts('48052','9032').
0.1::trusts('48479','9032').
0.1::trusts('9253','9032').
0.19::trusts('8690','9210').
0.19::trusts('55980','9210').
0.1::trusts('38712','9210').
0.1::trusts('8690','42572').
0.1::trusts('8690','19914').
0.271::trusts('8690','59510').
0.1::trusts('9032','59510').
0.1::trusts('19372','59510').
0.1::trusts('26386','59510').
0.1::trusts('18600','59510').
0.271::trusts('8690','53410').
0.1::trusts('39895','5508').
0.271::trusts('39895','38712').
0.19::trusts('9032','48052').
0.1::trusts('58054','48052').
0.1::trusts('19372','18600').
0.1::trusts('9209','18600').
0.1::trusts('26386','18600').
0.1::trusts('59510','18600').
0.1::trusts('48052','58054').
0.1::trusts('11977','58054').
0.1::trusts('58054','11977').
0.1::trusts('30772','49458').
0.1::trusts('19372','9733').
0.19::trusts('8690','34946').
0.1::trusts('9032','34946').
0.1::trusts('5508','27647').
0.1::trusts('19910','55981').
0.19::trusts('19910','55983').
0.1::trusts('8690','59805').
0.1::trusts('19910','55979').
0.1::trusts('19910','17628').
0.1::trusts('48052','31905').

person('17360').
person('19910').
person('8690').
person('26386').
person('55980').
person('30772').
person('9206').
person('39895').
person('9032').
person('9209').
person('9969').
person('9210').
person('42572').
person('19914').
person('59510').
person('53410').
person('5508').
person('38712').
person('48052').
person('48479').
person('9253').
person('19372').
person('18600').
person('58054').
person('11977').
person('49458').
person('9733').
person('34946').
person('27647').
person('55981').
person('55983').
person('59805').
person('55979').
person('17628').
person('31905').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('48479')).
query(buys('49458')).
query(buys('19914')).
query(buys('39895')).
query(buys('55980')).
query(buys('53410')).
query(buys('11977')).
query(buys('55979')).
query(buys('38712')).
query(buys('8690')).
query(buys('58054')).
query(buys('59805')).
query(buys('17628')).
query(buys('34946')).
query(buys('9032')).
query(buys('5508')).
query(buys('17360')).
query(buys('55981')).