10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('14749','37195').
0.1::trusts('37195','14749').
0.19::trusts('28098','14749').
0.983576796731739::trusts('8868','14749').
0.19::trusts('37198','49420').
0.3439::trusts('40729','49420').
0.3439::trusts('49420','40729').
0.1::trusts('48969','40729').
0.271::trusts('40728','40729').
0.612579511::trusts('8868','28098').
0.1::trusts('14749','28098').
0.271::trusts('28100','28098').
0.1::trusts('48969','28098').
0.56953279::trusts('28098','8868').
0.612579511::trusts('14749','8868').
0.3439::trusts('28098','28100').
0.19::trusts('28098','48969').
0.19::trusts('40729','48969').
0.1::trusts('37195','18783').
0.19::trusts('14749','18783').
0.271::trusts('40729','40728').
0.1::trusts('28098','28097').
0.19::trusts('50525','28097').
0.1::trusts('28097','50525').
0.1::trusts('49420','60285').
0.1::trusts('37195','29422').

person('37195').
person('14749').
person('49420').
person('37198').
person('40729').
person('28098').
person('8868').
person('28100').
person('48969').
person('18783').
person('40728').
person('28097').
person('50525').
person('60285').
person('29422').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('37195')).
query(buys('14749')).
query(buys('49420')).
query(buys('37198')).
query(buys('40729')).
query(buys('28098')).
query(buys('8868')).
query(buys('28100')).
query(buys('48969')).
query(buys('18783')).
query(buys('40728')).
query(buys('28097')).
query(buys('50525')).
query(buys('60285')).
query(buys('29422')).
