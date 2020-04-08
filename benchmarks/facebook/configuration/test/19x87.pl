10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('10388','16387').
0.19::trusts('16387','10388').
0.833228183003334::trusts('16368','10388').
0.468559::trusts('16377','10388').
0.19::trusts('10763','10388').
0.1::trusts('6206','10388').
0.849905364703001::trusts('10388','16368').
0.19::trusts('11986','16368').
0.271::trusts('1895','16368').
0.19::trusts('16368','11986').
0.1::trusts('1895','11986').
0.794108867905351::trusts('16368','1895').
0.40951::trusts('11986','1895').
0.1::trusts('1889','1895').
0.40951::trusts('14735','1895').
0.3439::trusts('10388','16377').
0.1::trusts('6557','16377').
0.19::trusts('31460','16377').
0.1::trusts('15050','16377').
0.271::trusts('10388','10763').
0.3439::trusts('10388','6206').
0.1::trusts('10388','6557').
0.1::trusts('16377','6557').
0.19::trusts('16377','31460').
0.19::trusts('1895','1889').
0.1::trusts('31460','10054').
0.19::trusts('10388','16362').
0.1::trusts('10388','16358').
0.3439::trusts('16368','42863').
0.1::trusts('11986','42863').
0.1::trusts('16368','16374').
0.19::trusts('10388','16374').
0.1::trusts('16377','45189').

person('16387').
person('10388').
person('16368').
person('11986').
person('1895').
person('16377').
person('10763').
person('6206').
person('6557').
person('31460').
person('15050').
person('1889').
person('14735').
person('10054').
person('16362').
person('16358').
person('42863').
person('16374').
person('45189').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16387')).
query(buys('10388')).
query(buys('16368')).
query(buys('11986')).
query(buys('1895')).
query(buys('16377')).
query(buys('10763')).
query(buys('6206')).
query(buys('6557')).
query(buys('31460')).
query(buys('15050')).
query(buys('1889')).
query(buys('14735')).
query(buys('10054')).
query(buys('16362')).
query(buys('16358')).
query(buys('42863')).
query(buys('16374')).
query(buys('45189')).
