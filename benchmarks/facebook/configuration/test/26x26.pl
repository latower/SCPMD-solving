10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('4355','29766').
0.957608841724784::trusts('27859','29766').
0.1::trusts('27160','29766').
0.271::trusts('25996','29766').
0.19::trusts('44084','29766').
0.271::trusts('29766','4355').
0.1::trusts('544','4355').
0.271::trusts('32113','4355').
0.612579511::trusts('16021','4355').
0.40951::trusts('29110','4355').
0.1::trusts('5721','4355').
0.19::trusts('27859','4355').
0.1::trusts('32117','4355').
0.1::trusts('26260','4355').
0.1::trusts('32040','4355').
0.19::trusts('25160','4355').
0.1::trusts('19204','4355').
0.947665236697264::trusts('29766','27859').
0.271::trusts('4355','27859').
0.3439::trusts('29110','27859').
0.271::trusts('37791','27859').
0.19::trusts('29766','27160').
0.271::trusts('29766','25996').
0.271::trusts('29766','44084').
0.19::trusts('20169','44084').
0.1::trusts('60356','44084').
0.19::trusts('4355','544').
0.612579511::trusts('4355','32113').
0.77123207545039::trusts('4355','16021').
0.6513215599::trusts('4355','29110').
0.271::trusts('27859','29110').
0.19::trusts('4355','5721').
0.19::trusts('4355','32117').
0.19::trusts('4355','26260').
0.19::trusts('4355','32040').
0.1::trusts('29110','32040').
0.271::trusts('4355','25160').
0.19::trusts('4355','19204').
0.1::trusts('544','9439').
0.1::trusts('4355','9439').
0.271::trusts('27859','37791').
0.3439::trusts('44084','20169').
0.19::trusts('44084','60356').
0.19::trusts('4355','18969').
0.1::trusts('4355','7049').
0.1::trusts('29766','44083').
0.1::trusts('32113','32127').
0.1::trusts('32113','32126').
0.1::trusts('4355','32120').

person('29766').
person('4355').
person('27859').
person('27160').
person('25996').
person('44084').
person('544').
person('32113').
person('16021').
person('29110').
person('5721').
person('32117').
person('26260').
person('32040').
person('25160').
person('19204').
person('9439').
person('37791').
person('20169').
person('60356').
person('18969').
person('7049').
person('44083').
person('32127').
person('32126').
person('32120').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29766')).
query(buys('4355')).
query(buys('27859')).
query(buys('27160')).
query(buys('25996')).
query(buys('44084')).
query(buys('544')).
query(buys('32113')).
query(buys('16021')).
query(buys('29110')).
query(buys('5721')).
query(buys('32117')).
query(buys('26260')).
query(buys('32040')).
query(buys('25160')).
query(buys('19204')).
query(buys('9439')).
query(buys('37791')).
query(buys('20169')).
query(buys('60356')).
query(buys('18969')).
query(buys('7049')).
query(buys('44083')).
query(buys('32127')).
query(buys('32126')).
query(buys('32120')).
