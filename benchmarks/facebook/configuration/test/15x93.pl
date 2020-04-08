10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('42377','29362').
0.19::trusts('18967','29362').
0.1::trusts('12348','29362').
0.271::trusts('29362','42377').
0.1::trusts('29362','18967').
0.1::trusts('29362','12348').
0.1::trusts('16404','12348').
0.468559::trusts('39081','12348').
0.19::trusts('12348','16404').
0.1::trusts('12348','39081').
0.19::trusts('12361','39081').
0.1::trusts('54210','39081').
0.1::trusts('12348','12361').
0.3439::trusts('39081','12361').
0.19::trusts('12353','12361').
0.19::trusts('39081','54210').
0.1::trusts('12361','12353').
0.1::trusts('37472','12353').
0.271::trusts('12353','37472').
0.1::trusts('29362','27316').
0.1::trusts('37472','33434').
0.19::trusts('12353','10684').
0.19::trusts('12353','60417').
0.1::trusts('12353','52033').

person('29362').
person('42377').
person('18967').
person('12348').
person('16404').
person('39081').
person('12361').
person('54210').
person('12353').
person('37472').
person('27316').
person('33434').
person('10684').
person('60417').
person('52033').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29362')).
query(buys('42377')).
query(buys('18967')).
query(buys('12348')).
query(buys('16404')).
query(buys('39081')).
query(buys('12361')).
query(buys('54210')).
query(buys('12353')).
query(buys('37472')).
query(buys('27316')).
query(buys('33434')).
query(buys('10684')).
query(buys('60417')).
query(buys('52033')).
