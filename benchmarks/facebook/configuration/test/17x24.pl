10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('22419','18848').
0.1::trusts('48388','18848').
0.1::trusts('52767','18848').
0.1::trusts('52769','18848').
0.1::trusts('61494','18848').
0.19::trusts('18848','22419').
0.1::trusts('13700','22419').
0.1::trusts('18848','48388').
0.19::trusts('52769','48388').
0.1::trusts('52857','48388').
0.1::trusts('52775','48388').
0.1::trusts('18848','52767').
0.1::trusts('48388','52769').
0.1::trusts('50931','52769').
0.1::trusts('22419','13700').
0.1::trusts('59411','52857').
0.1::trusts('48388','52775').
0.19::trusts('48388','50931').
0.19::trusts('52769','50931').
0.1::trusts('22419','2938').
0.1::trusts('18848','52766').
0.1::trusts('48388','16246').
0.19::trusts('18848','50930').
0.1::trusts('50931','50930').
0.1::trusts('18848','31189').
0.1::trusts('18848','52772').

person('18848').
person('22419').
person('48388').
person('52767').
person('52769').
person('61494').
person('13700').
person('52857').
person('52775').
person('50931').
person('59411').
person('2938').
person('52766').
person('16246').
person('50930').
person('31189').
person('52772').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18848')).
query(buys('22419')).
query(buys('48388')).
query(buys('52767')).
query(buys('52769')).
query(buys('61494')).
query(buys('13700')).
query(buys('52857')).
query(buys('52775')).
query(buys('50931')).
query(buys('59411')).
query(buys('2938')).
query(buys('52766')).
query(buys('16246')).
query(buys('50930')).
query(buys('31189')).
query(buys('52772')).
