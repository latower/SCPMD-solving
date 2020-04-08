10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('14454','11356').
0.1::trusts('17288','11356').
0.1::trusts('9629','11356').
0.1::trusts('11356','9629').
0.1::trusts('1614','9629').
0.40951::trusts('51249','9629').
0.1::trusts('9590','9629').
0.19::trusts('51249','1614').
0.1::trusts('9629','1614').
0.5217031::trusts('9629','51249').
0.19::trusts('35338','51249').
0.271::trusts('40780','51249').
0.1::trusts('51249','35338').
0.1::trusts('40780','35338').
0.1::trusts('51249','40780').
0.1::trusts('35338','40780').
0.19::trusts('50625','40780').
0.1::trusts('46790','40780').
0.19::trusts('9629','9590').
0.1::trusts('3971','9590').
0.1::trusts('40780','50625').
0.1::trusts('40780','46790').
0.1::trusts('30189','49624').
0.1::trusts('9629','49624').
0.1::trusts('9629','47417').
0.1::trusts('40780','49345').

person('11356').
person('14454').
person('17288').
person('9629').
person('1614').
person('51249').
person('35338').
person('40780').
person('9590').
person('3971').
person('50625').
person('46790').
person('49624').
person('30189').
person('47417').
person('49345').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11356')).
query(buys('14454')).
query(buys('17288')).
query(buys('9629')).
query(buys('1614')).
query(buys('51249')).
query(buys('35338')).
query(buys('40780')).
query(buys('9590')).
query(buys('3971')).
query(buys('50625')).
query(buys('46790')).
query(buys('49624')).
query(buys('30189')).
query(buys('47417')).
query(buys('49345')).
