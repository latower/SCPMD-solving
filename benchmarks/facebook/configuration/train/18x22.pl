10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('38501','38499').
0.5217031::trusts('46408','38499').
0.833228183003334::trusts('38499','38501').
0.1::trusts('38499','46408').
0.1::trusts('49936','46408').
0.717570463519::trusts('57725','30905').
0.612579511::trusts('57731','30905').
0.1::trusts('49936','30905').
0.468559::trusts('34227','30905').
0.1::trusts('57729','30905').
0.6513215599::trusts('30905','57731').
0.271::trusts('30905','49936').
0.19::trusts('46408','49936').
0.56953279::trusts('30905','34227').
0.19::trusts('34228','34227').
0.271::trusts('30905','57729').
0.1::trusts('34227','34228').
0.1::trusts('16771','34228').
0.19::trusts('35075','34228').
0.1::trusts('56353','34228').
0.1::trusts('34228','16771').
0.1::trusts('45845','16771').
0.19::trusts('34228','35075').
0.1::trusts('34228','56353').
0.1::trusts('16771','45845').
0.1::trusts('34228','56040').
0.1::trusts('30905','57728').
0.1::trusts('30905','30906').
0.19::trusts('30905','57730').

person('38499').
person('38501').
person('46408').
person('30905').
person('57725').
person('57731').
person('49936').
person('34227').
person('57729').
person('34228').
person('16771').
person('35075').
person('56353').
person('45845').
person('56040').
person('57728').
person('30906').
person('57730').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('38499')).
query(buys('38501')).
query(buys('46408')).
query(buys('30905')).
query(buys('57725')).
query(buys('57731')).
query(buys('49936')).
query(buys('34227')).
query(buys('57729')).
query(buys('34228')).
query(buys('16771')).
query(buys('35075')).
query(buys('56353')).
query(buys('45845')).
query(buys('56040')).
query(buys('57728')).
query(buys('30906')).
query(buys('57730')).
