10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('13407','11946').
0.1::trusts('11946','13407').
0.19::trusts('58068','13407').
0.1::trusts('13407','58068').
0.6513215599::trusts('15763','58068').
0.19::trusts('32246','58068').
0.1::trusts('47910','58068').
0.1::trusts('58068','32246').
0.1::trusts('49826','32246').
0.1::trusts('45950','32246').
0.1::trusts('58068','47910').
0.1::trusts('11946','11961').
0.1::trusts('13407','11961').
0.1::trusts('15763','11961').
0.3439::trusts('49826','11961').
0.271::trusts('11961','49826').
0.1::trusts('32246','49826').
0.19::trusts('58294','49826').
0.1::trusts('49825','49826').
0.1::trusts('11961','17618').
0.1::trusts('57304','17618').
0.271::trusts('45950','17618').
0.1::trusts('45950','57304').
0.19::trusts('15763','45950').
0.1::trusts('17618','45950').
0.19::trusts('32246','45950').
0.271::trusts('57304','45950').
0.1::trusts('46121','45950').
0.1::trusts('37835','45950').
0.19::trusts('49826','58294').
0.1::trusts('45950','46121').
0.1::trusts('45950','37835').
0.19::trusts('15763','40153').
0.1::trusts('15763','53940').
0.1::trusts('15763','57303').
0.1::trusts('17618','57303').
0.1::trusts('32246','62614').

person('11946').
person('13407').
person('58068').
person('15763').
person('32246').
person('47910').
person('11961').
person('49826').
person('17618').
person('57304').
person('45950').
person('58294').
person('49825').
person('46121').
person('37835').
person('40153').
person('53940').
person('57303').
person('62614').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11946')).
query(buys('13407')).
query(buys('58068')).
query(buys('15763')).
query(buys('32246')).
query(buys('47910')).
query(buys('11961')).
query(buys('49826')).
query(buys('17618')).
query(buys('57304')).
query(buys('45950')).
query(buys('58294')).
query(buys('49825')).
query(buys('46121')).
query(buys('37835')).
query(buys('40153')).
query(buys('53940')).
query(buys('57303')).
query(buys('62614')).
