10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('23831','28417').
0.1::trusts('28417','23831').
0.19::trusts('19811','23831').
0.3439::trusts('46104','23831').
0.3439::trusts('57828','23831').
0.1::trusts('23831','19811').
0.468559::trusts('57828','19811').
0.3439::trusts('19811','57828').
0.271::trusts('23831','57828').
0.271::trusts('54618','57828').
0.1::trusts('47619','57828').
0.1::trusts('35961','35583').
0.1::trusts('31016','35583').
0.3439::trusts('46104','35961').
0.19::trusts('56933','35961').
0.1::trusts('35966','35961').
0.1::trusts('19811','31016').
0.1::trusts('35583','31016').
0.1::trusts('35961','31016').
0.19::trusts('35961','46104').
0.271::trusts('23831','46104').
0.1::trusts('35961','35966').
0.56953279::trusts('26472','35966').
0.19::trusts('36064','35966').
0.468559::trusts('57828','54618').
0.1::trusts('57828','47619').
0.19::trusts('35495','47619').
0.271::trusts('55319','45973').
0.1::trusts('45973','55319').
0.271::trusts('52738','55319').
0.271::trusts('53189','55319').
0.612579511::trusts('35966','26472').
0.3439::trusts('52738','26472').
0.3439::trusts('35966','36064').
0.1::trusts('47619','35495').
0.19::trusts('55319','52738').
0.271::trusts('26472','52738').
0.271::trusts('55319','53189').
0.1::trusts('47619','47617').
0.19::trusts('57828','63876').

person('28417').
person('23831').
person('19811').
person('57828').
person('35583').
person('35961').
person('31016').
person('46104').
person('56933').
person('35966').
person('54618').
person('47619').
person('45973').
person('55319').
person('26472').
person('36064').
person('35495').
person('52738').
person('53189').
person('47617').
person('63876').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('28417')).
query(buys('23831')).
query(buys('19811')).
query(buys('57828')).
query(buys('35583')).
query(buys('35961')).
query(buys('31016')).
query(buys('46104')).
query(buys('56933')).
query(buys('35966')).
query(buys('54618')).
query(buys('47619')).
query(buys('45973')).
query(buys('55319')).
query(buys('26472')).
query(buys('36064')).
query(buys('35495')).
query(buys('52738')).
query(buys('53189')).
query(buys('47617')).
query(buys('63876')).