10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('20192','4733').
0.957608841724784::trusts('1761','4733').
0.612579511::trusts('30140','4733').
0.19::trusts('23478','4733').
0.1::trusts('4733','20192').
0.814697981114816::trusts('4733','1761').
0.19::trusts('22073','1761').
0.1::trusts('22072','1761').
0.40951::trusts('13714','1761').
0.271::trusts('10035','1761').
0.612579511::trusts('4733','30140').
0.19::trusts('4733','23478').
0.1::trusts('4913','23478').
0.1::trusts('1761','22073').
0.1::trusts('22071','22073').
0.814697981114816::trusts('1761','13714').
0.1::trusts('22071','13714').
0.1::trusts('16214','13714').
0.1::trusts('22069','13714').
0.19::trusts('1761','10035').
0.1::trusts('13714','22071').
0.19::trusts('13714','16214').
0.1::trusts('16217','16214').
0.1::trusts('22073','22069').
0.1::trusts('13714','22069').
0.1::trusts('13714','16217').
0.1::trusts('4733','23473').
0.1::trusts('4733','4764').
0.1::trusts('22069','62660').

person('4733').
person('20192').
person('1761').
person('30140').
person('23478').
person('22073').
person('22072').
person('13714').
person('10035').
person('4913').
person('22071').
person('16214').
person('22069').
person('16217').
person('23473').
person('4764').
person('62660').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4733')).
query(buys('20192')).
query(buys('1761')).
query(buys('30140')).
query(buys('23478')).
query(buys('22073')).
query(buys('22072')).
query(buys('13714')).
query(buys('10035')).
query(buys('4913')).
query(buys('22071')).
query(buys('16214')).
query(buys('22069')).
query(buys('16217')).
query(buys('23473')).
query(buys('4764')).
query(buys('62660')).
