10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('36929','19115').
0.19::trusts('24377','19115').
0.3439::trusts('19115','36929').
0.1::trusts('28982','36929').
0.1::trusts('13956','36929').
0.1::trusts('20760','36929').
0.1::trusts('26081','13941').
0.1::trusts('13956','13941').
0.1::trusts('54166','13941').
0.1::trusts('13941','26081').
0.1::trusts('33869','26081').
0.1::trusts('13941','13956').
0.1::trusts('36929','13956').
0.271::trusts('13941','54166').
0.1::trusts('26081','33869').
0.1::trusts('33555','33869').
0.1::trusts('20425','33869').
0.1::trusts('33869','33555').
0.1::trusts('27679','33555').
0.271::trusts('33869','20425').
0.1::trusts('33555','27679').
0.1::trusts('24377','49150').
0.1::trusts('13941','50563').
0.1::trusts('54166','28945').
0.1::trusts('33869','36796').

person('19115').
person('36929').
person('24377').
person('13941').
person('26081').
person('13956').
person('54166').
person('33869').
person('28982').
person('20760').
person('33555').
person('20425').
person('27679').
person('49150').
person('50563').
person('28945').
person('36796').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19115')).
query(buys('36929')).
query(buys('24377')).
query(buys('13941')).
query(buys('26081')).
query(buys('13956')).
query(buys('54166')).
query(buys('33869')).
query(buys('28982')).
query(buys('20760')).
query(buys('33555')).
query(buys('20425')).
query(buys('27679')).
query(buys('49150')).
query(buys('50563')).
query(buys('28945')).
query(buys('36796')).
