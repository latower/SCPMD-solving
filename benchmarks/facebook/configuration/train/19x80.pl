10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('35185','15316').
0.1::trusts('28112','15316').
0.1::trusts('25814','15316').
0.1::trusts('15316','35185').
0.271::trusts('15316','28112').
0.19::trusts('35185','28112').
0.3439::trusts('15316','25814').
0.1::trusts('14247','25814').
0.1::trusts('15316','15280').
0.1::trusts('20891','15280').
0.271::trusts('17763','15280').
0.19::trusts('15280','17763').
0.1::trusts('15316','25320').
0.1::trusts('15316','15311').
0.1::trusts('36485','15311').
0.19::trusts('35185','15311').
0.1::trusts('15280','15311').
0.271::trusts('15316','42558').
0.19::trusts('15316','16280').
0.1::trusts('35185','16280').
0.1::trusts('15843','16280').
0.19::trusts('15316','35630').
0.1::trusts('15316','36487').
0.1::trusts('36485','30997').
0.1::trusts('15316','36488').
0.1::trusts('15316','39793').

person('15316').
person('35185').
person('28112').
person('25814').
person('15280').
person('20891').
person('17763').
person('14247').
person('25320').
person('15311').
person('36485').
person('42558').
person('16280').
person('15843').
person('35630').
person('36487').
person('30997').
person('36488').
person('39793').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15316')).
query(buys('35185')).
query(buys('28112')).
query(buys('25814')).
query(buys('15280')).
query(buys('20891')).
query(buys('17763')).
query(buys('14247')).
query(buys('25320')).
query(buys('15311')).
query(buys('36485')).
query(buys('42558')).
query(buys('16280')).
query(buys('15843')).
query(buys('35630')).
query(buys('36487')).
query(buys('30997')).
query(buys('36488')).
query(buys('39793')).
