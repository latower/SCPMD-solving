10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('28677','17613').
0.19::trusts('17613','28677').
0.1::trusts('6433','28677').
0.1::trusts('42549','28677').
0.1::trusts('28677','6433').
0.1::trusts('26392','6433').
0.3439::trusts('26761','6433').
0.849905364703001::trusts('6433','26392').
0.1::trusts('29829','26392').
0.271::trusts('21232','26392').
0.468559::trusts('6433','26761').
0.612579511::trusts('27491','26761').
0.1::trusts('44951','26761').
0.1::trusts('28677','42549').
0.1::trusts('38181','42549').
0.19::trusts('42549','38181').
0.814697981114816::trusts('6433','29829').
0.1::trusts('26392','29829').
0.5217031::trusts('21232','29829').
0.68618940391::trusts('6433','21232').
0.3439::trusts('29829','21232').
0.19::trusts('26392','21232').
0.271::trusts('26761','27491').
0.19::trusts('26761','44951').
0.1::trusts('342','44951').
0.1::trusts('6433','12885').
0.19::trusts('42549','22959').
0.1::trusts('342','44459').
0.1::trusts('28677','57470').
0.1::trusts('6433','6620').
0.1::trusts('22959','10762').

person('17613').
person('28677').
person('6433').
person('26392').
person('26761').
person('42549').
person('38181').
person('29829').
person('21232').
person('27491').
person('44951').
person('342').
person('12885').
person('22959').
person('44459').
person('57470').
person('6620').
person('10762').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17613')).
query(buys('28677')).
query(buys('6433')).
query(buys('26392')).
query(buys('26761')).
query(buys('42549')).
query(buys('38181')).
query(buys('29829')).
query(buys('21232')).
query(buys('27491')).
query(buys('44951')).
query(buys('342')).
query(buys('12885')).
query(buys('22959')).
query(buys('44459')).
query(buys('57470')).
query(buys('6620')).
query(buys('10762')).
