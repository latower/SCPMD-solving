10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('23767','11044').
0.1::trusts('39621','11044').
0.40951::trusts('11044','23767').
0.1::trusts('39619','39621').
0.19::trusts('19327','39619').
0.1::trusts('46229','39619').
0.1::trusts('39621','39619').
0.1::trusts('39619','19327').
0.1::trusts('46229','19327').
0.1::trusts('19325','19327').
0.1::trusts('39619','46229').
0.1::trusts('19327','46229').
0.1::trusts('24838','19328').
0.19::trusts('19325','19328').
0.1::trusts('19328','24838').
0.271::trusts('19328','19325').
0.19::trusts('19327','19325').
0.19::trusts('53305','19325').
0.56953279::trusts('34392','19325').
0.1::trusts('19325','53305').
0.1::trusts('53306','53305').
0.468559::trusts('19325','34392').
0.1::trusts('53306','17806').
0.1::trusts('53305','53306').
0.1::trusts('29562','53306').
0.1::trusts('53307','53306').
0.19::trusts('53306','29562').
0.1::trusts('53306','53307').
0.1::trusts('19328','23544').
0.1::trusts('7420','42038').
0.1::trusts('19324','42038').
0.1::trusts('60696','42038').
0.1::trusts('42038','7420').
0.1::trusts('19327','19324').
0.1::trusts('19325','19324').
0.19::trusts('42038','19324').
0.19::trusts('42038','60696').
0.1::trusts('19328','44734').
0.1::trusts('34392','44734').
0.1::trusts('19328','25408').
0.1::trusts('19325','46230').
0.19::trusts('23767','51485').

person('11044').
person('23767').
person('39621').
person('39619').
person('19327').
person('46229').
person('19328').
person('24838').
person('19325').
person('53305').
person('34392').
person('17806').
person('53306').
person('29562').
person('53307').
person('23544').
person('42038').
person('7420').
person('19324').
person('60696').
person('44734').
person('25408').
person('46230').
person('51485').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11044')).
query(buys('23767')).
query(buys('39621')).
query(buys('39619')).
query(buys('19327')).
query(buys('46229')).
query(buys('19328')).
query(buys('24838')).
query(buys('19325')).
query(buys('53305')).
query(buys('34392')).
query(buys('17806')).
query(buys('53306')).
query(buys('29562')).
query(buys('53307')).
query(buys('23544')).
query(buys('42038')).
query(buys('7420')).
query(buys('19324')).
query(buys('60696')).
query(buys('44734')).
query(buys('25408')).
query(buys('46230')).
query(buys('51485')).
