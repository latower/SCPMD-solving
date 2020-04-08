10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('20342','16163').
0.19::trusts('19569','16163').
0.19::trusts('16163','20342').
0.1::trusts('8137','20342').
0.19::trusts('19569','20342').
0.19::trusts('16163','19569').
0.1::trusts('20342','19569').
0.271::trusts('19500','19569').
0.1::trusts('59780','19569').
0.1::trusts('20342','8137').
0.19::trusts('26341','8137').
0.271::trusts('8137','26341').
0.1::trusts('8137','25545').
0.1::trusts('19404','25545').
0.1::trusts('20342','19404').
0.1::trusts('25545','19404').
0.1::trusts('5103','19404').
0.40951::trusts('19569','19500').
0.1::trusts('20889','19500').
0.1::trusts('19569','59780').
0.1::trusts('16163','25546').
0.19::trusts('19569','25546').
0.1::trusts('34383','25546').
0.1::trusts('24012','34383').
0.271::trusts('20342','13043').
0.1::trusts('15849','13043').
0.1::trusts('34383','24012').
0.271::trusts('13043','36691').
0.1::trusts('16163','15774').
0.1::trusts('19569','54366').

person('16163').
person('20342').
person('19569').
person('8137').
person('26341').
person('25545').
person('19404').
person('19500').
person('59780').
person('20889').
person('25546').
person('34383').
person('5103').
person('13043').
person('15849').
person('24012').
person('36691').
person('15774').
person('54366').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16163')).
query(buys('20342')).
query(buys('19569')).
query(buys('8137')).
query(buys('26341')).
query(buys('25545')).
query(buys('19404')).
query(buys('19500')).
query(buys('59780')).
query(buys('20889')).
query(buys('25546')).
query(buys('34383')).
query(buys('5103')).
query(buys('13043')).
query(buys('15849')).
query(buys('24012')).
query(buys('36691')).
query(buys('15774')).
query(buys('54366')).
