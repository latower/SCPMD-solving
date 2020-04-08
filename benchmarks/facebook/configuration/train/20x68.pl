10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.977471600455061::trusts('13816','8503').
0.271::trusts('21085','8503').
0.6513215599::trusts('5370','8503').
0.989224736335694::trusts('8503','13816').
0.271::trusts('5370','13816').
0.19::trusts('13357','13816').
0.271::trusts('8503','21085').
0.468559::trusts('8503','5370').
0.271::trusts('13816','5370').
0.271::trusts('10187','5370').
0.19::trusts('13816','13357').
0.1::trusts('5370','13357').
0.40951::trusts('10732','13357').
0.1::trusts('13360','13357').
0.1::trusts('10187','13357').
0.1::trusts('5358','13357').
0.1::trusts('10185','13357').
0.19::trusts('3784','13357').
0.40951::trusts('5370','10187').
0.1::trusts('13357','10187').
0.1::trusts('10732','13360').
0.1::trusts('13357','13360').
0.19::trusts('4554','13360').
0.271::trusts('13360','4554').
0.468559::trusts('13370','4554').
0.1::trusts('13357','5358').
0.1::trusts('10202','5358').
0.40951::trusts('8374','5358').
0.1::trusts('10185','5358').
0.1::trusts('16792','5358').
0.1::trusts('8374','10185').
0.1::trusts('5358','10185').
0.1::trusts('10199','10185').
0.1::trusts('5358','10202').
0.1::trusts('10185','10202').
0.1::trusts('5370','8374').
0.271::trusts('10187','8374').
0.1::trusts('10202','8374').
0.1::trusts('5358','8374').
0.3439::trusts('10199','8374').
0.271::trusts('8374','10199').
0.40951::trusts('8503','13633').
0.19::trusts('13357','13782').
0.1::trusts('21085','34952').

person('8503').
person('13816').
person('21085').
person('5370').
person('13357').
person('10187').
person('13360').
person('10732').
person('4554').
person('5358').
person('10185').
person('3784').
person('10202').
person('8374').
person('10199').
person('16792').
person('13370').
person('13633').
person('13782').
person('34952').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8503')).
query(buys('13816')).
query(buys('21085')).
query(buys('5370')).
query(buys('13357')).
query(buys('10187')).
query(buys('13360')).
query(buys('10732')).
query(buys('4554')).
query(buys('5358')).
query(buys('10185')).
query(buys('3784')).
query(buys('10202')).
query(buys('8374')).
query(buys('10199')).
query(buys('16792')).
query(buys('13370')).
query(buys('13633')).
query(buys('13782')).
query(buys('34952')).
