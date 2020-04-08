10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('36495','14982').
0.3439::trusts('23062','14982').
0.19::trusts('14982','36495').
0.1::trusts('23062','36495').
0.1::trusts('14982','23062').
0.1::trusts('36495','23062').
0.19::trusts('26212','23062').
0.1::trusts('51109','23062').
0.1::trusts('5491','26212').
0.19::trusts('23062','26212').
0.1::trusts('35783','26212').
0.1::trusts('9693','26212').
0.19::trusts('14976','26212').
0.1::trusts('35866','26212').
0.1::trusts('26212','35783').
0.1::trusts('5491','9693').
0.19::trusts('26212','9693').
0.40951::trusts('26212','14976').
0.1::trusts('5491','7588').
0.1::trusts('5491','9220').
0.1::trusts('14967','29036').
0.1::trusts('9693','29036').
0.1::trusts('26212','35603').
0.1::trusts('35252','35603').
0.1::trusts('36495','57025').
0.19::trusts('22284','38812').
0.1::trusts('14976','22284').

person('14982').
person('36495').
person('23062').
person('26212').
person('51109').
person('5491').
person('35783').
person('9693').
person('14976').
person('35866').
person('7588').
person('9220').
person('29036').
person('14967').
person('35603').
person('35252').
person('57025').
person('38812').
person('22284').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('14982')).
query(buys('36495')).
query(buys('23062')).
query(buys('26212')).
query(buys('51109')).
query(buys('5491')).
query(buys('35783')).
query(buys('9693')).
query(buys('14976')).
query(buys('35866')).
query(buys('7588')).
query(buys('9220')).
query(buys('29036')).
query(buys('14967')).
query(buys('35603')).
query(buys('35252')).
query(buys('57025')).
query(buys('38812')).
query(buys('22284')).
