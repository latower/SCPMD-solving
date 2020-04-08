10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('13699','19437').
0.19::trusts('11125','19437').
0.19::trusts('22630','19437').
0.271::trusts('19437','13699').
0.1::trusts('25717','13699').
0.1::trusts('19437','11125').
0.271::trusts('8557','11125').
0.271::trusts('465','11125').
0.468559::trusts('19437','22630').
0.271::trusts('11125','8557').
0.271::trusts('11125','465').
0.1::trusts('7793','465').
0.271::trusts('51400','465').
0.19::trusts('465','7793').
0.271::trusts('465','51400').
0.1::trusts('13699','25717').
0.1::trusts('11125','24452').
0.1::trusts('35389','24452').
0.19::trusts('24452','35389').
0.1::trusts('35398','35389').
0.1::trusts('35389','35398').
0.1::trusts('11125','36006').
0.271::trusts('57095','36006').
0.1::trusts('36006','57095').
0.1::trusts('465','17162').
0.19::trusts('11125','36005').
0.1::trusts('19437','22632').
0.1::trusts('19437','51842').

person('19437').
person('13699').
person('11125').
person('22630').
person('8557').
person('465').
person('7793').
person('51400').
person('25717').
person('24452').
person('35389').
person('35398').
person('36006').
person('57095').
person('17162').
person('36005').
person('22632').
person('51842').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19437')).
query(buys('13699')).
query(buys('11125')).
query(buys('22630')).
query(buys('8557')).
query(buys('465')).
query(buys('7793')).
query(buys('51400')).
query(buys('25717')).
query(buys('24452')).
query(buys('35389')).
query(buys('35398')).
query(buys('36006')).
query(buys('57095')).
query(buys('17162')).
query(buys('36005')).
query(buys('22632')).
query(buys('51842')).
