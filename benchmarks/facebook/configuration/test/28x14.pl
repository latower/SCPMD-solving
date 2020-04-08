10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('23757','33205').
0.1::trusts('9282','33205').
0.1::trusts('33205','23757').
0.19::trusts('33197','23757').
0.1::trusts('48380','23757').
0.19::trusts('48379','23757').
0.19::trusts('9282','23757').
0.1::trusts('1875','23757').
0.1::trusts('33205','9282').
0.19::trusts('3948','9282').
0.468559::trusts('18594','9282').
0.1::trusts('23757','9282').
0.1::trusts('43291','9282').
0.1::trusts('26682','9282').
0.271::trusts('18594','3948').
0.1::trusts('15883','3948').
0.3439::trusts('9282','3948').
0.1::trusts('7328','3948').
0.19::trusts('3948','18594').
0.468559::trusts('9282','18594').
0.1::trusts('30080','18594').
0.1::trusts('12004','18594').
0.1::trusts('47483','18594').
0.1::trusts('30085','18594').
0.1::trusts('3948','15883').
0.1::trusts('3948','7328').
0.1::trusts('18594','30080').
0.1::trusts('18594','12004').
0.1::trusts('18594','47483').
0.271::trusts('23757','33197').
0.19::trusts('23757','48380').
0.40951::trusts('23757','48379').
0.19::trusts('23757','1875').
0.1::trusts('39123','1875').
0.1::trusts('9282','43291').
0.19::trusts('57174','43291').
0.1::trusts('3948','26682').
0.1::trusts('18594','26682').
0.19::trusts('9282','26682').
0.1::trusts('1875','39123').
0.1::trusts('3948','34446').
0.1::trusts('18594','55282').
0.19::trusts('18594','45894').
0.19::trusts('18594','28363').
0.1::trusts('15883','44456').
0.1::trusts('7328','35130').
0.1::trusts('26682','26685').
0.1::trusts('18594','55284').
0.1::trusts('3948','63874').

person('33205').
person('23757').
person('9282').
person('3948').
person('18594').
person('15883').
person('7328').
person('30080').
person('12004').
person('47483').
person('30085').
person('33197').
person('48380').
person('48379').
person('1875').
person('43291').
person('26682').
person('39123').
person('34446').
person('57174').
person('55282').
person('45894').
person('28363').
person('44456').
person('35130').
person('26685').
person('55284').
person('63874').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('33205')).
query(buys('23757')).
query(buys('9282')).
query(buys('3948')).
query(buys('18594')).
query(buys('15883')).
query(buys('7328')).
query(buys('30080')).
query(buys('12004')).
query(buys('47483')).
query(buys('30085')).
query(buys('33197')).
query(buys('48380')).
query(buys('48379')).
query(buys('1875')).
query(buys('43291')).
query(buys('26682')).
query(buys('39123')).
query(buys('34446')).
query(buys('57174')).
query(buys('55282')).
query(buys('45894')).
query(buys('28363')).
query(buys('44456')).
query(buys('35130')).
query(buys('26685')).
query(buys('55284')).
query(buys('63874')).
