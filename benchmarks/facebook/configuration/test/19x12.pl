10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('10961','17883').
0.833228183003334::trusts('8263','17883').
0.6513215599::trusts('6599','17883').
0.1::trusts('8259','10961').
0.68618940391::trusts('17883','8263').
0.1::trusts('9190','8263').
0.794108867905351::trusts('17883','6599').
0.1::trusts('6779','6599').
0.468559::trusts('10961','8259').
0.19::trusts('14141','8259').
0.40951::trusts('8263','9190').
0.1::trusts('17330','9190').
0.1::trusts('26693','9190').
0.19::trusts('6599','6779').
0.1::trusts('32884','6779').
0.1::trusts('8259','14141').
0.1::trusts('6779','32884').
0.612579511::trusts('4290','25476').
0.1::trusts('22361','25476').
0.1::trusts('14867','25476').
0.19::trusts('4290','22361').
0.1::trusts('25476','22361').
0.1::trusts('4290','14867').
0.1::trusts('9190','14867').
0.1::trusts('26693','14867').
0.1::trusts('9190','17330').
0.1::trusts('14867','26693').
0.1::trusts('8263','35047').
0.1::trusts('14141','20520').
0.271::trusts('26693','57277').
0.1::trusts('6599','6486').

person('17883').
person('10961').
person('8263').
person('6599').
person('8259').
person('9190').
person('6779').
person('14141').
person('32884').
person('25476').
person('4290').
person('22361').
person('14867').
person('17330').
person('26693').
person('35047').
person('20520').
person('57277').
person('6486').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17883')).
query(buys('10961')).
query(buys('8263')).
query(buys('6599')).
query(buys('8259')).
query(buys('9190')).
query(buys('6779')).
query(buys('14141')).
query(buys('32884')).
query(buys('25476')).
query(buys('4290')).
query(buys('22361')).
query(buys('14867')).
query(buys('17330')).
query(buys('26693')).
query(buys('35047')).
query(buys('20520')).
query(buys('57277')).
query(buys('6486')).
