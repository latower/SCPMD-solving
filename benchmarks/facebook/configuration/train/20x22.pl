10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('3754','31087').
0.1::trusts('11350','31087').
0.1::trusts('31087','3754').
0.271::trusts('3090','3754').
0.1::trusts('9617','3754').
0.19::trusts('2455','3754').
0.271::trusts('17232','3754').
0.1::trusts('44973','3754').
0.1::trusts('31087','11350').
0.1::trusts('9617','9345').
0.1::trusts('7678','9345').
0.1::trusts('9345','9617').
0.1::trusts('3090','9617').
0.1::trusts('43508','9617').
0.19::trusts('3754','9617').
0.1::trusts('24785','9617').
0.1::trusts('10503','7678').
0.1::trusts('2455','21595').
0.1::trusts('21595','2455').
0.19::trusts('3754','2455').
0.1::trusts('20511','15630').
0.19::trusts('15630','20511').
0.19::trusts('14053','20511').
0.19::trusts('9349','20511').
0.19::trusts('9617','3090').
0.271::trusts('3754','3090').
0.1::trusts('14053','3090').
0.1::trusts('3090','14053').
0.1::trusts('20511','14053').
0.1::trusts('9639','14053').
0.1::trusts('42213','14053').
0.1::trusts('9617','43508').
0.19::trusts('20511','9349').
0.1::trusts('7678','10503').
0.19::trusts('3754','17232').
0.1::trusts('14053','9639').
0.1::trusts('14053','42213').

person('31087').
person('3754').
person('11350').
person('9345').
person('9617').
person('7678').
person('21595').
person('2455').
person('15630').
person('20511').
person('3090').
person('14053').
person('43508').
person('9349').
person('24785').
person('10503').
person('17232').
person('44973').
person('9639').
person('42213').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('31087')).
query(buys('3754')).
query(buys('11350')).
query(buys('9345')).
query(buys('9617')).
query(buys('7678')).
query(buys('21595')).
query(buys('2455')).
query(buys('15630')).
query(buys('20511')).
query(buys('3090')).
query(buys('14053')).
query(buys('43508')).
query(buys('9349')).
query(buys('24785')).
query(buys('10503')).
query(buys('17232')).
query(buys('44973')).
query(buys('9639')).
query(buys('42213')).
