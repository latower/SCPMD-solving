10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.833228183003334::trusts('31812','36472').
0.19::trusts('30646','36472').
0.878423345409431::trusts('36472','31812').
0.1::trusts('18621','31812').
0.5217031::trusts('30646','31812').
0.1::trusts('27134','31812').
0.1::trusts('20248','31812').
0.271::trusts('36472','30646').
0.5217031::trusts('31812','30646').
0.1::trusts('62788','30646').
0.1::trusts('14203','60386').
0.19::trusts('18621','60386').
0.1::trusts('60386','14203').
0.271::trusts('15912','14203').
0.19::trusts('55265','14203').
0.19::trusts('60386','18621').
0.271::trusts('31812','18621').
0.19::trusts('13588','18621').
0.1::trusts('31812','20248').
0.19::trusts('14203','15912').
0.19::trusts('14203','55265').
0.271::trusts('18621','13588').
0.1::trusts('29886','55714').
0.1::trusts('60386','29886').
0.1::trusts('55714','29886').
0.1::trusts('60386','38969').

person('36472').
person('31812').
person('30646').
person('60386').
person('14203').
person('18621').
person('27134').
person('20248').
person('15912').
person('55265').
person('13588').
person('62788').
person('55714').
person('29886').
person('38969').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('36472')).
query(buys('31812')).
query(buys('30646')).
query(buys('60386')).
query(buys('14203')).
query(buys('18621')).
query(buys('27134')).
query(buys('20248')).
query(buys('15912')).
query(buys('55265')).
query(buys('13588')).
query(buys('62788')).
query(buys('55714')).
query(buys('29886')).
query(buys('38969')).
