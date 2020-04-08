10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('30059','22878').
0.1::trusts('24129','22878').
0.1::trusts('22878','30059').
0.19::trusts('17146','30059').
0.3439::trusts('45238','30059').
0.19::trusts('22878','24129').
0.1::trusts('30059','17146').
0.1::trusts('29491','17146').
0.3439::trusts('30059','45238').
0.19::trusts('38002','23698').
0.1::trusts('9436','23698').
0.271::trusts('23698','38002').
0.901522909781639::trusts('38001','38002').
0.19::trusts('6013','9436').
0.1::trusts('23698','9436').
0.1::trusts('31698','9436').
0.19::trusts('9436','31698').
0.1::trusts('22878','13115').
0.3439::trusts('38002','38001').
0.1::trusts('29491','38001').
0.19::trusts('18770','38001').
0.1::trusts('38001','29491').
0.19::trusts('17146','29491').
0.1::trusts('18770','29491').
0.5217031::trusts('38001','18770').
0.1::trusts('52737','18770').
0.1::trusts('38002','49629').
0.1::trusts('31698','53462').

person('22878').
person('30059').
person('24129').
person('17146').
person('45238').
person('23698').
person('38002').
person('9436').
person('31698').
person('13115').
person('38001').
person('29491').
person('18770').
person('6013').
person('52737').
person('49629').
person('53462').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22878')).
query(buys('30059')).
query(buys('24129')).
query(buys('17146')).
query(buys('45238')).
query(buys('23698')).
query(buys('38002')).
query(buys('9436')).
query(buys('31698')).
query(buys('13115')).
query(buys('38001')).
query(buys('29491')).
query(buys('18770')).
query(buys('6013')).
query(buys('52737')).
query(buys('49629')).
query(buys('53462')).
