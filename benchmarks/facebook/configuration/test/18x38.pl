10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('44312','28885').
0.1::trusts('7216','28885').
0.271::trusts('28879','28885').
0.1::trusts('28885','44312').
0.271::trusts('28885','28879').
0.19::trusts('40574','28879').
0.271::trusts('32356','20181').
0.271::trusts('26162','20181').
0.1::trusts('20181','26162').
0.3439::trusts('32544','26162').
0.3439::trusts('26162','32544').
0.19::trusts('40574','32544').
0.40951::trusts('34694','32544').
0.1::trusts('32544','40574').
0.19::trusts('27008','40574').
0.1::trusts('28879','40574').
0.1::trusts('21274','40574').
0.3439::trusts('32544','34694').
0.1::trusts('22198','34694').
0.1::trusts('45543','34694').
0.1::trusts('40574','27008').
0.19::trusts('30935','27008').
0.271::trusts('40574','21274').
0.1::trusts('28879','21274').
0.271::trusts('34694','22198').
0.19::trusts('34694','45543').
0.19::trusts('27008','30935').
0.19::trusts('32356','41861').
0.1::trusts('27008','37452').
0.1::trusts('20181','61701').

person('28885').
person('44312').
person('7216').
person('28879').
person('20181').
person('32356').
person('26162').
person('32544').
person('40574').
person('34694').
person('27008').
person('21274').
person('22198').
person('45543').
person('30935').
person('41861').
person('37452').
person('61701').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('28885')).
query(buys('44312')).
query(buys('7216')).
query(buys('28879')).
query(buys('20181')).
query(buys('32356')).
query(buys('26162')).
query(buys('32544')).
query(buys('40574')).
query(buys('34694')).
query(buys('27008')).
query(buys('21274')).
query(buys('22198')).
query(buys('45543')).
query(buys('30935')).
query(buys('41861')).
query(buys('37452')).
query(buys('61701')).
