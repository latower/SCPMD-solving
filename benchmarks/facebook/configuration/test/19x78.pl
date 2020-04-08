10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('50727','18194').
0.612579511::trusts('42635','18194').
0.271::trusts('50729','18194').
0.1::trusts('18194','50727').
0.19::trusts('62168','50727').
0.56953279::trusts('18194','42635').
0.19::trusts('18194','50729').
0.19::trusts('50727','62168').
0.271::trusts('62169','62168').
0.1::trusts('18194','50715').
0.19::trusts('50715','57059').
0.1::trusts('50727','62169').
0.1::trusts('62168','62169').
0.1::trusts('42635','51615').
0.1::trusts('37453','51615').
0.1::trusts('42635','37453').
0.1::trusts('18194','50730').
0.1::trusts('18194','50709').
0.1::trusts('18194','46843').
0.19::trusts('42635','62632').
0.1::trusts('42635','60680').
0.1::trusts('42635','58425').
0.19::trusts('18194','45939').
0.1::trusts('18194','50720').
0.1::trusts('42635','24346').

person('18194').
person('50727').
person('42635').
person('50729').
person('62168').
person('50715').
person('57059').
person('62169').
person('51615').
person('37453').
person('50730').
person('50709').
person('46843').
person('62632').
person('60680').
person('58425').
person('45939').
person('50720').
person('24346').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18194')).
query(buys('50727')).
query(buys('42635')).
query(buys('50729')).
query(buys('62168')).
query(buys('50715')).
query(buys('57059')).
query(buys('62169')).
query(buys('51615')).
query(buys('37453')).
query(buys('50730')).
query(buys('50709')).
query(buys('46843')).
query(buys('62632')).
query(buys('60680')).
query(buys('58425')).
query(buys('45939')).
query(buys('50720')).
query(buys('24346')).
