10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('17918','32685').
0.1::trusts('14990','32685').
0.56953279::trusts('20885','32685').
0.1::trusts('29163','32685').
0.19::trusts('35324','32685').
0.1::trusts('54864','32685').
0.1::trusts('32685','17918').
0.19::trusts('35361','17918').
0.56953279::trusts('32685','20885').
0.19::trusts('27924','20885').
0.1::trusts('53867','20885').
0.19::trusts('32685','29163').
0.1::trusts('32685','35324').
0.1::trusts('28451','35324').
0.271::trusts('39284','35324').
0.1::trusts('27924','32682').
0.1::trusts('14990','27924').
0.3439::trusts('20885','27924').
0.19::trusts('35324','27924').
0.19::trusts('28328','27924').
0.271::trusts('17918','35361').
0.68618940391::trusts('35324','39284').
0.1::trusts('37211','39284').
0.1::trusts('39287','39284').
0.1::trusts('20885','53867').
0.1::trusts('27125','30697').
0.19::trusts('32685','29496').
0.19::trusts('54864','29496').
0.1::trusts('20885','43839').
0.1::trusts('32685','28988').
0.1::trusts('35324','35326').
0.1::trusts('28328','35326').
0.1::trusts('30697','35326').
0.1::trusts('39287','35349').

person('32685').
person('17918').
person('14990').
person('20885').
person('29163').
person('35324').
person('54864').
person('32682').
person('27924').
person('35361').
person('39284').
person('37211').
person('39287').
person('53867').
person('28451').
person('28328').
person('30697').
person('27125').
person('29496').
person('43839').
person('28988').
person('35326').
person('35349').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('32685')).
query(buys('17918')).
query(buys('14990')).
query(buys('20885')).
query(buys('29163')).
query(buys('35324')).
query(buys('54864')).
query(buys('32682')).
query(buys('27924')).
query(buys('35361')).
query(buys('39284')).
query(buys('37211')).
query(buys('39287')).
query(buys('53867')).
query(buys('28451')).
query(buys('28328')).
query(buys('30697')).
query(buys('27125')).
query(buys('29496')).
query(buys('43839')).
query(buys('28988')).
query(buys('35326')).
query(buys('35349')).
