10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('10871','7891').
0.77123207545039::trusts('10520','7891').
0.3439::trusts('20472','7891').
0.1::trusts('10878','7891').
0.5217031::trusts('20463','7891').
0.1::trusts('20490','7891').
0.928210201230815::trusts('7891','10520').
0.19::trusts('10871','10520').
0.19::trusts('2153','10520').
0.1::trusts('41886','10520').
0.19::trusts('7891','10878').
0.612579511::trusts('7891','20463').
0.1::trusts('7891','20490').
0.19::trusts('10520','2153').
0.271::trusts('20472','33985').
0.1::trusts('7891','20480').
0.1::trusts('20472','32205').
0.1::trusts('20472','49383').
0.1::trusts('7891','7396').
0.1::trusts('7891','20482').

person('7891').
person('10871').
person('10520').
person('20472').
person('10878').
person('20463').
person('20490').
person('2153').
person('41886').
person('33985').
person('20480').
person('32205').
person('49383').
person('7396').
person('20482').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7891')).
query(buys('10871')).
query(buys('10520')).
query(buys('20472')).
query(buys('10878')).
query(buys('20463')).
query(buys('20490')).
query(buys('2153')).
query(buys('41886')).
query(buys('33985')).
query(buys('20480')).
query(buys('32205')).
query(buys('49383')).
query(buys('7396')).
query(buys('20482')).
