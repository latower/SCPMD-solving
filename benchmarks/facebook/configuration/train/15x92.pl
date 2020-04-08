10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.928210201230815::trusts('40341','22079').
0.1::trusts('44436','22079').
0.814697981114816::trusts('27993','22079').
0.19::trusts('58268','22079').
0.19::trusts('53057','22079').
0.1::trusts('60264','22079').
0.986697205352709::trusts('22079','40341').
0.40951::trusts('35890','40341').
0.40951::trusts('27993','40341').
0.1::trusts('22079','44436').
0.833228183003334::trusts('22079','27993').
0.3439::trusts('40341','27993').
0.1::trusts('44436','27993').
0.1::trusts('38379','27993').
0.271::trusts('22079','58268').
0.1::trusts('53057','58268').
0.19::trusts('22079','53057').
0.1::trusts('58268','53057').
0.1::trusts('44090','53057').
0.19::trusts('22079','60264').
0.1::trusts('28568','25451').
0.271::trusts('25451','28568').
0.1::trusts('44090','28568').
0.1::trusts('22079','35890').
0.5217031::trusts('40341','35890').
0.1::trusts('27993','35890').
0.1::trusts('25451','44090').
0.1::trusts('53057','44090').
0.1::trusts('58268','60731').
0.1::trusts('40341','41521').
0.1::trusts('44436','11466').

person('22079').
person('40341').
person('44436').
person('27993').
person('58268').
person('53057').
person('60264').
person('25451').
person('28568').
person('35890').
person('44090').
person('38379').
person('60731').
person('41521').
person('11466').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22079')).
query(buys('40341')).
query(buys('44436')).
query(buys('27993')).
query(buys('58268')).
query(buys('53057')).
query(buys('60264')).
query(buys('25451')).
query(buys('28568')).
query(buys('35890')).
query(buys('44090')).
query(buys('38379')).
query(buys('60731')).
query(buys('41521')).
query(buys('11466')).
