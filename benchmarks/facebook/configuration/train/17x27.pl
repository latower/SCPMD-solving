10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('11965','19850').
0.1::trusts('11962','19850').
0.19::trusts('19850','11965').
0.1::trusts('15802','11965').
0.19::trusts('13676','11965').
0.3439::trusts('11962','11965').
0.3439::trusts('31298','11965').
0.1::trusts('58639','11965').
0.19::trusts('11964','11965').
0.1::trusts('47041','11965').
0.1::trusts('11965','13676').
0.271::trusts('15802','31298').
0.468559::trusts('11965','31298').
0.1::trusts('11962','31298').
0.19::trusts('11965','11964').
0.1::trusts('11962','11964').
0.1::trusts('11965','47041').
0.19::trusts('43744','47041').
0.19::trusts('47041','43744').
0.1::trusts('31298','29628').
0.1::trusts('11965','23344').
0.1::trusts('31298','23344').
0.1::trusts('62636','62637').
0.1::trusts('15802','62636').
0.19::trusts('11962','59148').
0.1::trusts('59609','59148').
0.19::trusts('11962','11938').
0.1::trusts('11964','11938').

person('19850').
person('11965').
person('11962').
person('15802').
person('13676').
person('31298').
person('58639').
person('11964').
person('47041').
person('43744').
person('29628').
person('23344').
person('62637').
person('62636').
person('59148').
person('59609').
person('11938').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19850')).
query(buys('11965')).
query(buys('11962')).
query(buys('15802')).
query(buys('13676')).
query(buys('31298')).
query(buys('58639')).
query(buys('11964')).
query(buys('47041')).
query(buys('43744')).
query(buys('29628')).
query(buys('23344')).
query(buys('62637')).
query(buys('62636')).
query(buys('59148')).
query(buys('59609')).
query(buys('11938')).
