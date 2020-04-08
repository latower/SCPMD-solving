10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('8820','487').
0.1::trusts('499','487').
0.3439::trusts('14527','8820').
0.271::trusts('1723','8820').
0.1::trusts('487','499').
0.969096845617367::trusts('14527','499').
0.1::trusts('1723','499').
0.19::trusts('1711','499').
0.814697981114816::trusts('6059','499').
0.19::trusts('14527','1736').
0.1::trusts('1736','14527').
0.1::trusts('16315','14527').
0.271::trusts('8820','14527').
0.1::trusts('1723','14527').
0.952898713027537::trusts('499','14527').
0.1::trusts('490','14527').
0.1::trusts('9325','16315').
0.19::trusts('14527','16315').
0.1::trusts('8574','16315').
0.1::trusts('8562','8574').
0.19::trusts('14527','1723').
0.3439::trusts('8820','1723').
0.19::trusts('499','1723').
0.40951::trusts('2728','1723').
0.1::trusts('490','1723').
0.19::trusts('497','1723').
0.3439::trusts('1723','2728').
0.3439::trusts('1723','497').
0.814697981114816::trusts('490','497').
0.271::trusts('499','1711').
0.77123207545039::trusts('499','6059').
0.5217031::trusts('3397','6059').
0.19::trusts('16315','8562').
0.1::trusts('8574','8562').
0.77123207545039::trusts('6059','3397').
0.1::trusts('5017','3397').

person('487').
person('8820').
person('499').
person('1736').
person('14527').
person('16315').
person('9325').
person('8574').
person('1723').
person('490').
person('2728').
person('497').
person('1711').
person('6059').
person('8562').
person('3397').
person('5017').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('487')).
query(buys('8820')).
query(buys('499')).
query(buys('1736')).
query(buys('14527')).
query(buys('16315')).
query(buys('9325')).
query(buys('8574')).
query(buys('1723')).
query(buys('490')).
query(buys('2728')).
query(buys('497')).
query(buys('1711')).
query(buys('6059')).
query(buys('8562')).
query(buys('3397')).
query(buys('5017')).
