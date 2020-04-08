10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('34705','9431').
0.1::trusts('34712','9431').
0.1::trusts('34709','9431').
0.1::trusts('34710','9431').
0.271::trusts('34708','9431').
0.612579511::trusts('9431','34705').
0.1::trusts('9431','34712').
0.1::trusts('34707','34712').
0.7458134171671::trusts('34709','34712').
0.19::trusts('45475','34712').
0.1::trusts('9431','34709').
0.612579511::trusts('34707','34709').
0.995825442082071::trusts('22872','34709').
0.1::trusts('34350','34709').
0.612579511::trusts('34712','34709').
0.40951::trusts('34708','34709').
0.997781468765538::trusts('45475','34709').
0.1::trusts('42768','34709').
0.1::trusts('9431','34710').
0.19::trusts('51593','34710').
0.19::trusts('9431','34708').
0.271::trusts('34707','34708').
0.56953279::trusts('34709','34708').
0.1::trusts('25625','34707').
0.271::trusts('34712','34707').
0.68618940391::trusts('34709','34707').
0.271::trusts('34708','34707').
0.1::trusts('34707','25625').
0.19::trusts('44297','25625').
0.1::trusts('20711','25625').
0.1::trusts('34707','44297').
0.1::trusts('25625','44297').
0.1::trusts('25625','20711').
0.1::trusts('34350','22872').
0.996242897873864::trusts('34709','22872').
0.68618940391::trusts('45475','22872').
0.612579511::trusts('34709','34350').
0.19::trusts('45475','34350').
0.1::trusts('42768','34350').
0.68618940391::trusts('34709','45475').
0.1::trusts('34350','42768').
0.40951::trusts('34709','42768').
0.1::trusts('45475','42768').
0.1::trusts('34710','51593').
0.1::trusts('34709','45474').
0.1::trusts('46585','60552').
0.1::trusts('44297','46585').

person('9431').
person('34705').
person('34712').
person('34709').
person('34710').
person('34708').
person('34707').
person('25625').
person('44297').
person('20711').
person('22872').
person('34350').
person('45475').
person('42768').
person('51593').
person('45474').
person('60552').
person('46585').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9431')).
query(buys('34705')).
query(buys('34712')).
query(buys('34709')).
query(buys('34710')).
query(buys('34708')).
query(buys('34707')).
query(buys('25625')).
query(buys('44297')).
query(buys('20711')).
query(buys('22872')).
query(buys('34350')).
query(buys('45475')).
query(buys('42768')).
query(buys('51593')).
query(buys('45474')).
query(buys('60552')).
query(buys('46585')).
