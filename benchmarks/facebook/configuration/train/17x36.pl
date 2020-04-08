10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('25228','9854').
0.468559::trusts('9854','25228').
0.5217031::trusts('22363','25228').
0.468559::trusts('25228','22363').
0.3439::trusts('31477','22363').
0.3439::trusts('22363','31477').
0.3439::trusts('29032','26259').
0.1::trusts('14888','26259').
0.1::trusts('26259','29032').
0.833228183003334::trusts('24462','29032').
0.1::trusts('39822','29032').
0.1::trusts('25228','29033').
0.1::trusts('29032','29033').
0.5217031::trusts('35822','29033').
0.271::trusts('32520','29033').
0.19::trusts('29033','35822').
0.19::trusts('29033','32520').
0.935389181107733::trusts('29032','24462').
0.1::trusts('29032','27627').
0.19::trusts('22363','36762').
0.1::trusts('22363','25723').
0.1::trusts('25228','20867').
0.19::trusts('29032','20867').
0.1::trusts('22363','44407').

person('9854').
person('25228').
person('22363').
person('31477').
person('26259').
person('29032').
person('14888').
person('29033').
person('35822').
person('32520').
person('24462').
person('39822').
person('27627').
person('36762').
person('25723').
person('20867').
person('44407').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9854')).
query(buys('25228')).
query(buys('22363')).
query(buys('31477')).
query(buys('26259')).
query(buys('29032')).
query(buys('14888')).
query(buys('29033')).
query(buys('35822')).
query(buys('32520')).
query(buys('24462')).
query(buys('39822')).
query(buys('27627')).
query(buys('36762')).
query(buys('25723')).
query(buys('20867')).
query(buys('44407')).
