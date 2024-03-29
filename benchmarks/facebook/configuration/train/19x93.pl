10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('51350','8478').
0.271::trusts('19272','8478').
0.19::trusts('51349','8478').
0.1::trusts('8478','51350').
0.40951::trusts('7385','51350').
0.7458134171671::trusts('19272','51350').
0.19::trusts('8478','19272').
0.271::trusts('7385','19272').
0.612579511::trusts('51350','19272').
0.68618940391::trusts('51349','19272').
0.717570463519::trusts('53530','19272').
0.19::trusts('54079','19272').
0.19::trusts('8478','51349').
0.19::trusts('7385','51349').
0.911370618803475::trusts('19272','51349').
0.19::trusts('46549','51349').
0.717570463519::trusts('51350','7385').
0.56953279::trusts('19272','7385').
0.1::trusts('9553','7385').
0.40951::trusts('51349','7385').
0.271::trusts('53530','7385').
0.1::trusts('7385','9553').
0.1::trusts('10629','9553').
0.271::trusts('7385','53530').
0.849905364703001::trusts('19272','53530').
0.19::trusts('25102','53530').
0.19::trusts('53529','53530').
0.1::trusts('19272','54079').
0.271::trusts('51349','46549').
0.3439::trusts('53530','25102').
0.19::trusts('22129','25102').
0.1::trusts('53529','25102').
0.271::trusts('53530','53529').
0.1::trusts('25102','53529').
0.1::trusts('19096','22129').
0.1::trusts('25102','22129').
0.1::trusts('45980','22129').
0.1::trusts('19272','44246').
0.1::trusts('19272','56015').
0.1::trusts('19272','51315').
0.1::trusts('19272','58189').

person('8478').
person('51350').
person('19272').
person('51349').
person('7385').
person('9553').
person('53530').
person('54079').
person('10629').
person('46549').
person('25102').
person('53529').
person('22129').
person('19096').
person('45980').
person('44246').
person('56015').
person('51315').
person('58189').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8478')).
query(buys('51350')).
query(buys('19272')).
query(buys('51349')).
query(buys('7385')).
query(buys('9553')).
query(buys('53530')).
query(buys('54079')).
query(buys('10629')).
query(buys('46549')).
query(buys('25102')).
query(buys('53529')).
query(buys('22129')).
query(buys('19096')).
query(buys('45980')).
query(buys('44246')).
query(buys('56015')).
query(buys('51315')).
query(buys('58189')).
