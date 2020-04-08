10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.999044995049203::trusts('9005','6297').
0.1::trusts('1721','6297').
0.19::trusts('7238','6297').
0.935389181107733::trusts('9007','6297').
0.3439::trusts('8045','6297').
0.1::trusts('21994','6297').
0.1::trusts('16470','6297').
0.1::trusts('24535','6297').
0.999985884183614::trusts('6297','9005').
0.833228183003334::trusts('1721','9005').
0.19::trusts('7238','9005').
0.983576796731739::trusts('9007','9005').
0.1::trusts('6297','7238').
0.1::trusts('9005','7238').
0.935389181107733::trusts('6297','9007').
0.981751996368599::trusts('9005','9007').
0.1::trusts('1721','9007').
0.3439::trusts('6297','8045').
0.19::trusts('8056','8045').
0.1::trusts('6297','21994').
0.1::trusts('6297','16470').
0.19::trusts('6297','24535').
0.1::trusts('14054','24535').
0.1::trusts('10969','24535').
0.271::trusts('8045','8056').
0.19::trusts('18300','8056').
0.1::trusts('8045','14054').
0.19::trusts('24535','14054').
0.1::trusts('24535','10969').
0.19::trusts('8056','18300').
0.19::trusts('1664','18300').
0.1::trusts('1664','6859').
0.1::trusts('6859','1664').
0.1::trusts('30537','1664').
0.1::trusts('18300','1664').
0.1::trusts('8056','38414').
0.1::trusts('8045','51354').
0.1::trusts('24535','51354').

person('6297').
person('9005').
person('1721').
person('7238').
person('9007').
person('8045').
person('21994').
person('16470').
person('24535').
person('8056').
person('14054').
person('10969').
person('18300').
person('6859').
person('1664').
person('30537').
person('38414').
person('51354').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6297')).
query(buys('9005')).
query(buys('1721')).
query(buys('7238')).
query(buys('9007')).
query(buys('8045')).
query(buys('21994')).
query(buys('16470')).
query(buys('24535')).
query(buys('8056')).
query(buys('14054')).
query(buys('10969')).
query(buys('18300')).
query(buys('6859')).
query(buys('1664')).
query(buys('30537')).
query(buys('38414')).
query(buys('51354')).
