10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('32960','23128').
0.19::trusts('15344','23128').
0.1::trusts('17109','32960').
0.1::trusts('23128','32960').
0.1::trusts('23128','15344').
0.1::trusts('33040','15344').
0.40951::trusts('36272','15344').
0.1::trusts('45066','15344').
0.1::trusts('44146','15344').
0.1::trusts('15344','33040').
0.3439::trusts('42062','33040').
0.468559::trusts('10472','33040').
0.5217031::trusts('33040','42062').
0.1::trusts('17109','36272').
0.1::trusts('15344','36272').
0.1::trusts('32449','36272').
0.19::trusts('36272','32449').
0.1::trusts('32706','32449').
0.19::trusts('38857','32449').
0.1::trusts('15344','45066').
0.1::trusts('15344','44146').
0.1::trusts('32449','32706').
0.1::trusts('32449','38857').
0.1::trusts('17109','12286').
0.1::trusts('36272','52600').
0.1::trusts('17109','29459').

person('23128').
person('32960').
person('15344').
person('17109').
person('33040').
person('42062').
person('10472').
person('36272').
person('32449').
person('45066').
person('44146').
person('32706').
person('38857').
person('12286').
person('52600').
person('29459').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23128')).
query(buys('32960')).
query(buys('15344')).
query(buys('17109')).
query(buys('33040')).
query(buys('42062')).
query(buys('10472')).
query(buys('36272')).
query(buys('32449')).
query(buys('45066')).
query(buys('44146')).
query(buys('32706')).
query(buys('38857')).
query(buys('12286')).
query(buys('52600')).
query(buys('29459')).
