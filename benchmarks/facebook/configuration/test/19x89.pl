10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('46205','4627').
0.271::trusts('57121','4627').
0.271::trusts('20611','4627').
0.19::trusts('4627','46205').
0.19::trusts('11484','46205').
0.1::trusts('46203','46205').
0.3439::trusts('57121','46205').
0.19::trusts('28658','46205').
0.1::trusts('34229','46205').
0.1::trusts('40787','46205').
0.271::trusts('49338','46205').
0.1::trusts('47456','46205').
0.3439::trusts('4627','57121').
0.271::trusts('46205','57121').
0.19::trusts('4627','20611').
0.1::trusts('11484','20611').
0.1::trusts('38726','20611').
0.19::trusts('59335','20611').
0.1::trusts('22027','11484').
0.271::trusts('46205','11484').
0.1::trusts('20611','11484').
0.19::trusts('60019','11484').
0.1::trusts('11484','60019').
0.19::trusts('52683','60019').
0.1::trusts('25630','60019').
0.1::trusts('46205','46203').
0.271::trusts('60019','52683').
0.1::trusts('46205','34229').
0.19::trusts('46205','40787').
0.1::trusts('28658','40787').
0.3439::trusts('46205','49338').
0.1::trusts('28658','49338').
0.1::trusts('46205','47456').
0.19::trusts('28658','47456').
0.1::trusts('20611','38726').
0.1::trusts('20611','59335').
0.1::trusts('60019','25630').
0.1::trusts('46205','49341').
0.19::trusts('28658','49341').
0.1::trusts('47456','49341').
0.19::trusts('28658','58636').
0.1::trusts('49338','58636').

person('4627').
person('46205').
person('57121').
person('20611').
person('11484').
person('22027').
person('60019').
person('46203').
person('52683').
person('28658').
person('34229').
person('40787').
person('49338').
person('47456').
person('38726').
person('59335').
person('25630').
person('49341').
person('58636').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4627')).
query(buys('46205')).
query(buys('57121')).
query(buys('20611')).
query(buys('11484')).
query(buys('22027')).
query(buys('60019')).
query(buys('46203')).
query(buys('52683')).
query(buys('28658')).
query(buys('34229')).
query(buys('40787')).
query(buys('49338')).
query(buys('47456')).
query(buys('38726')).
query(buys('59335')).
query(buys('25630')).
query(buys('49341')).
query(buys('58636')).
