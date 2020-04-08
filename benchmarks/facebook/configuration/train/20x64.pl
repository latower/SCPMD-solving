10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('6867','35554').
0.271::trusts('35554','6867').
0.1::trusts('44350','6867').
0.271::trusts('1872','22175').
0.1::trusts('21925','22175').
0.19::trusts('1887','22175').
0.1::trusts('60043','22175').
0.271::trusts('37833','1872').
0.19::trusts('22175','1872').
0.1::trusts('44350','1872').
0.1::trusts('38790','1872').
0.1::trusts('2627','1872').
0.271::trusts('59659','1872').
0.3439::trusts('56434','1872').
0.3439::trusts('22175','21925').
0.1::trusts('22175','1887').
0.3439::trusts('1872','1887').
0.1::trusts('38790','1887').
0.40951::trusts('59659','1887').
0.19::trusts('56434','1887').
0.19::trusts('22175','60043').
0.1::trusts('6867','44350').
0.1::trusts('1872','44350').
0.19::trusts('33529','44350').
0.271::trusts('44350','33529').
0.1::trusts('1872','38790').
0.1::trusts('1887','38790').
0.19::trusts('1872','2627').
0.3439::trusts('1872','59659').
0.1::trusts('1887','59659').
0.19::trusts('61122','59659').
0.3439::trusts('59659','61122').
0.19::trusts('35554','51426').
0.1::trusts('37833','1885').
0.1::trusts('61122','63412').
0.1::trusts('35554','51427').
0.1::trusts('1872','59658').

person('35554').
person('6867').
person('22175').
person('1872').
person('21925').
person('1887').
person('60043').
person('44350').
person('33529').
person('37833').
person('38790').
person('2627').
person('59659').
person('56434').
person('61122').
person('51426').
person('1885').
person('63412').
person('51427').
person('59658').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('35554')).
query(buys('6867')).
query(buys('22175')).
query(buys('1872')).
query(buys('21925')).
query(buys('1887')).
query(buys('60043')).
query(buys('44350')).
query(buys('33529')).
query(buys('37833')).
query(buys('38790')).
query(buys('2627')).
query(buys('59659')).
query(buys('56434')).
query(buys('61122')).
query(buys('51426')).
query(buys('1885')).
query(buys('63412')).
query(buys('51427')).
query(buys('59658')).
