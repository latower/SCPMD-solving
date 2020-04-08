10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('31655','40361').
0.271::trusts('2203','40361').
0.19::trusts('2204','40361').
0.1::trusts('6466','40361').
0.1::trusts('51906','40361').
0.19::trusts('29764','40361').
0.19::trusts('40361','31655').
0.19::trusts('40361','2203').
0.1::trusts('46586','2203').
0.1::trusts('46587','2203').
0.19::trusts('2215','2203').
0.19::trusts('40361','2204').
0.19::trusts('59712','51906').
0.1::trusts('8393','51906').
0.1::trusts('62725','51906').
0.1::trusts('59422','51906').
0.1::trusts('40361','29764').
0.19::trusts('2203','46586').
0.1::trusts('2215','46586').
0.1::trusts('2203','46587').
0.1::trusts('2203','2215').
0.1::trusts('46586','2215').
0.19::trusts('51906','59712').
0.1::trusts('51906','8393').
0.271::trusts('51906','62725').
0.1::trusts('40361','59422').
0.19::trusts('51906','59422').
0.1::trusts('59712','59422').
0.1::trusts('31655','44623').
0.1::trusts('42462','44623').
0.1::trusts('55730','44623').
0.1::trusts('51906','59711').
0.1::trusts('59712','59711').

person('40361').
person('31655').
person('2203').
person('2204').
person('6466').
person('51906').
person('29764').
person('46586').
person('46587').
person('2215').
person('59712').
person('8393').
person('62725').
person('59422').
person('44623').
person('42462').
person('55730').
person('59711').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('40361')).
query(buys('31655')).
query(buys('2203')).
query(buys('2204')).
query(buys('6466')).
query(buys('51906')).
query(buys('29764')).
query(buys('46586')).
query(buys('46587')).
query(buys('2215')).
query(buys('59712')).
query(buys('8393')).
query(buys('62725')).
query(buys('59422')).
query(buys('44623')).
query(buys('42462')).
query(buys('55730')).
query(buys('59711')).
