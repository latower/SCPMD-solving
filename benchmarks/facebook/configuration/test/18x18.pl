10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('7692','7683').
0.1::trusts('7683','7692').
0.19::trusts('18786','7393').
0.1::trusts('62798','7393').
0.19::trusts('7393','18786').
0.1::trusts('53033','18786').
0.19::trusts('62901','18786').
0.19::trusts('7393','62798').
0.1::trusts('7267','4655').
0.1::trusts('4655','7267').
0.1::trusts('53033','7267').
0.1::trusts('47251','7267').
0.1::trusts('7267','53033').
0.19::trusts('18786','53033').
0.1::trusts('7267','47251').
0.1::trusts('31362','47251').
0.1::trusts('5982','47251').
0.1::trusts('62446','47251').
0.271::trusts('18786','62901').
0.271::trusts('54761','62901').
0.19::trusts('40377','26583').
0.1::trusts('5982','26583').
0.19::trusts('26583','40377').
0.3439::trusts('26583','5982').
0.1::trusts('47251','5982').
0.1::trusts('47251','31362').
0.1::trusts('62901','54761').
0.1::trusts('48037','54761').
0.1::trusts('7683','48037').
0.1::trusts('54761','48037').
0.1::trusts('53033','47284').

person('7683').
person('7692').
person('7393').
person('18786').
person('62798').
person('4655').
person('7267').
person('53033').
person('47251').
person('62901').
person('26583').
person('40377').
person('5982').
person('31362').
person('62446').
person('54761').
person('48037').
person('47284').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7683')).
query(buys('7692')).
query(buys('7393')).
query(buys('18786')).
query(buys('62798')).
query(buys('4655')).
query(buys('7267')).
query(buys('53033')).
query(buys('47251')).
query(buys('62901')).
query(buys('26583')).
query(buys('40377')).
query(buys('5982')).
query(buys('31362')).
query(buys('62446')).
query(buys('54761')).
query(buys('48037')).
query(buys('47284')).
