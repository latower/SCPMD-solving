10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('9822','5892').
0.468559::trusts('14935','5892').
0.3439::trusts('13034','5892').
0.271::trusts('5892','9822').
0.77123207545039::trusts('3748','9822').
0.19::trusts('19964','9822').
0.3439::trusts('5892','14935').
0.1::trusts('5892','13034').
0.468559::trusts('17893','13034').
0.7458134171671::trusts('9822','3748').
0.1::trusts('5334','3748').
0.1::trusts('17767','3748').
0.1::trusts('9822','19964').
0.1::trusts('5892','19187').
0.1::trusts('6805','19187').
0.1::trusts('19187','6805').
0.1::trusts('13034','6805').
0.5217031::trusts('13034','17893').
0.1::trusts('30902','17893').
0.5217031::trusts('30903','17893').
0.3439::trusts('30724','17893').
0.19::trusts('45333','30902').
0.5217031::trusts('17893','30903').
0.1::trusts('30724','30903').
0.468559::trusts('17893','30724').
0.271::trusts('30903','30724').
0.1::trusts('9822','5334').
0.19::trusts('3748','5334').
0.271::trusts('30902','45333').
0.1::trusts('5892','28344').

person('5892').
person('9822').
person('14935').
person('13034').
person('3748').
person('19964').
person('19187').
person('6805').
person('17893').
person('30902').
person('30903').
person('30724').
person('5334').
person('17767').
person('45333').
person('28344').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5892')).
query(buys('9822')).
query(buys('14935')).
query(buys('13034')).
query(buys('3748')).
query(buys('19964')).
query(buys('19187')).
query(buys('6805')).
query(buys('17893')).
query(buys('30902')).
query(buys('30903')).
query(buys('30724')).
query(buys('5334')).
query(buys('17767')).
query(buys('45333')).
query(buys('28344')).
