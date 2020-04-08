10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('22939','35286').
0.19::trusts('15733','35286').
0.19::trusts('35286','22939').
0.19::trusts('17170','22939').
0.19::trusts('35286','15733').
0.988027484817438::trusts('8483','15733').
0.19::trusts('20191','15733').
0.1::trusts('3279','15733').
0.271::trusts('8483','5768').
0.977471600455061::trusts('49951','5768').
0.1::trusts('46924','5768').
0.1::trusts('5768','8483').
0.40951::trusts('5382','8483').
0.19::trusts('17527','8483').
0.56953279::trusts('1799','8483').
0.1::trusts('12966','8483').
0.19::trusts('1797','8483').
0.1::trusts('19998','8483').
0.988027484817438::trusts('15733','8483').
0.1::trusts('20275','8483').
0.1::trusts('20191','8483').
0.19::trusts('49951','8483').
0.7458134171671::trusts('5768','49951').
0.1::trusts('8483','49951').
0.1::trusts('5768','46924').
0.3439::trusts('47329','46924').
0.19::trusts('50439','46924').
0.1::trusts('17527','5382').
0.3439::trusts('8483','5382').
0.271::trusts('8483','17527').
0.40951::trusts('1799','17527').
0.833228183003334::trusts('12966','17527').
0.849905364703001::trusts('19998','17527').
0.271::trusts('20275','17527').
0.6513215599::trusts('20174','17527').
0.1::trusts('18858','17527').
0.849905364703001::trusts('17527','12966').
0.1::trusts('8483','12966').
0.1::trusts('17419','12966').
0.6513215599::trusts('19998','12966').
0.271::trusts('17527','20275').
0.19::trusts('8483','20275').
0.794108867905351::trusts('8871','20275').
0.56953279::trusts('17527','20174').
0.1::trusts('18858','20174').
0.19::trusts('17527','18858').
0.1::trusts('20174','18858').
0.271::trusts('22939','17170').
0.1::trusts('5382','1797').
0.3439::trusts('8483','1797').
0.1::trusts('19998','1797').
0.3439::trusts('8483','20191').
0.612579511::trusts('15733','20191').
0.468559::trusts('17419','17536').
0.77123207545039::trusts('17536','17419').
0.1::trusts('12966','17419').
0.1::trusts('46924','47329').
0.1::trusts('15733','3279').
0.3439::trusts('20275','8871').
0.271::trusts('12966','18716').
0.1::trusts('46924','50439').
0.19::trusts('60508','50439').
0.1::trusts('49732','50439').
0.1::trusts('50439','60508').

person('35286').
person('22939').
person('15733').
person('5768').
person('8483').
person('49951').
person('46924').
person('5382').
person('17527').
person('1799').
person('12966').
person('19998').
person('20275').
person('20174').
person('18858').
person('17170').
person('1797').
person('20191').
person('17536').
person('17419').
person('47329').
person('3279').
person('8871').
person('18716').
person('50439').
person('60508').
person('49732').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('35286')).
query(buys('22939')).
query(buys('15733')).
query(buys('5768')).
query(buys('8483')).
query(buys('49951')).
query(buys('46924')).
query(buys('5382')).
query(buys('17527')).
query(buys('1799')).
query(buys('12966')).
query(buys('19998')).
query(buys('20275')).
query(buys('20174')).
query(buys('18858')).
query(buys('17170')).
query(buys('1797')).
query(buys('20191')).
query(buys('17536')).
query(buys('17419')).
query(buys('47329')).
query(buys('3279')).
query(buys('8871')).
query(buys('18716')).
query(buys('50439')).
query(buys('60508')).
query(buys('49732')).
