10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('42308','24344').
0.3439::trusts('24344','42308').
0.5217031::trusts('45268','42308').
0.1::trusts('26732','42308').
0.612579511::trusts('45270','42308').
0.1::trusts('45263','42308').
0.19::trusts('9628','42308').
0.1::trusts('44503','42308').
0.1::trusts('25967','42308').
0.19::trusts('45272','42308').
0.3439::trusts('45266','42308').
0.1::trusts('59852','45268').
0.40951::trusts('42308','45268').
0.1::trusts('59853','45268').
0.19::trusts('45268','59853').
0.1::trusts('45272','34245').
0.1::trusts('45268','45272').
0.19::trusts('34245','45272').
0.271::trusts('42308','45272').
0.1::trusts('44503','45272').
0.19::trusts('42308','26732').
0.1::trusts('45270','26732').
0.19::trusts('45266','26732').
0.1::trusts('26732','45266').
0.271::trusts('42308','45266').
0.1::trusts('42308','45263').
0.19::trusts('42308','9628').
0.271::trusts('42308','44503').
0.271::trusts('48223','44503').
0.1::trusts('42308','25967').
0.3439::trusts('44503','48223').
0.1::trusts('45270','23977').
0.1::trusts('25967','42633').
0.1::trusts('25967','57648').
0.1::trusts('56567','57648').
0.1::trusts('44503','51735').

person('24344').
person('42308').
person('45268').
person('59852').
person('59853').
person('34245').
person('45272').
person('26732').
person('45270').
person('45266').
person('45263').
person('9628').
person('44503').
person('25967').
person('48223').
person('23977').
person('42633').
person('57648').
person('56567').
person('51735').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('24344')).
query(buys('42308')).
query(buys('45268')).
query(buys('59852')).
query(buys('59853')).
query(buys('34245')).
query(buys('45272')).
query(buys('26732')).
query(buys('45270')).
query(buys('45266')).
query(buys('45263')).
query(buys('9628')).
query(buys('44503')).
query(buys('25967')).
query(buys('48223')).
query(buys('23977')).
query(buys('42633')).
query(buys('57648')).
query(buys('56567')).
query(buys('51735')).
