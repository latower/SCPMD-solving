10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('56587','50762').
0.1::trusts('55485','50762').
0.1::trusts('50762','56587').
0.1::trusts('56586','56587').
0.19::trusts('55377','56587').
0.1::trusts('50785','55485').
0.19::trusts('56587','56586').
0.19::trusts('56587','55377').
0.1::trusts('58541','55377').
0.19::trusts('41400','50785').
0.1::trusts('55485','50785').
0.1::trusts('54747','50785').
0.1::trusts('41400','50865').
0.1::trusts('50762','50863').
0.1::trusts('55485','50863').
0.1::trusts('50865','50863').
0.1::trusts('41400','63718').
0.1::trusts('41400','24854').
0.271::trusts('50762','50766').
0.1::trusts('56587','55376').

person('50762').
person('56587').
person('55485').
person('56586').
person('55377').
person('50785').
person('58541').
person('41400').
person('54747').
person('50865').
person('50863').
person('63718').
person('24854').
person('50766').
person('55376').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('50762')).
query(buys('56587')).
query(buys('55485')).
query(buys('56586')).
query(buys('55377')).
query(buys('50785')).
query(buys('58541')).
query(buys('41400')).
query(buys('54747')).
query(buys('50865')).
query(buys('50863')).
query(buys('63718')).
query(buys('24854')).
query(buys('50766')).
query(buys('55376')).
