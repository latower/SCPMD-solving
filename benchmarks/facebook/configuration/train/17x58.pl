10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('16651','5618').
0.19::trusts('16202','5618').
0.19::trusts('16650','5618').
0.1::trusts('16655','5618').
0.1::trusts('5618','16651').
0.271::trusts('16650','16651').
0.1::trusts('16655','16651').
0.1::trusts('21962','16651').
0.271::trusts('5618','16202').
0.271::trusts('16220','16202').
0.1::trusts('6588','16202').
0.1::trusts('16228','16202').
0.1::trusts('5618','16650').
0.40951::trusts('16651','16650').
0.56953279::trusts('15946','16650').
0.271::trusts('21962','16650').
0.19::trusts('16651','16655').
0.1::trusts('5618','21962').
0.271::trusts('16651','21962').
0.271::trusts('16650','21962').
0.271::trusts('33675','21962').
0.1::trusts('5618','16220').
0.1::trusts('8842','16220').
0.40951::trusts('16202','16220').
0.1::trusts('16202','6588').
0.19::trusts('13632','6588').
0.1::trusts('13632','21465').
0.1::trusts('21465','13632').
0.1::trusts('22695','13632').
0.271::trusts('6588','13632').
0.1::trusts('13632','22695').
0.56953279::trusts('16650','15946').
0.1::trusts('21962','33675').
0.1::trusts('16202','16225').
0.1::trusts('16650','21965').

person('5618').
person('16651').
person('16202').
person('16650').
person('16655').
person('21962').
person('16220').
person('6588').
person('16228').
person('21465').
person('13632').
person('8842').
person('22695').
person('15946').
person('33675').
person('16225').
person('21965').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5618')).
query(buys('16651')).
query(buys('16202')).
query(buys('16650')).
query(buys('16655')).
query(buys('21962')).
query(buys('16220')).
query(buys('6588')).
query(buys('16228')).
query(buys('21465')).
query(buys('13632')).
query(buys('8842')).
query(buys('22695')).
query(buys('15946')).
query(buys('33675')).
query(buys('16225')).
query(buys('21965')).
