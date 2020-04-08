10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19400','18486').
0.19::trusts('11424','18486').
0.19::trusts('11431','18486').
0.1::trusts('18486','19400').
0.1::trusts('55796','19400').
0.271::trusts('15227','19400').
0.19::trusts('47870','19400').
0.1::trusts('55818','19400').
0.1::trusts('18486','11424').
0.1::trusts('25071','11424').
0.19::trusts('41395','11424').
0.19::trusts('50607','11424').
0.271::trusts('18486','11431').
0.19::trusts('19400','55796').
0.19::trusts('55798','55796').
0.1::trusts('55800','55796').
0.40951::trusts('19400','15227').
0.1::trusts('62949','15227').
0.271::trusts('19400','47870').
0.19::trusts('19400','55818').
0.3439::trusts('11424','25071').
0.3439::trusts('11424','41395').
0.3439::trusts('11424','50607').
0.271::trusts('55796','55798').
0.19::trusts('55796','55800').
0.19::trusts('15227','62949').
0.19::trusts('25071','54728').
0.19::trusts('50607','50608').
0.1::trusts('19400','21062').
0.1::trusts('11431','45965').

person('18486').
person('19400').
person('11424').
person('11431').
person('55796').
person('15227').
person('47870').
person('55818').
person('25071').
person('41395').
person('50607').
person('55798').
person('55800').
person('62949').
person('54728').
person('50608').
person('21062').
person('45965').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18486')).
query(buys('19400')).
query(buys('11424')).
query(buys('11431')).
query(buys('55796')).
query(buys('15227')).
query(buys('47870')).
query(buys('55818')).
query(buys('25071')).
query(buys('41395')).
query(buys('50607')).
query(buys('55798')).
query(buys('55800')).
query(buys('62949')).
query(buys('54728')).
query(buys('50608')).
query(buys('21062')).
query(buys('45965')).
