10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('40326','45499').
0.1::trusts('30683','45499').
0.1::trusts('55563','45499').
0.1::trusts('58717','45499').
0.19::trusts('45499','30683').
0.1::trusts('55562','30683').
0.1::trusts('44776','30683').
0.1::trusts('45499','55563').
0.1::trusts('47555','55563').
0.1::trusts('45499','58717').
0.1::trusts('55563','58717').
0.271::trusts('40326','43148').
0.19::trusts('30683','55562').
0.1::trusts('55563','47555').
0.1::trusts('55565','47555').
0.19::trusts('47555','55565').
0.19::trusts('45499','43429').
0.271::trusts('40326','58354').
0.3439::trusts('40564','58354').
0.1::trusts('60738','58354').
0.271::trusts('58354','40564').
0.19::trusts('58354','60738').
0.19::trusts('45499','58220').
0.1::trusts('40326','58220').
0.1::trusts('45499','58223').

person('45499').
person('40326').
person('30683').
person('55563').
person('58717').
person('43148').
person('55562').
person('44776').
person('47555').
person('55565').
person('43429').
person('58354').
person('40564').
person('60738').
person('58220').
person('58223').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('45499')).
query(buys('40326')).
query(buys('30683')).
query(buys('55563')).
query(buys('58717')).
query(buys('43148')).
query(buys('55562')).
query(buys('44776')).
query(buys('47555')).
query(buys('55565')).
query(buys('43429')).
query(buys('58354')).
query(buys('40564')).
query(buys('60738')).
query(buys('58220')).
query(buys('58223')).
