10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12532','19193').
0.1::trusts('19193','12532').
0.271::trusts('34203','12532').
0.271::trusts('12532','34203').
0.19::trusts('28726','34203').
0.1::trusts('50091','34203').
0.1::trusts('43058','34203').
0.1::trusts('34203','28726').
0.1::trusts('45207','28726').
0.271::trusts('34203','50091').
0.468559::trusts('59410','50091').
0.1::trusts('34203','43058').
0.1::trusts('39866','43058').
0.19::trusts('28726','45207').
0.1::trusts('39866','45207').
0.1::trusts('38216','45207').
0.5217031::trusts('50091','59410').
0.1::trusts('61344','59410').
0.1::trusts('43058','39866').
0.56953279::trusts('34203','26051').
0.1::trusts('59410','61344').
0.1::trusts('43058','45206').
0.1::trusts('45207','45206').
0.1::trusts('26051','39534').
0.1::trusts('27383','39534').
0.1::trusts('56174','27383').
0.19::trusts('27383','56174').

person('19193').
person('12532').
person('34203').
person('28726').
person('50091').
person('43058').
person('45207').
person('59410').
person('39866').
person('26051').
person('38216').
person('61344').
person('45206').
person('39534').
person('27383').
person('56174').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19193')).
query(buys('12532')).
query(buys('34203')).
query(buys('28726')).
query(buys('50091')).
query(buys('43058')).
query(buys('45207')).
query(buys('59410')).
query(buys('39866')).
query(buys('26051')).
query(buys('38216')).
query(buys('61344')).
query(buys('45206')).
query(buys('39534')).
query(buys('27383')).
query(buys('56174')).
