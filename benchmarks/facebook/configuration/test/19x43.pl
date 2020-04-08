10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('4359','4342').
0.6513215599::trusts('1778','4342').
0.271::trusts('4348','4342').
0.1::trusts('4360','4342').
0.271::trusts('4342','4359').
0.1::trusts('4362','4359').
0.1::trusts('51165','4359').
0.794108867905351::trusts('4342','1778').
0.1::trusts('4348','1778').
0.19::trusts('4360','1778').
0.1::trusts('4362','1778').
0.1::trusts('39296','1778').
0.1::trusts('39291','1778').
0.1::trusts('39300','1778').
0.1::trusts('20599','4360').
0.1::trusts('4342','4360').
0.1::trusts('1778','4360').
0.1::trusts('4348','4360').
0.1::trusts('52482','4360').
0.19::trusts('4342','4362').
0.271::trusts('1778','4362').
0.40951::trusts('4348','4362').
0.1::trusts('8482','4362').
0.1::trusts('58080','4362').
0.1::trusts('1778','39291').
0.1::trusts('1778','39300').
0.1::trusts('29296','8482').
0.1::trusts('4362','58080').
0.1::trusts('29296','40702').
0.19::trusts('4342','4361').
0.271::trusts('4342','4364').
0.1::trusts('4342','4368').

person('4342').
person('4359').
person('1778').
person('4348').
person('4360').
person('4362').
person('51165').
person('39296').
person('39291').
person('39300').
person('20599').
person('52482').
person('8482').
person('58080').
person('29296').
person('40702').
person('4361').
person('4364').
person('4368').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4342')).
query(buys('4359')).
query(buys('1778')).
query(buys('4348')).
query(buys('4360')).
query(buys('4362')).
query(buys('51165')).
query(buys('39296')).
query(buys('39291')).
query(buys('39300')).
query(buys('20599')).
query(buys('52482')).
query(buys('8482')).
query(buys('58080')).
query(buys('29296')).
query(buys('40702')).
query(buys('4361')).
query(buys('4364')).
query(buys('4368')).
