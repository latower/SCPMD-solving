10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('18383','3443').
0.1::trusts('23528','3443').
0.271::trusts('29974','3443').
0.19::trusts('6523','3443').
0.56953279::trusts('3443','18383').
0.1::trusts('3443','23528').
0.1::trusts('29974','23528').
0.271::trusts('3443','29974').
0.19::trusts('23528','29974').
0.1::trusts('48366','29974').
0.1::trusts('46935','29974').
0.1::trusts('3443','6523').
0.1::trusts('6526','6523').
0.1::trusts('29974','48366').
0.1::trusts('29974','46935').
0.1::trusts('62641','46935').
0.1::trusts('6523','6526').
0.19::trusts('6525','6526').
0.1::trusts('18383','29731').
0.1::trusts('29732','29731').
0.1::trusts('18383','29732').
0.1::trusts('6525','23063').
0.1::trusts('23063','6525').
0.19::trusts('6526','6525').
0.1::trusts('43200','6525').
0.1::trusts('6525','43200').
0.19::trusts('3443','18410').
0.1::trusts('6523','57973').

person('3443').
person('18383').
person('23528').
person('29974').
person('6523').
person('48366').
person('46935').
person('6526').
person('29731').
person('29732').
person('23063').
person('6525').
person('43200').
person('62641').
person('18410').
person('57973').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3443')).
query(buys('18383')).
query(buys('23528')).
query(buys('29974')).
query(buys('6523')).
query(buys('48366')).
query(buys('46935')).
query(buys('6526')).
query(buys('29731')).
query(buys('29732')).
query(buys('23063')).
query(buys('6525')).
query(buys('43200')).
query(buys('62641')).
query(buys('18410')).
query(buys('57973')).
