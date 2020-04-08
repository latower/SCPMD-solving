10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('9506','17436').
0.271::trusts('17436','9506').
0.40951::trusts('7996','9506').
0.40951::trusts('9506','7996').
0.271::trusts('9480','7996').
0.40951::trusts('1215','7996').
0.3439::trusts('9487','7996').
0.1::trusts('9498','7996').
0.1::trusts('9485','7996').
0.3439::trusts('7996','9480').
0.1::trusts('9487','9480').
0.1::trusts('8969','9480').
0.468559::trusts('7996','1215').
0.1::trusts('9506','9487').
0.468559::trusts('7996','9487').
0.1::trusts('9502','9487').
0.1::trusts('9483','9487').
0.271::trusts('7996','9498').
0.1::trusts('9497','9498').
0.19::trusts('7996','9485').
0.1::trusts('45393','9485').
0.19::trusts('9480','8969').
0.1::trusts('19988','8969').
0.1::trusts('7996','9502').
0.19::trusts('9487','9502').
0.19::trusts('7996','9483').
0.1::trusts('9487','9483').
0.1::trusts('9485','45393').
0.1::trusts('15954','45393').
0.19::trusts('45393','15954').
0.19::trusts('10005','15954').
0.19::trusts('15954','10005').
0.19::trusts('9506','52641').
0.1::trusts('9506','47634').
0.1::trusts('7996','9493').

person('17436').
person('9506').
person('7996').
person('9480').
person('1215').
person('9487').
person('9498').
person('9485').
person('8969').
person('9502').
person('9483').
person('9497').
person('45393').
person('19988').
person('15954').
person('10005').
person('52641').
person('47634').
person('9493').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17436')).
query(buys('9506')).
query(buys('7996')).
query(buys('9480')).
query(buys('1215')).
query(buys('9487')).
query(buys('9498')).
query(buys('9485')).
query(buys('8969')).
query(buys('9502')).
query(buys('9483')).
query(buys('9497')).
query(buys('45393')).
query(buys('19988')).
query(buys('15954')).
query(buys('10005')).
query(buys('52641')).
query(buys('47634')).
query(buys('9493')).
